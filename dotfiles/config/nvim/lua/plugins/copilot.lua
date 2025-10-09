return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>"
        },
        layout = {
          position = "bottom", -- | top | left | right | horizontal | vertical
          ratio = 0.4
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 75,
        keymap = {
          accept = "<leader>c",
          accept_word = "<leader>w",
          accept_line = "<leader>z",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      filetypes = {
        yaml = false,
        markdown = true,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        python = true,
      },
      copilot_node_command = 'node', -- Node.js version must be > 18.x
      server_opts_overrides = {},
    })
  end,
}

-- return {
--   "github/copilot.vim",
--   config = function()
--     --vim.g.copilot_no_tab_map = False
--     --vim.g.copilot_assume_mapped = true
--     vim.api.nvim_set_keymap('i', '<Leader>c', 'copilot#Accept("\\<CR>")', {expr=true, silent=true, replace_keycodes=false})
--     vim.api.nvim_set_keymap('i', '<Leader>w', 'copilot#AcceptWord("\\<CR>")', {expr=true, silent=true, replace_keycodes=false})
--   end,
-- }
