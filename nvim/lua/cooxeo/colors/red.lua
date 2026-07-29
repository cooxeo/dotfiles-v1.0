-- =========================================
--        CRIMSON NOIR NVIM THEME
-- =========================================

vim.opt.termguicolors = true

-- palette
local bg              = "#000001"
local bg_soft         = "#111112"
local bg_light        = "#1a0b10"

local fg              = "#d9d2d5"
local fg_soft         = "#b89ca3"

local crimson         = "#ff5c85"
local crimson_soft    = "#ff5c85"

local rose            = "#b34b72"
local rose_light      = "#dd6c98"

local muted_blue      = "#969bb0"
local muted_green     = "#a3b3aa"
local muted_red       = "#d6aaaa"

local border_dark     = "#2a1a1a"
local select_bg       = "#3b0a14"

-- =========================================
-- core ui
-- =========================================

vim.api.nvim_set_hl(0, "Normal", {
    fg = fg,
    bg = bg,
})

vim.api.nvim_set_hl(0, "NormalFloat", {
    fg = fg,
    bg = bg,
})

vim.api.nvim_set_hl(0, "FloatBorder", {
    fg = crimson,
    bg = bg,
})

vim.api.nvim_set_hl(0, "CursorLine", {
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "LineNr", {
    fg = rose,
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = crimson,
    bold = true,
})

vim.api.nvim_set_hl(0, "Cursor", {
    fg = bg,
    bg = crimson,
})

-- =========================================
-- syntax
-- =========================================

vim.api.nvim_set_hl(0, "Comment", {
    fg = "#5a4548",
    italic = true,
})

vim.api.nvim_set_hl(0, "Keyword", {
    fg = crimson,
    bold = true,
})

vim.api.nvim_set_hl(0, "String", {
    fg = rose_light,
})

vim.api.nvim_set_hl(0, "Function", {
    fg = crimson_soft,
})

vim.api.nvim_set_hl(0, "Identifier", {
    fg = fg,
})

vim.api.nvim_set_hl(0, "Type", {
    fg = muted_blue,
})

vim.api.nvim_set_hl(0, "Constant", {
    fg = muted_red,
})

vim.api.nvim_set_hl(0, "Number", {
    fg = crimson_soft,
})

vim.api.nvim_set_hl(0, "Boolean", {
    fg = crimson,
})

vim.api.nvim_set_hl(0, "Operator", {
    fg = rose,
})

-- =========================================
-- visuals
-- =========================================

vim.api.nvim_set_hl(0, "Visual", {
    bg = select_bg,
})

vim.api.nvim_set_hl(0, "Search", {
    fg = "#ffffff",
    bg = crimson,
})

vim.api.nvim_set_hl(0, "IncSearch", {
    fg = bg,
    bg = crimson_soft,
})

vim.api.nvim_set_hl(0, "MatchParen", {
    fg = crimson,
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
    bg = crimson,
    bold = true,
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
    bg = border_dark,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
    bg = crimson,
})

-- =========================================
-- diagnostics
-- =========================================

vim.api.nvim_set_hl(0, "DiagnosticError", {
    fg = "#ff4d6d",
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
    fg = "#ffb86c",
})

vim.api.nvim_set_hl(0, "DiagnosticInfo", {
    fg = muted_blue,
})

vim.api.nvim_set_hl(0, "DiagnosticHint", {
    fg = muted_green,
})

-- =========================================
-- nvimtree
-- =========================================

vim.api.nvim_set_hl(0, "NvimTreeNormal", {
    fg = fg,
    bg = bg,
})

vim.api.nvim_set_hl(0, "NvimTreeRootFolder", {
    fg = crimson,
    bold = true,
})

-- =========================================
-- transparent background
-- =========================================

vim.cmd([[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalFloat guibg=NONE ctermbg=NONE
]])
