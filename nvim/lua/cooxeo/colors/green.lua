-- Enable true colors
vim.opt.termguicolors = true

-- Base colors
local green = "#00FF9C"
local bright_green = "#00ff00"
local mid_green = "#00cc00"
local dark_green = "#003b00"
local bg_dark = "#000000"
local bg_light = "#001a12"

-- Core UI
vim.api.nvim_set_hl(0, "Normal", { fg = green, bg = bg_dark })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = green, bg = bg_dark })
vim.api.nvim_set_hl(0, "CursorLine", { bg = bg_light })
vim.api.nvim_set_hl(0, "LineNr", { fg = dark_green })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = bright_green, bold = true })

-- Syntax
vim.api.nvim_set_hl(0, "Comment", { fg = dark_green, italic = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = bright_green, bold = true })
vim.api.nvim_set_hl(0, "String", { fg = mid_green })
vim.api.nvim_set_hl(0, "Function", { fg = green })
vim.api.nvim_set_hl(0, "Identifier", { fg = green })
vim.api.nvim_set_hl(0, "Type", { fg = "#00ffaa" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#66ff66" })
vim.api.nvim_set_hl(0, "Number", { fg = "#33ff33" })

-- Visuals
vim.api.nvim_set_hl(0, "Visual", { bg = "#003b00" })
vim.api.nvim_set_hl(0, "Search", { fg = bg_dark, bg = bright_green })
vim.api.nvim_set_hl(0, "IncSearch", { fg = bg_dark, bg = green })

-- Statusline
vim.api.nvim_set_hl(0, "StatusLine", { fg = green, bg = "#001a12" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = dark_green, bg = bg_dark })

-- Splits & borders
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#002b00" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#002b00" })

-- Popup menu (autocomplete)
vim.api.nvim_set_hl(0, "Pmenu", { fg = green, bg = "#001a12" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = bg_dark, bg = bright_green })

-- Diagnostics (LSP)
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff4444" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffaa00" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#00ffaa" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#00ffcc" })
