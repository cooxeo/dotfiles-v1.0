return {
    -- =========================
    -- Mason
    -- =========================
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "ts_ls",
                    "clangd",
                },
            })
        end,
    },

    -- =========================
    -- LSP (Neovim 0.11+ native)
    -- =========================
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Make Mason binaries available
            vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

            -- Keymaps
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    local opts = { buffer = event.buf, silent = true }
                    local map = vim.keymap.set

                    map("n", "gd", vim.lsp.buf.definition, opts)
                    map("n", "gD", vim.lsp.buf.declaration, opts)
                    map("n", "gi", vim.lsp.buf.implementation, opts)
                    map("n", "gr", vim.lsp.buf.references, opts)
                    map("n", "K", vim.lsp.buf.hover, opts)
                    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
                    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                    map("n", "<leader>f", function()
                        vim.lsp.buf.format({ async = true })
                    end, opts)
                end,
            })

            -- LSP servers (NEW API)
            vim.lsp.config.lua_ls = {
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                    },
                },
            }

            vim.lsp.config.pyright = {}
            vim.lsp.config.ts_ls = {}
            vim.lsp.config.clangd = {
                cmd = { "clangd", "--background-index" },
            }

            -- Enable servers
            vim.lsp.enable({
                "lua_ls",
                "pyright",
                "ts_ls",
                "clangd",
            })

            -- Diagnostics UI
            vim.diagnostic.config({
                virtual_text = true,
                severity_sort = true,
                float = { border = "rounded" },
            })
        end,
    }, -- <--- Make sure this comma is here
}      -- <--- Close the top-level table
