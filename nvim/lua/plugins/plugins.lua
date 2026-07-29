return {
    -- Monochromatic neovim theme
    -- {
    --     "kdheepak/monochrome.nvim",
    --     config = function()
    --         vim.cmd 'colorscheme monochrome'
    --     end,
    -- },

    -- =========================
    -- Auto pairs
    -- =========================
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },

    -- =========================
    -- TSX / JSX auto tag
    -- =========================
    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
    },

    -- =========================
    -- Formatter (Conform)
    -- =========================
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        config = function()
            require("conform").setup({
                format_on_save = {
                    timeout_ms = 500,
                    lsp_fallback = true,
                },
                formatters_by_ft = {
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    html = { "prettier" },
                    css = { "prettier" },
                    python = { "isort", "black" },
                    c = { "clang_format" },
                    cpp = { "clang_format" },
                    lua = { "stylua" },
                },
            })
        end,
    },

    -- =========================
    -- Autocompletion
    -- =========================
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
    },

    -- =========================
    -- Indent guides
    -- =========================
    -- {
    --     "lukas-reineke/indent-blankline.nvim",
    --     main = "ibl",
    --     event = "BufReadPre",
    --     opts = {},
    -- },

    -- =========================
    -- LSP + Mason
    -- =========================
    { "williamboman/mason.nvim",          cmd = "Mason" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
}
