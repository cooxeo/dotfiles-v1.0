-- =========================================
--        COMFORT NOIR NVIM THEME
--      Soft • Warm • No Eye Strain
-- =========================================

vim.opt.termguicolors = true

-- =========================================
-- palette
-- =========================================

local bg              = "#1e1f22"
local bg_soft         = "#25262b"
local bg_light        = "#2d2f34"

local fg              = "#d4be98"
local fg_soft         = "#b8a58a"

local accent          = "#89b4fa"
local accent_soft     = "#a6c8ff"

local rose            = "#d3869b"
local green           = "#a9b665"
local yellow          = "#d8a657"
local cyan            = "#89b482"

local muted_blue      = "#7daea3"
local muted_red       = "#ea6962"

local border          = "#3a3b40"
local select_bg       = "#3b4252"

-- =========================================
-- helper
-- =========================================

local hl              = vim.api.nvim_set_hl

-- =========================================
-- core ui
-- =========================================

hl(0, "Normal", {
    fg = fg,
    bg = "NONE",
})

hl(0, "NormalFloat", {
    fg = fg,
    bg = "NONE",
})

hl(0, "FloatBorder", {
    fg = accent,
    bg = "NONE",
})

hl(0, "CursorLine", {
    bg = bg_soft,
})

hl(0, "CursorColumn", {
    bg = bg_soft,
})

hl(0, "ColorColumn", {
    bg = bg_soft,
})

hl(0, "LineNr", {
    fg = "#5f6065",
})

hl(0, "CursorLineNr", {
    fg = accent,
    bold = true,
})

hl(0, "Cursor", {
    fg = bg,
    bg = accent,
})

hl(0, "VertSplit", {
    fg = border,
})

hl(0, "WinSeparator", {
    fg = border,
})

hl(0, "SignColumn", {
    bg = "NONE",
})

hl(0, "EndOfBuffer", {
    fg = bg,
})

-- =========================================
-- syntax
-- =========================================

hl(0, "Comment", {
    fg = "#6c7086",
    italic = true,
})

hl(0, "Keyword", {
    fg = accent,
    bold = true,
})

hl(0, "Statement", {
    fg = accent,
})

hl(0, "Conditional", {
    fg = rose,
})

hl(0, "Repeat", {
    fg = rose,
})

hl(0, "String", {
    fg = green,
})

hl(0, "Character", {
    fg = green,
})

hl(0, "Function", {
    fg = yellow,
})

hl(0, "Identifier", {
    fg = fg,
})

hl(0, "Type", {
    fg = cyan,
})

hl(0, "Constant", {
    fg = muted_red,
})

hl(0, "Number", {
    fg = rose,
})

hl(0, "Boolean", {
    fg = rose,
})

hl(0, "Operator", {
    fg = accent_soft,
})

hl(0, "Special", {
    fg = cyan,
})

hl(0, "PreProc", {
    fg = muted_blue,
})

-- =========================================
-- visuals
-- =========================================

hl(0, "Visual", {
    bg = select_bg,
})

hl(0, "Search", {
    fg = bg,
    bg = yellow,
})

hl(0, "IncSearch", {
    fg = bg,
    bg = accent,
    bold = true,
})

hl(0, "MatchParen", {
    fg = accent,
    bold = true,
})

-- =========================================
-- popup menu
-- =========================================

hl(0, "Pmenu", {
    fg = fg,
    bg = bg_soft,
})

hl(0, "PmenuSel", {
    fg = bg,
    bg = accent,
    bold = true,
})

hl(0, "PmenuSbar", {
    bg = border,
})

hl(0, "PmenuThumb", {
    bg = accent,
})

-- =========================================
-- statusline
-- =========================================

-- hl(0, "StatusLine", {
--     fg = fg,
--     bg = bg_soft,
-- })

hl(0, "StatusLineNC", {
    fg = "#6c7086",
    bg = bg,
})

hl(0, "TabLine", {
    fg = fg_soft,
    bg = bg_soft,
})

hl(0, "TabLineSel", {
    fg = accent,
    bg = bg_light,
    bold = true,
})

hl(0, "TabLineFill", {
    bg = bg,
})

-- =========================================
-- diagnostics
-- =========================================

hl(0, "DiagnosticError", {
    fg = muted_red,
})

hl(0, "DiagnosticWarn", {
    fg = yellow,
})

hl(0, "DiagnosticInfo", {
    fg = accent,
})

hl(0, "DiagnosticHint", {
    fg = cyan,
})

hl(0, "DiagnosticUnderlineError", {
    undercurl = true,
    sp = muted_red,
})

hl(0, "DiagnosticUnderlineWarn", {
    undercurl = true,
    sp = yellow,
})

hl(0, "DiagnosticUnderlineInfo", {
    undercurl = true,
    sp = accent,
})

hl(0, "DiagnosticUnderlineHint", {
    undercurl = true,
    sp = cyan,
})

-- =========================================
-- telescope
-- =========================================

hl(0, "TelescopeBorder", {
    fg = accent,
    bg = "NONE",
})

hl(0, "TelescopePromptBorder", {
    fg = cyan,
    bg = "NONE",
})

hl(0, "TelescopeSelection", {
    bg = bg_soft,
})

hl(0, "TelescopeMatching", {
    fg = yellow,
    bold = true,
})

-- =========================================
-- nvim-tree
-- =========================================

hl(0, "NvimTreeNormal", {
    fg = fg,
    bg = "NONE",
})

hl(0, "NvimTreeRootFolder", {
    fg = accent,
    bold = true,
})

hl(0, "NvimTreeFolderName", {
    fg = cyan,
})

hl(0, "NvimTreeOpenedFolderName", {
    fg = accent_soft,
    bold = true,
})

-- =========================================
-- git signs
-- =========================================

hl(0, "GitSignsAdd", {
    fg = green,
})

hl(0, "GitSignsChange", {
    fg = accent,
})

hl(0, "GitSignsDelete", {
    fg = muted_red,
})

-- =========================================
-- transparency
-- =========================================

vim.cmd([[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalFloat guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    hi EndOfBuffer guibg=NONE ctermbg=NONE
]])
