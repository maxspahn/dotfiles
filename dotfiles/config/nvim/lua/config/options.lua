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
-- ignorecase and smartcase
o.ignorecase = true
o.smartcase = false

o.updatetime = 4000 -- default is 4000

vim.filetype.add({
  extension = {
    tpp = "cpp",
  },
})

vim.cmd("colorscheme catppuccin")


vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "●", -- or "■", "▎", etc.
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})


