return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
	    size = 20,
	    open_mapping = [[<leader>t]],
	    shading_factor = 0,
	    direction = "horizontal",
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
