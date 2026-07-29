vim.opt.termguicolors = true

-- ─────────────────────────────────────────
-- Bright Dark Palette
-- vivid colors on deep black background
-- ─────────────────────────────────────────

local bg              = "#000000"
local bg_soft         = "#0d1117"
local bg_light        = "#161b22"

local fg              = "#d6deeb"
local fg_soft         = "#9aa5b1"

local red             = "#ff757f"
local green           = "#7ee787"
local yellow          = "#ffd866"

local blue            = "#6cb6ff"
local cyan            = "#79e6f3"

local purple          = "#d2a8ff"
local purple_soft     = "#b392f0"

local border_dark     = "#30363d"
local select_bg       = "#223249"

-- =========================================
-- core ui
-- =========================================

vim.api.nvim_set_hl(0, "Normal", {
    fg = fg,
    bg = bg,
})

vim.api.nvim_set_hl(0, "NormalFloat", {
    fg = fg,
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "FloatBorder", {
    fg = purple,
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "CursorLine", {
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "LineNr", {
    fg = "#4b5263",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = yellow,
    bold = true,
})

vim.api.nvim_set_hl(0, "Cursor", {
    fg = bg,
    bg = yellow,
})

-- =========================================
-- syntax
-- =========================================

vim.api.nvim_set_hl(0, "Comment", {
    fg = "#6b7280",
    italic = true,
})

vim.api.nvim_set_hl(0, "Keyword", {
    fg = purple,
    bold = true,
})

vim.api.nvim_set_hl(0, "String", {
    fg = green,
})

vim.api.nvim_set_hl(0, "Function", {
    fg = blue,
})

vim.api.nvim_set_hl(0, "Identifier", {
    fg = fg,
})

vim.api.nvim_set_hl(0, "Type", {
    fg = cyan,
})

vim.api.nvim_set_hl(0, "Constant", {
    fg = red,
})

vim.api.nvim_set_hl(0, "Number", {
    fg = yellow,
})

vim.api.nvim_set_hl(0, "Boolean", {
    fg = purple_soft,
})

vim.api.nvim_set_hl(0, "Operator", {
    fg = fg_soft,
})

-- =========================================
-- visuals
-- =========================================

vim.api.nvim_set_hl(0, "Visual", {
    bg = select_bg,
})

vim.api.nvim_set_hl(0, "Search", {
    fg = bg,
    bg = yellow,
})

vim.api.nvim_set_hl(0, "IncSearch", {
    fg = bg,
    bg = purple,
})

vim.api.nvim_set_hl(0, "MatchParen", {
    fg = yellow,
    bold = true,
})

-- =========================================
-- statusline
-- =========================================

vim.api.nvim_set_hl(0, "StatusLine", {
    fg = fg,
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
    fg = "#6b7280",
    bg = bg,
})

-- =========================================
-- splits & borders
-- =========================================

vim.api.nvim_set_hl(0, "VertSplit", {
    fg = border_dark,
})

vim.api.nvim_set_hl(0, "WinSeparator", {
    fg = border_dark,
})

-- =========================================
-- popup menu
-- =========================================

vim.api.nvim_set_hl(0, "Pmenu", {
    fg = fg,
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "PmenuSel", {
    fg = bg,
    bg = purple,
    bold = true,
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
    bg = border_dark,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
    bg = yellow,
})

-- =========================================
-- diagnostics
-- =========================================

vim.api.nvim_set_hl(0, "DiagnosticError", {
    fg = red,
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
    fg = yellow,
})

vim.api.nvim_set_hl(0, "DiagnosticInfo", {
    fg = blue,
})

vim.api.nvim_set_hl(0, "DiagnosticHint", {
    fg = green,
})

-- =========================================
-- nvimtree
-- =========================================

vim.api.nvim_set_hl(0, "NvimTreeNormal", {
    fg = fg,
    bg = bg,
})

vim.api.nvim_set_hl(0, "NvimTreeRootFolder", {
    fg = purple,
    bold = true,
})

-- =========================================
-- transparent background
-- =========================================

vim.cmd([[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalFloat guibg=NONE ctermbg=NONE
]])
