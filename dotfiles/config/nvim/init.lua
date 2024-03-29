vim.g.mapleader = ","

require("user")

-- Indentation
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80'
vim.opt.textwidth = 80

vim.opt.number = true

-- Plugin Settings

-- gruvbox
vim.cmd([[colorscheme gruvbox]])
vim.cmd([[highlight Normal ctermbg=NONE guibg=#121212]])

-- python
-- Set the path to the local environment for the virtual environment

{%@@ if profile == "archlinux" @@%}
vim.g.python3_host_prog = "~/.pyenv/shims/python3"
{%@@ endif @@%}

{%@@ if profile == "mspahn-work" @@%}
vim.g.python3_host_prog = "/usr/bin/python3"
{%@@ endif @@%}

-- airline
vim.cmd([[let g:airline#extensions#tabline#enabled = 1]])
vim.cmd([[let g:airline#extensions#tabline#fnamemod= ':t']])

