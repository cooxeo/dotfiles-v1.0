local cmp = require("cmp")

-- semi-transparent popup
vim.o.pumblend = 100

-- force transparency even after colorscheme changes
vim.cmd([[
  augroup TransparentPmenu
    autocmd!
    autocmd ColorScheme * highlight Pmenu guibg=NONE
    "autocmd ColorScheme * highlight PmenuSel guibg=#5f87af guifg=#ffffff
    autocmd ColorScheme * highlight PmenuSbar guibg=NONE
    autocmd ColorScheme * highlight PmenuThumb guibg=#5f87af
  augroup END
]])

cmp.setup({
    snippet = {
        expand = function(args)
            -- your snippets
        end,
    },
    mapping = {
        ["<S-CR>"] = cmp.mapping.complete(), -- Shift + Enter triggers completion
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    },
    sources = cmp.config.sources({
        { name = "buffer" },
        { name = "path" },
    }),
})
