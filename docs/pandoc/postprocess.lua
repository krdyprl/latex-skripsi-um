--[[------------------------------------------------------------------
postprocess.lua - Filter pandoc untuk merapikan DOCX skripsi.

Dijalankan SETELAH reader LaTeX dan SEBELUM writer DOCX, lewat:
  pandoc ... --lua-filter=docs/pandoc/postprocess.lua

Tugas:
  - Mengubah penanda @@PAGEBREAK@@ menjadi page break DOCX.
  - Menyisipkan page break sebelum tiap Heading tingkat 1 (bab,
    halaman awal, daftar rujukan, lampiran).
  - Memberi nomor bab/subbab manual: "BAB I", "1.1", "1.1.1", dst.
    (menggantikan opsi --number-sections).
  - Mengubah @@APPENDIX@@ menjadi mode lampiran ("Lampiran N").
  - Mengubah @@REFS@@ menjadi Div id="refs" tempat citeproc menaruh
    Daftar Rujukan (tepat sebelum lampiran).

Penanda berasal dari docs/pandoc/preprocess.lua.
--------------------------------------------------------------------]]

local pagebreak = pandoc.RawBlock(
  "openxml",
  '<w:p><w:r><w:br w:type="page"/></w:r></w:p>'
)

local ROMANS = {
  "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X",
  "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX",
}

local function to_roman(n)
  return ROMANS[n] or tostring(n)
end

local function has_class(el, name)
  for _, c in ipairs(el.classes or {}) do
    if c == name then return true end
  end
  return false
end

-- Judul yang tidak diberi nomor walau levelnya 1.
local UNNUMBERED_TITLES = {
  ["DAFTAR RUJUKAN"] = true,
  ["RINGKASAN"] = true,
  ["SUMMARY"] = true,
  ["KATA PENGANTAR"] = true,
  ["RIWAYAT HIDUP"] = true,
  ["REFERENCES"] = true,
}

local state = {
  chapter = 0,
  section = 0,
  subsection = 0,
  subsubsection = 0,
  appendix = false,
}

local function is_marker(el, marker)
  if el.t ~= "Str" then return false end
  return el.text == marker
end

local function para_marker(block)
  if block.t ~= "Para" and block.t ~= "Plain" then return nil end
  if #block.content == 1 and is_marker(block.content[1], "@@PAGEBREAK@@") then
    return "pagebreak"
  end
  if #block.content == 1 and is_marker(block.content[1], "@@REFS@@") then
    return "refs"
  end
  if #block.content == 1 and is_marker(block.content[1], "@@APPENDIX@@") then
    return "appendix"
  end
  return nil
end

-- Penanda nomor bab untuk ekspor sebagian (excerpt):
-- @@CHAPSTART:n@@ memaksa bab berikutnya bernomor n.
local function chapstart_num(block)
  if block.t ~= "Para" and block.t ~= "Plain" then return nil end
  if #block.content == 1 and block.content[1].t == "Str" then
    local n = block.content[1].text:match("^@@CHAPSTART:(%d+)@@$")
    if n then return tonumber(n) end
  end
  return nil
end

local function prefix_content(el, prefix)
  local new = pandoc.Inlines({ pandoc.Str(prefix), pandoc.Space() })
  new:extend(el.content)
  el.content = new
end

function Header(el)
  local blocks = { pagebreak }
  local title = pandoc.utils.stringify(el.content)

  if el.level == 1 then
    local skip = has_class(el, "unnumbered") or UNNUMBERED_TITLES[string.upper(title)]
    if skip then
      blocks[#blocks + 1] = el
      return blocks
    end

    state.chapter = state.chapter + 1
    state.section = 0
    state.subsection = 0
    state.subsubsection = 0

    local label
    if state.appendix then
      label = "Lampiran " .. tostring(state.chapter)
    else
      label = "BAB " .. to_roman(state.chapter)
    end
    el.content = pandoc.Inlines({
      pandoc.Str(label),
      pandoc.LineBreak(),
      pandoc.Str(string.upper(title)),
    })
    blocks[#blocks + 1] = el
    return blocks
  elseif el.level == 2 then
    state.section = state.section + 1
    state.subsection = 0
    state.subsubsection = 0
    prefix_content(el, string.format("%d.%d", state.chapter, state.section))
    return el
  elseif el.level == 3 then
    state.subsection = state.subsection + 1
    state.subsubsection = 0
    prefix_content(el, string.format("%d.%d.%d", state.chapter, state.section, state.subsection))
    return el
  elseif el.level == 4 then
    state.subsubsection = state.subsubsection + 1
    prefix_content(el, string.format("%d.%d.%d.%d",
      state.chapter, state.section, state.subsection, state.subsubsection))
    return el
  end
  return el
end

function Para(el)
  local cn = chapstart_num(el)
  if cn then
    state.chapter = cn - 1
    state.section = 0
    state.subsection = 0
    state.subsubsection = 0
    return {}
  end
  local kind = para_marker(el)
  if kind == "pagebreak" then return { pagebreak } end
  if kind == "refs" then
    -- citeproc hanya mengisi Div id="refs"; judul bagian ditambahkan di sini.
    return {
      pagebreak,
      pandoc.Header(1, { pandoc.Str("DAFTAR RUJUKAN") },
        pandoc.Attr("", { "unnumbered" })),
      pandoc.Div({}, pandoc.Attr("refs")),
    }
  end
  if kind == "appendix" then
    state.appendix = true
    state.chapter = 0
    state.section = 0
    state.subsection = 0
    state.subsubsection = 0
    return {}
  end
  return nil
end

function Plain(el)
  return Para(el)
end
