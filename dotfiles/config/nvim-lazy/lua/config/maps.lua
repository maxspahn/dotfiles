vim.g.mapleader = ","


local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")
map("n", "<leader>x", "<CMD>q!<CR>")
map("i", "<leader>x", "<ESC><CMD>q!<CR>")
-- Close buffer
map("n", "<leader>,", "<CMD>bd<CR>")
map("n", "<Leader>n", ":bn <CR>")
map("n", "<Leader>p", ":bp <CR>")
map("n", "<Leader>b", ":Telescope buffers <CR>")

-- Exit insert mode
map("i", "<leader>,", "<ESC>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Config
map("n", "<leader>sv", "<CMD>source $MYVIMRC<CR>")
