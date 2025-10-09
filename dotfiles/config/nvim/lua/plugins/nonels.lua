return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    local on_attach = function(client, bufnr)
      vim.notify("none-ls attached to buffer " .. bufnr, vim.log.levels.INFO)

      if client.supports_method("textDocument/formatting") then
        local group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
        vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })
        -- vim.api.nvim_create_autocmd("BufWritePre", {
          -- group = group,
          -- buffer = bufnr,
          -- callback = function()
            -- vim.lsp.buf.format({ bufnr = bufnr })
          -- end,
        -- })
      end
    end

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.black.with({ extra_args = { "--line-length", "120" } }),
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.mypy,
      },
      on_attach = on_attach,
    })

    vim.api.nvim_set_keymap('n', '<leader>ff', ':lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })
  end,
}

