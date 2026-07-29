vim.opt.termguicolors = true

-- ───── Monochrome Midnight Palette ─────

local bg              = "#000000"
local bg_soft         = "#111111"
local bg_light        = "#1c1c1c"

local fg              = "#d9d9d9"
local fg_soft         = "#bfbfbf"

local peach           = "#d0d0d0"
local peach_soft      = "#e0e0e0"

local lavender        = "#c8c8c8"
local lavender_soft   = "#f0f0f0"

local blue            = "#b5b5b5"
local green           = "#9e9e9e"
local red_soft        = "#8c8c8c"

local border_dark     = "#2a2a2a"
local select_bg       = "#303030"

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
    fg = "#5a5a5a",
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
-- editor
-- =========================================

vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#151515" })
vim.api.nvim_set_hl(0, "Conceal", { fg = "#666666" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = bg_soft })
vim.api.nvim_set_hl(0, "Directory", { fg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = bg })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#555555", bg = bg })
vim.api.nvim_set_hl(0, "Folded", { fg = "#808080", bg = "#111111" })
vim.api.nvim_set_hl(0, "NonText", { fg = "#303030" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#303030" })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#505050" })
vim.api.nvim_set_hl(0, "Title", { fg = "#f2f2f2", bold = true })
vim.api.nvim_set_hl(0, "Question", { fg = "#d0d0d0" })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#d0d0d0" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = "#bfbfbf" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#9a9a9a", bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#bdbdbd" })

-- =========================================
-- syntax
-- =========================================

vim.api.nvim_set_hl(0, "Statement", { fg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "Conditional", { fg = "#d8d8d8", bold = true })
vim.api.nvim_set_hl(0, "Repeat", { fg = "#cfcfcf", bold = true })
vim.api.nvim_set_hl(0, "Label", { fg = "#bdbdbd" })
vim.api.nvim_set_hl(0, "Exception", { fg = "#c8c8c8" })

vim.api.nvim_set_hl(0, "PreProc", { fg = "#bdbdbd" })
vim.api.nvim_set_hl(0, "Include", { fg = "#d4d4d4" })
vim.api.nvim_set_hl(0, "Define", { fg = "#d0d0d0" })
vim.api.nvim_set_hl(0, "Macro", { fg = "#d0d0d0" })
vim.api.nvim_set_hl(0, "PreCondit", { fg = "#bbbbbb" })

vim.api.nvim_set_hl(0, "Special", { fg = "#bfbfbf" })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#b0b0b0" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = "#808080" })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = "#909090", italic = true })
vim.api.nvim_set_hl(0, "Tag", { fg = "#d5d5d5" })

vim.api.nvim_set_hl(0, "Character", { fg = "#ababab" })
vim.api.nvim_set_hl(0, "Float", { fg = "#d6d6d6" })
vim.api.nvim_set_hl(0, "StorageClass", { fg = "#cfcfcf" })
vim.api.nvim_set_hl(0, "Structure", { fg = "#d8d8d8" })
vim.api.nvim_set_hl(0, "Typedef", { fg = "#d8d8d8", bold = true })

vim.api.nvim_set_hl(0, "Todo", {
    fg = "#000000",
    bg = "#d8d8d8",
    bold = true,
})

vim.api.nvim_set_hl(0, "Underlined", {
    fg = "#dcdcdc",
    underline = true,
})

vim.api.nvim_set_hl(0, "Ignore", { fg = "#444444" })
vim.api.nvim_set_hl(0, "Error", {
    fg = "#f0f0f0",
    bg = "#404040",
})

-- =========================================
-- treesitter
-- =========================================

local ts = {
    ["@variable"] = { fg = fg },
    ["@variable.builtin"] = { fg = "#b0b0b0", italic = true },
    ["@variable.parameter"] = { fg = "#cfcfcf" },
    ["@variable.member"] = { fg = "#bfbfbf" },

    ["@constant"] = { fg = "#b0b0b0" },
    ["@constant.builtin"] = { fg = "#d5d5d5", bold = true },

    ["@string"] = { fg = "#a5a5a5" },
    ["@string.escape"] = { fg = "#d0d0d0" },

    ["@number"] = { fg = "#d0d0d0" },
    ["@boolean"] = { fg = "#dcdcdc", bold = true },

    ["@keyword"] = { fg = "#dadada", bold = true },
    ["@keyword.function"] = { fg = "#d0d0d0" },
    ["@keyword.return"] = { fg = "#d0d0d0" },

    ["@function"] = { fg = "#c8c8c8" },
    ["@function.call"] = { fg = "#bdbdbd" },
    ["@function.builtin"] = { fg = "#dcdcdc" },

    ["@method"] = { fg = "#c0c0c0" },
    ["@constructor"] = { fg = "#d9d9d9" },

    ["@type"] = { fg = "#e0e0e0" },
    ["@type.builtin"] = { fg = "#d5d5d5" },

    ["@property"] = { fg = "#bdbdbd" },
    ["@field"] = { fg = "#bdbdbd" },

    ["@operator"] = { fg = "#909090" },
    ["@punctuation.delimiter"] = { fg = "#707070" },
    ["@punctuation.bracket"] = { fg = "#808080" },

    ["@comment"] = { fg = "#666666", italic = true },
}

for group, value in pairs(ts) do
    vim.api.nvim_set_hl(0, group, value)
end

-- =========================================
-- diff
-- =========================================

vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#141414" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#090909" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#2a2a2a" })

-- =========================================
-- spell
-- =========================================

vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = "#888888" })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = "#bbbbbb" })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = "#999999" })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = "#777777" })

-- =========================================
-- terminal
-- =========================================

vim.g.terminal_color_0  = "#000000"
vim.g.terminal_color_1  = "#7a7a7a"
vim.g.terminal_color_2  = "#909090"
vim.g.terminal_color_3  = "#b0b0b0"
vim.g.terminal_color_4  = "#d0d0d0"
vim.g.terminal_color_5  = "#bfbfbf"
vim.g.terminal_color_6  = "#f0f0f0"
vim.g.terminal_color_7  = "#ffffff"
vim.g.terminal_color_8  = "#222222"
vim.g.terminal_color_9  = "#888888"
vim.g.terminal_color_10 = "#a0a0a0"
vim.g.terminal_color_11 = "#c0c0c0"
vim.g.terminal_color_12 = "#dcdcdc"
vim.g.terminal_color_13 = "#d5d5d5"
vim.g.terminal_color_14 = "#f5f5f5"
vim.g.terminal_color_15 = "#ffffff"

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
    fg = "#8a8a8a",
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
    fg = "#bdbdbd",
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
