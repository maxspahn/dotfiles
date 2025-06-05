return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    --"rcarriga/nvim-notify"
  },
  config = function()
    require("noice").setup({
      cmdline = {
        view = "cmdline_popup", -- enables floating command line
      },
      presets = {
        command_palette = true,
      },
    })
  end
}

