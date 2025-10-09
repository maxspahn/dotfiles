return {
  "williamboman/mason.nvim",
  dependencies = {
    {"williamboman/mason-lspconfig.nvim", tag = "v1.31.0"},
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "lua_ls",
        "pyright",
        "omnisharp",
      },
      automatic_installation = true,
    })

  end,
}
