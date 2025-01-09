vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

-- vim.api.nvim_set_keymap('i', '<Leader>c', '<Cmd>lua require("copilot").accept()<CR>', { silent = true, expr = true })


vim.api.nvim_set_keymap('i', '<Leader>c', 'copilot#Accept("\\<CR>")', {expr=true, silent=true, replace_keycodes=false})

vim.api.nvim_set_keymap('i', '<Leader>w', 'copilot#AcceptWord("\\<CR>")', {expr=true, silent=true, replace_keycodes=false})





