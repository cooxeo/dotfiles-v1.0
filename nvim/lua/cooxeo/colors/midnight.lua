vim.opt.termguicolors = true

-- ───── Cozy Midnight Palette ─────

local bg              = "#0f1117"
local bg_soft         = "#181b24"
local bg_light        = "#232634"

local fg              = "#d8dee9"
local fg_soft         = "#b4bcc8"

local peach           = "#f5a97f"
local peach_soft      = "#f8bd96"

local lavender        = "#c6a0f6"
local lavender_soft   = "#d8b4fe"

local blue            = "#8aadf4"
local green           = "#a6da95"
local red_soft        = "#ed8796"

local border_dark     = "#2a2f3a"
local select_bg       = "#313244"

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
    fg = lavender,
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "CursorLine", {
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "LineNr", {
    fg = "#5b6078",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = peach,
    bold = true,
})

vim.api.nvim_set_hl(0, "Cursor", {
    fg = bg,
    bg = peach,
})

-- =========================================
-- syntax
-- =========================================

vim.api.nvim_set_hl(0, "Comment", {
    fg = "#6c7086",
    italic = true,
})

vim.api.nvim_set_hl(0, "Keyword", {
    fg = lavender,
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
    fg = peach_soft,
})

vim.api.nvim_set_hl(0, "Constant", {
    fg = red_soft,
})

vim.api.nvim_set_hl(0, "Number", {
    fg = peach,
})

vim.api.nvim_set_hl(0, "Boolean", {
    fg = lavender_soft,
})

vim.api.nvim_set_hl(0, "Operator", {
    fg = "#89dceb",
})

-- =========================================
-- visuals
-- =========================================

vim.api.nvim_set_hl(0, "Visual", {
    bg = select_bg,
})

vim.api.nvim_set_hl(0, "Search", {
    fg = bg,
    bg = peach,
})

vim.api.nvim_set_hl(0, "IncSearch", {
    fg = bg,
    bg = lavender,
})

vim.api.nvim_set_hl(0, "MatchParen", {
    fg = peach,
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
    fg = "#6c7086",
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
    bg = lavender,
    bold = true,
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
    bg = border_dark,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
    bg = peach,
})

-- =========================================
-- diagnostics
-- =========================================

vim.api.nvim_set_hl(0, "DiagnosticError", {
    fg = "#f38ba8",
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
    fg = "#f9e2af",
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
    fg = lavender,
    bold = true,
})

-- =========================================
-- transparent background
-- =========================================

vim.cmd([[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalFloat guibg=NONE ctermbg=NONE
]])
