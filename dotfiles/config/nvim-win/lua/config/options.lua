local global = vim.g
local o = vim.opt

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true
o.completeopt = 'menuone,noselect'
o.colorcolumn = '120'
o.textwidth = 120
o.background = "dark"
o.autochdir = true
o.fileformat = "unix"

vim.cmd("colorscheme gruvbox")
-- global.loaded_python3_provider = 1
-- local user_profile = vim.fn.getenv 'USERPROFILE'
-- vim.g.python3_host_prog = user_profile .. '/.pyenv/pyenv-win/versions/3.10.11/python.exe'
-- global.python3_host_prog = '"C:/Program Files/WindowsApps/PythonSoftwareFoundation.Python.3.11_3.11.2544.0_x64__qbz5n2kfra8p0/python3.11.exe"'
-- global.python3_host_prog = 'C:/Users/DEMASPA1/AppData/Local/Microsoft/WindowsApps/python3.exe'

vim.cmd [[let &shell = '"C:/Users/DEMASPA1/AppData/Local/Programs/Git//bin/bash.exe"']]
vim.cmd [[let &shellcmdflag = '-s']]

