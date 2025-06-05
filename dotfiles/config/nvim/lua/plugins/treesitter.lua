return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup{
      ensure_installed ={
        'html',
        'python',
        'json',
        'jsonc',
        'yaml',
        'markdown',
        'rust',
        'toml',
        'lua',
        'bash',
        'latex',
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    auto_install = true,
    ignore_install = { "haskell" },
    sync_install = false,
    indent = {
      enable = true,
      disable = { "yaml" },
    },
  }
  end,
}
