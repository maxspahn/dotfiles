return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
	    --size = 10,
	    open_mapping = [[<leader>t]],
      start_in_insert = true,
      insert_mappings = true,
	    shading_factor = 0,
	    direction = "float",
      terminal_mappings = "true",
      keys = {
        { '<leader>t', ',<CMD>ToggleTerm<CR>', desc = 'Toggle terminal'},
      },
	    float_opts = {
		    border = "curved",
		    highlights = {
			    border = "Normal",
			    background = "Normal",
		    },
	    },
    }) 
  end,
}
