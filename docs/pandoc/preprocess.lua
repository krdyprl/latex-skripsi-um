--[[------------------------------------------------------------------
preprocess.lua - Praproses sumber LaTeX untuk konversi DOCX (pandoc).

Tugas:
  1. Mengekspansi \input{...} secara rekursif menjadi satu berkas datar.
  2. Mengganti \csvautotabular[opsi]{berkas.csv} dengan lingkungan
     tabular LaTeX yang dihasilkan dari isi CSV, agar pandoc dapat
     membacanya sebagai tabel biasa.
  3. Menormalkan lingkungan matematika (align -> aligned, buang \notag).
  4. Menandai \clearpage/\newpage, \appendix, dan lokasi daftar rujukan
     dengan penanda teks yang diolah docs/pandoc/postprocess.lua.

Dijalankan lewat:  pandoc lua preprocess.lua <driver.tex> <keluaran.tex>
Direktori kerja HARUS direktori src/ agar \input dan path CSV relatif
benar (sama seperti excerpt.ps1).

Catatan: parser CSV di sini menangani pemisah koma, tanda kutip ganda,
dan koma di dalam tanda kutip pada satu baris. Bidang yang membentang
beberapa baris belum didukung.
--------------------------------------------------------------------]]

local driver = arg[1]
local output = arg[2]

if not driver or not output then
  io.stderr:write("Pemakaian: pandoc lua preprocess.lua <driver.tex> <keluaran.tex>\n")
  os.exit(1)
end

local function read_file(path)
  local f, err = io.open(path, "rb")
  if not f then
    error("Tidak bisa membuka berkas: " .. path .. " (" .. tostring(err) .. ")")
  end
  local content = f:read("*a")
  f:close()
  return content
end

local function write_file(path, content)
  local f, err = io.open(path, "wb")
  if not f then
    error("Tidak bisa menulis berkas: " .. path .. " (" .. tostring(err) .. ")")
  end
  f:write(content)
  f:close()
end

local function dirname(path)
  local d = path:match("^(.*)[/\\][^/\\]*$")
  if d == nil or d == "" then return "." end
  return d
end

-- Escape karakter khusus LaTeX pada satu nilai sel.
local PLACEHOLDER = "\1"
local function latex_escape(s)
  s = s:gsub("\\", PLACEHOLDER)
  s = s:gsub("&", "\\&")
  s = s:gsub("%%", "\\%%")
  s = s:gsub("%$", "\\$")
  s = s:gsub("#", "\\#")
  s = s:gsub("_", "\\_")
  s = s:gsub("{", "\\{")
  s = s:gsub("}", "\\}")
  s = s:gsub("~", "\\textasciitilde{}")
  s = s:gsub("%^", "\\textasciicircum{}")
  s = s:gsub(PLACEHOLDER, "\\textbackslash{}")
  return s
end

-- Pecah satu baris CSV menjadi daftar bidang (dukung tanda kutip ganda).
local function split_csv_line(line)
  local fields = {}
  local cur = {}
  local in_quotes = false
  local i = 1
  local n = #line
  while i <= n do
    local c = line:sub(i, i)
    if in_quotes then
      if c == '"' then
        if line:sub(i + 1, i + 1) == '"' then
          cur[#cur + 1] = '"'
          i = i + 1
        else
          in_quotes = false
        end
      else
        cur[#cur + 1] = c
      end
    else
      if c == '"' then
        in_quotes = true
      elseif c == "," then
        fields[#fields + 1] = table.concat(cur)
        cur = {}
      else
        cur[#cur + 1] = c
      end
    end
    i = i + 1
  end
  fields[#fields + 1] = table.concat(cur)
  return fields
end

-- Bangun lingkungan tabular LaTeX dari sebuah berkas CSV.
local function csv_to_tabular(path)
  local text = read_file(path)
  text = text:gsub("\r\n", "\n"):gsub("\r", "\n")

  local rows = {}
  for line in text:gmatch("[^\n]*") do
    if line:gsub("%s", "") ~= "" then
      rows[#rows + 1] = split_csv_line(line)
    end
  end

  if #rows == 0 then
    return "% CSV kosong: " .. path
  end

  local ncol = 0
  for _, row in ipairs(rows) do
    if #row > ncol then ncol = #row end
  end

  local spec = "|" .. string.rep("l|", ncol)
  local out = { "\\begin{tabular}{" .. spec .. "}", "\\hline" }
  for _, row in ipairs(rows) do
    local cells = {}
    for c = 1, ncol do
      cells[c] = latex_escape(row[c] or "")
    end
    out[#out + 1] = table.concat(cells, " & ") .. " \\\\"
    out[#out + 1] = "\\hline"
  end
  out[#out + 1] = "\\end{tabular}"
  return table.concat(out, "\n")
end

-- Normalisasi lingkungan math agar dapat dikonversi ke OMML oleh pandoc.
-- texmath tidak menangani \notag/\nonumber dan lebih baik dengan "aligned".
local function normalize_math(content)
  content = content:gsub("\\begin{align%*?}", "\\[\\begin{aligned}")
  content = content:gsub("\\end{align%*?}", "\\end{aligned}\\]")
  content = content:gsub("\\notag", "")
  content = content:gsub("\\nonumber", "")
  return content
end

-- Pandoc keliru memasangkan \begingroup dengan kurung kelompok di sekitarnya
-- (mis. longtable yang dibungkus "{ ... }"), sehingga muncul galat "unexpected }".
-- Buang penanda kelompok eksplisit ini; efeknya tidak diperlukan di DOCX.
local function normalize_groups(content)
  content = content:gsub("\\begingroup", "")
  content = content:gsub("\\endgroup", "")
  return content
end

-- Tandai struktur dokumen dengan penanda teks yang dibaca
-- postprocess.lua:
--   \clearpage/\newpage -> @@PAGEBREAK@@
--   \appendix           -> @@REFS@@ @@APPENDIX@@
--     (daftar rujukan diletakkan tepat sebelum lampiran)
local function normalize_markers(content)
  content = content:gsub("\\clearpage", "\n\n@@PAGEBREAK@@\n\n")
  content = content:gsub("\\newpage", "\n\n@@PAGEBREAK@@\n\n")
  content = content:gsub("\\appendix", "\n\n@@REFS@@\n\n@@APPENDIX@@\n\n")

  -- Gabungkan penanda halaman yang berurutan dan buang spasi berlebih.
  content = content:gsub("(@@PAGEBREAK@@%s*)+", "@@PAGEBREAK@@\n\n")
  return content
end

local function expand(content, base, depth)
  depth = depth or 0
  if depth > 30 then
    error("\\input terlalu dalam; kemungkinan rekursi tak berujung.")
  end

  content = content:gsub("\\input%s*{([^}]*)}", function(p)
    local f = p
    if not f:match("%.tex$") then f = f .. ".tex" end
    local full = base .. "/" .. f
    return expand(read_file(full), dirname(full), depth + 1)
  end)

  -- \csvautotabular[opsi]{berkas}
  content = content:gsub("\\csvautotabular%s*%b[]%s*{([^}]*)}", function(p)
    return csv_to_tabular(p)
  end)
  -- \csvautotabular{berkas}
  content = content:gsub("\\csvautotabular%s*{([^}]*)}", function(p)
    return csv_to_tabular(p)
  end)

  return content
end

local source = read_file(driver)
local expanded = expand(source, ".", 0)
expanded = normalize_math(expanded)
expanded = normalize_groups(expanded)
expanded = normalize_markers(expanded)
write_file(output, expanded)
