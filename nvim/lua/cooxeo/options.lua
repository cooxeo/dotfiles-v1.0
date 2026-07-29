vim.opt.nu = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.o.shiftwidth = 4
vim.o.clipboard = "unnamedplus"

-- vim.opt.shortmess:append("I")
-- vim.opt.relativenumber = true

-- netrw settings
-- vim.g.netrw_banner = 0 -- Hide banner
-- vim.g.netrw_liststyle = 3            -- Tree-style listing

vim.opt.guicursor = {
    "n-v-c:block",                                 -- Normal, Visual, Command: solid block
    "i:block-blinkwait200-blinkon200-blinkoff150", -- Insert: underline (20%) with blinking
    -- "i:hor25-blinkwait300-blinkon200-blinkoff150", -- Insert: underline (20%) with blinking
}

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.fn.mkdir(vim.opt.undodir:get()[1], "p")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        vim.opt_local.formatoptions:remove({ "r", "o" })
    end,
})
