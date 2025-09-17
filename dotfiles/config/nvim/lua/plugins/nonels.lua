return {
  "neovimtools/none-ls.nvim",
  config = function()
    require("null-ls").setup({
      sources = {
        -- Add your null-ls sources here
        require("null-ls").builtins.formatting.black.with({
          extra_args = { "--fast" },
        }),
        require("null-ls").builtins.diagnostics.ruff.with({
          extra_args = { "--ignore=E501" }, -- Example to ignore line length errors
        }),
        require("null-ls").builtins.diagnostics.mypy,
      },
    })
    -- vim.api.nvim_create_autocmd("BufWritePre", {
      -- pattern = { "*.py" },
      -- callback = function()
        -- vim.lsp.buf.format({ async = true })
      -- end,
    -- })
    --
    vim.api.nvim_set_keymap('n', '<leader>bf', ':lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })
  end
}

