vim.opt.nu = true
vim.o.relativenumber = true

vim.opt.tabstop = 4 
-- vim.opt.shiftwidth = 4 
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.o.clipboard = 'unnamedplus'
vim.o.wrap = false
vim.o.linebreak = true
-- vim opt 
