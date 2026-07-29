return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.config")
			---@diagnostic disable-next-line: missing-fields
			configs.setup({
				-- enable syntax highlighting
				highlight = {
					enable = true,
				},
				-- enable indentation
				indent = { enable = true },
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = { enable = true },
				-- ensure these language parsers are installed
				ensure_installed = {
					"json",
					"python",
					"javascript",
					"query",
					"typescript",
					"tsx",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"bash",
					"lua",
					"c",
					"dockerfile",
					"gitignore",
					"python",
					"c",
					"c++",
				},
				-- auto install above language parsers
				auto_install = false,
			})
		end,
	},
}
