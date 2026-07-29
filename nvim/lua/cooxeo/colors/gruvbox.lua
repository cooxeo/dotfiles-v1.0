vim.opt.termguicolors = true

-- ───── Cozy Orangish Palette ─────

local bg              = "#14110f"
local bg_soft         = "#1f1a17"
local bg_light        = "#2b221d"

local fg              = "#f2e6d8"
local fg_soft         = "#d7c2ae"

local orange          = "#e0a96d"
local orange_soft     = "#f2bb7b"

local amber           = "#ffb86c"
local amber_soft      = "#ffd29a"

local cream           = "#fff1dd"

local blue_soft       = "#92a8c7"
local green_soft      = "#a8c090"
local red_soft        = "#d98c7a"

local border_dark     = "#3a2d24"
local select_bg       = "#4a3427"

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
    fg = orange,
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "CursorLine", {
    bg = bg_soft,
})

vim.api.nvim_set_hl(0, "LineNr", {
    fg = "#7b6554",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = amber,
    bold = true,
})

vim.api.nvim_set_hl(0, "Cursor", {
    fg = bg,
    bg = amber,
})

-- =========================================
-- syntax
-- =========================================

vim.api.nvim_set_hl(0, "Comment", {
    fg = "#8b6f5d",
    italic = true,
})

vim.api.nvim_set_hl(0, "Keyword", {
    fg = orange,
    bold = true,
})

vim.api.nvim_set_hl(0, "String", {
    fg = green_soft,
})

vim.api.nvim_set_hl(0, "Function", {
    fg = amber_soft,
})

vim.api.nvim_set_hl(0, "Identifier", {
    fg = fg,
})

vim.api.nvim_set_hl(0, "Type", {
    fg = orange_soft,
})

vim.api.nvim_set_hl(0, "Constant", {
    fg = red_soft,
})

vim.api.nvim_set_hl(0, "Number", {
    fg = amber,
})

vim.api.nvim_set_hl(0, "Boolean", {
    fg = cream,
})

vim.api.nvim_set_hl(0, "Operator", {
    fg = blue_soft,
})

-- =========================================
-- visuals
-- =========================================

vim.api.nvim_set_hl(0, "Visual", {
    bg = select_bg,
})

vim.api.nvim_set_hl(0, "Search", {
    fg = bg,
    bg = amber,
})

vim.api.nvim_set_hl(0, "IncSearch", {
    fg = bg,
    bg = orange_soft,
})

vim.api.nvim_set_hl(0, "MatchParen", {
    fg = amber,
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
    fg = "#8b6f5d",
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
    bg = orange,
    bold = true,
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
    bg = border_dark,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
    bg = amber,
})

-- =========================================
-- diagnostics
-- =========================================

vim.api.nvim_set_hl(0, "DiagnosticError", {
    fg = "#e07a5f",
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
    fg = "#f2cc8f",
})

vim.api.nvim_set_hl(0, "DiagnosticInfo", {
    fg = blue_soft,
})

vim.api.nvim_set_hl(0, "DiagnosticHint", {
    fg = green_soft,
})

-- =========================================
-- nvimtree
-- =========================================

vim.api.nvim_set_hl(0, "NvimTreeNormal", {
    fg = fg,
    bg = bg,
})

vim.api.nvim_set_hl(0, "NvimTreeRootFolder", {
    fg = orange,
    bold = true,
})

-- =========================================
-- transparent background
-- =========================================

vim.cmd([[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalFloat guibg=NONE ctermbg=NONE
]])
