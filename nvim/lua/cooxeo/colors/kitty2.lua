vim.opt.termguicolors = true

-- ─────────────────────────────────────────
-- True Terminal Colors
-- Actual vivid ANSI-style colors
-- ─────────────────────────────────────────

local bg              = "#000000"
local bg_soft         = "#0f0f0f"
local bg_light        = "#1a1a1a"

local fg              = "#e6e6e6"
local fg_soft         = "#b0b0b0"

-- REAL terminal colors
local red             = "#ff5555"
local green           = "#50fa7b"
local yellow          = "#f1fa8c"

local blue            = "#61afef"
local cyan            = "#8be9fd"

local purple          = "#bd93f9"
local purple_soft     = "#d6acff"

local orange          = "#ffb86c"

local border_dark     = "#303030"
local select_bg       = "#2b3440"

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
    fg = "#555555",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = yellow,
    bold = true,
})

vim.api.nvim_set_hl(0, "Cursor", {
    fg = bg,
    bg = green,
})

-- =========================================
-- syntax
-- =========================================

vim.api.nvim_set_hl(0, "Comment", {
    fg = "#6a6a6a",
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
    fg = orange,
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
    fg = orange,
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
    fg = "#666666",
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
    bg = blue,
    bold = true,
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
    bg = border_dark,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
    bg = green,
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
