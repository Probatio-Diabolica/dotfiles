-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")

vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

-- Ensure you have the nvim-tree API available
--local nvim_tree_api = require("nvim-tree.api")

-- Set the keybinding for toggling nvim-tree
--vim.keymap.set('n', '<leader>pv', function()
  --nvim_tree_api.tree.toggle({ focus = false })
--end, { noremap = true, silent = true, desc = "Toggle nvim-tree" })i

