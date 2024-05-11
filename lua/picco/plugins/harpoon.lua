return 
{
    "ThePrimeagen/harpoon",
    tag = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() 
        local harpoon = require("harpoon")
	harpoon:setup()
	vim.keymap.set("n", "<C-h>", function() harpoon:list():add() end)
	vim.keymap.set("n", "<C-w>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
	vim.keymap.set("n", "<leader>a", function() harpoon:list():select(1) end)
	vim.keymap.set("n", "<leader>z", function() harpoon:list():select(2) end)
	vim.keymap.set("n", "<leader>e", function() harpoon:list():select(3) end)
	vim.keymap.set("n", "<leader>r", function() harpoon:list():select(4) end)

    end
}
