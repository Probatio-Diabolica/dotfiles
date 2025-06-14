-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")
-- local builtin = require('telescope.builtin')
vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, {})
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, {})
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, {})
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, {})




--vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
--vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
--vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
--vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})

-- Ensure you have the nvim-tree API available
--local nvim_tree_api = require("nvim-tree.api")

-- Set the keybinding for toggling nvim-tree
--vim.keymap.set('n', '<leader>pv', function()
  --nvim_tree_api.tree.toggle({ focus = false })
--end, { noremap = true, silent = true, desc = "Toggle nvim-tree" })i

