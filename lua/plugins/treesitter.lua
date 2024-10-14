return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = { 'javascript', 'typescript', 'tsx', 'go', 'php'},
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = false,
          node_incremental = "<Tab>",
          scope_incremental = false,
          node_decremental = "<S-Tab>",
        },
      },
    },
 }
}
