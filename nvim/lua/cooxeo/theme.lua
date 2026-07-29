-- current setup
vim.opt.cmdheight = 0             -- Hide separate command line unless used (Neovim 0.9+)
vim.opt.showcmdloc = "statusline" -- Show command input in the status line
vim.opt.cmdwinheight = 1          -- Minimal height for command window
vim.opt.shortmess:append("F")     -- Hide "written" messages faster
vim.opt.laststatus = 3            -- Single global statusline (important)

--minimal status bar
-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#E0E0E0", bg = "NONE" }) -- main statusline
-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#E0E0E0", bg = "NONE" }) -- inactive statusline
-- vim.api.nvim_set_hl(0, "MsgArea", { fg = "#E0E0E0", bg = "NONE" }) -- messages & commands
-- vim.api.nvim_set_hl(0, "Cmdline", { fg = "#E0E0E0", bg = "NONE" }) -- command-line input

--dark status line this is current im using
-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#E0E0E0", bg = "#323232" }) -- main statusline
-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#E0E0E0", bg = "NONE" })  -- inactive statusline
-- vim.api.nvim_set_hl(0, "MsgArea", { fg = "#E0E0E0", bg = "#323232" })    -- messages & commands
-- vim.api.nvim_set_hl(0, "Cmdline", { fg = "#E0E0E0", bg = "NONE" })       -- command-line input

-- -- dark status line this is for transparent
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#44444E", bg = "#000000" }) -- main statusline
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#44444E", bg = "NONE" })  -- inactive statusline
-- vim.api.nvim_set_hl(0, "MsgArea", { fg = "#E0E0E0", bg = "#000000" })    -- messages &commands
vim.api.nvim_set_hl(0, "Cmdline", { fg = "#44444E", bg = "NONE" })       -- command-line input
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1e1e1e" })


-- Example: set background to dark gray
-- vim.cmd("highlight Normal guibg=#1e1e1e")
-- vim.cmd("highlight NormalNC guibg=#1e1e1e") -- inactive windows
-- vim.cmd("highlight LineNr guibg=#1e1e1e") -- line numbers
-- vim.cmd("highlight NonText guibg=#1e1e1e") -- empty lines, ~ marks
-- vim.cmd("highlight SignColumn guibg=#1e1e1e") -- sign column

-- --transparent
vim.cmd("highlight normal guibg=none")
vim.cmd("highlight normalnc guibg=none")
vim.cmd("highlight linenr guibg=none")
vim.cmd("highlight nontext guibg=none")
vim.cmd("highlight signcolumn guibg=none")

-- -- Very dark gray / almost black background
-- vim.cmd("highlight Normal guibg=#0c0c0c")
-- vim.cmd("highlight NormalNC guibg=#0c0c0c")   -- inactive windows
-- vim.cmd("highlight LineNr guibg=#0c0c0c")     -- line numbers
-- vim.cmd("highlight NonText guibg=#0c0c0c")    -- empty lines, ~ marks
-- vim.cmd("highlight SignColumn guibg=#0c0c0c") -- sign column
