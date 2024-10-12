return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				autotag = { enable = true },
				ensure_installed = {
					"markdown_inline",
					"bash",
					"lua",
					"c",
					"cpp",
					"vim",
					"python",
					"html",
					"css",
					"json",
					"json5",
					"javascript",
					"typescript",
					"markdown",
					"dockerfile",
					"gitignore",
					"dockerfile",
					"yaml",
				},
				context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
				auto_install = true,
			})
		end,
	},
}
