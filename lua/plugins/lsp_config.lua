return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					--"clangd",
				},
			})
		end,
	},

  {
		"neovim/nvim-lspconfig",
		config = function()
      local lspconfig = require('lspconfig')

      -- Check if clangd exists
      if vim.fn.executable('clangd-12') == 1 then
         lspconfig.clangd.setup({
             --cmd = { "clangd-12", "--background-index", "--compile-commands-dir=/home/me489/repositories/trunk"} -- , "--index-file=/home/me489/.cache/clangd" },  -- Use system's native clangd
             cmd = { "clangd", "--background-index", "--compile-commands-dir=/home/me489/repositories/trunk"} -- , "--index-file=/home/me489/.cache/clangd" },  -- Use system's native clangd
         })
      else
         vim.notify("clangd is not installed on your system!", vim.log.levels.ERROR)
      end



      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Show references" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
      vim.keymap.set("n", "<C-q>", function() vim.cmd('ClangdSwitchSourceHeader') end, opt)
		end,
	},
}
