return {
	"ThePrimeagen/harpoon",
  branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add to harpoon list" })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle harpoon menu" })

    vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Show first file in harpoon list" })
    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end, { desc = "Show second file in harpoon list" })
    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end, { desc = "Show third file in harpoon list" })
    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end, { desc = "Show fourth file in harpoon list" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
	end,
}
