return {
  "stevearc/dressing.nvim",
  config = function()
    require("dressing").setup({
      input = {
        enabled = true,
        default_prompt = "Input: ",
        win_options = {
          winblend = 0,
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
        },
      },
      select = {
        enabled = true,
        backend = { "builtin", "telescope" },
        trim_prompt = true,
        builtin = {
          win_options = {
            winblend = 0,
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
    })
  end,
}

