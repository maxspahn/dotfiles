return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
	config = function()
		local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        mappings = {
          i = { 
            ["<C-k>"] = actions.move_selection_previous, --move to prev result
          }
        }
      }
    })
    local keymap = vim.keymap
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find git files" })
    keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find in cwd" })
    keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find buffers" })
	end
}
