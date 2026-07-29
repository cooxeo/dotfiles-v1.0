vim.opt.termguicolors = true

-- ───── Lain Wallpaper Palette ─────

local bg              = "#000000"
local bg_soft         = "#12090d"
local bg_light        = "#24131a"

local fg              = "#f2d7d5"
local fg_soft         = "#c7aab0"

local peach           = "#f3c7c0"
local peach_soft      = "#ffd2c9"

local lavender        = "#c98aa5"
local lavender_soft   = "#ffc7d8"

local blue            = "#d69ab5"
local green           = "#cdb6ad"
local red_soft        = "#ff7fa8"

local border_dark     = "#2b151c"
local select_bg       = "#3b1f29"

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
    fg = "#6d4a57",
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
    fg = "#7e5a67",
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
    fg = "#ffb3c7",
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
    fg = "#7e5a67",
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
    fg = "#ff7fa8",
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
    fg = "#ffd2c9",
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
