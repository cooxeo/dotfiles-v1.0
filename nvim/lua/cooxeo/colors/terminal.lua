vim.opt.termguicolors = false

-- ─────────────────────────────
-- Bright Terminal Palette
-- ─────────────────────────────

local bg              = 0 -- black
local fg              = 231 -- bright white

-- bright vivid palette (pushed intensity)
local red             = 196
local green           = 46
local yellow          = 226
local blue            = 33
local cyan            = 51
local purple          = 201
local orange          = 214

local soft            = 250
local dim             = 244

local border          = 240
local select          = 237

-- =========================================
-- CORE UI
-- =========================================

vim.api.nvim_set_hl(0, "Normal", {
    ctermfg = fg,
    ctermbg = bg,
})

vim.api.nvim_set_hl(0, "NormalFloat", {
    ctermfg = fg,
    ctermbg = 0,
})

vim.api.nvim_set_hl(0, "CursorLine", {
    ctermbg = 235,
})

vim.api.nvim_set_hl(0, "LineNr", {
    ctermfg = dim,
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    ctermfg = yellow,
    bold = true,
})

vim.api.nvim_set_hl(0, "Cursor", {
    ctermfg = bg,
    ctermbg = yellow,
})

-- =========================================
-- SYNTAX (BRIGHT)
-- =========================================

vim.api.nvim_set_hl(0, "Comment", {
    ctermfg = dim,
})

vim.api.nvim_set_hl(0, "Keyword", {
    ctermfg = purple,
    bold = true,
})

vim.api.nvim_set_hl(0, "String", {
    ctermfg = green,
})

vim.api.nvim_set_hl(0, "Function", {
    ctermfg = blue,
})

vim.api.nvim_set_hl(0, "Type", {
    ctermfg = cyan,
})

vim.api.nvim_set_hl(0, "Constant", {
    ctermfg = red,
})

vim.api.nvim_set_hl(0, "Number", {
    ctermfg = yellow,
})

vim.api.nvim_set_hl(0, "Boolean", {
    ctermfg = orange,
})

vim.api.nvim_set_hl(0, "Operator", {
    ctermfg = soft,
})

-- =========================================
-- VISUAL
-- =========================================

vim.api.nvim_set_hl(0, "Visual", {
    ctermbg = select,
})

vim.api.nvim_set_hl(0, "Search", {
    ctermfg = bg,
    ctermbg = yellow,
})

vim.api.nvim_set_hl(0, "IncSearch", {
    ctermfg = bg,
    ctermbg = purple,
})

vim.api.nvim_set_hl(0, "MatchParen", {
    ctermfg = cyan,
    bold = true,
})

-- =========================================
-- UI ELEMENTS
-- =========================================

vim.api.nvim_set_hl(0, "StatusLine", {
    ctermfg = fg,
    ctermbg = 235,
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
    ctermfg = dim,
    ctermbg = bg,
})

vim.api.nvim_set_hl(0, "VertSplit", {
    ctermfg = border,
})

vim.api.nvim_set_hl(0, "WinSeparator", {
    ctermfg = border,
})

-- =========================================
-- POPUP MENU
-- =========================================

vim.api.nvim_set_hl(0, "Pmenu", {
    ctermfg = fg,
    ctermbg = 235,
})

vim.api.nvim_set_hl(0, "PmenuSel", {
    ctermfg = bg,
    ctermbg = cyan,
    bold = true,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
    ctermbg = yellow,
})

-- =========================================
-- DIAGNOSTICS (BRIGHT)
-- =========================================

vim.api.nvim_set_hl(0, "DiagnosticError", { ctermfg = red })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { ctermfg = yellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { ctermfg = cyan })
vim.api.nvim_set_hl(0, "DiagnosticHint", { ctermfg = green })

-- =========================================
-- TRANSPARENT BACKGROUND OPTION
-- =========================================

vim.cmd([[
  hi Normal ctermbg=NONE
  hi NormalFloat ctermbg=NONE
]])
