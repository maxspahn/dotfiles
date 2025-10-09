local functions = require('config.functions')
local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

map("v", "<leader>cc", ':lua require("config.functions").characterCount()<CR>', { noremap = true, silent = true })


-- Save
map("n", "<leader>w", "<CMD>update<CR>")

vim.api.nvim_create_user_command("W", "write", {})

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")
map("n", "<leader>x", "<CMD>q!<CR>")
map("i", "<leader>x", "<ESC><CMD>q!<CR>")
-- Close buffer
map("n", "<Leader>n", ":bn <CR>")
map("n", "<Leader>p", ":bp <CR>")
map("n", "<Leader>cb", "<CMD>%bd|e#<CR>")

-- Exit insert mode
map("i", "<leader>,", "<ESC>")
map("v", "<leader>,", "<ESC>")

-- New Windows
map("n", "<Leader>v", ":Vex <CR>")
map("n", "<Leader>s", ":Sex <CR>")

-- Window Navigation
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>l", "<C-w>l")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>j", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Config
map("n", "<leader>sv", "<CMD>source $MYVIMRC<CR>")

