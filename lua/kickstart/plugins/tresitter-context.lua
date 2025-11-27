return {
  { -- LSP Configuration & Plugins
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      enable = true,
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
  },
}
