return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        -- Telescope setup
        telescope.setup({
            defaults = {
                layout_strategy = "horizontal",
                layout_config = {
                    width = 0.8,
                    height = 0.7,
                    preview_width = 0.55,
                },
            },
        })

        -- Keymaps you want to keep unchanged
        vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

        -- Additional keymaps
        vim.keymap.set("n", ";f", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "ff", builtin.buffers, { desc = "Telescope find buffer files" })
        vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope git files" })

        -- Notes
        vim.keymap.set("n", "<leader>n", function()
            builtin.find_files({ cwd = vim.fn.expand("~/cooxeo/notes"), hidden = true })
        end, { desc = "Telescope: Find notes" })

        vim.keymap.set("n", "<leader>gn", function()
            builtin.live_grep({ cwd = vim.fn.expand("~/cooxeo/notes") })
        end, { desc = "Telescope: Grep notes" })
    end,
}
