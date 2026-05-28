return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  version = '^18.0.0',

  opts = {},
  -- Only load when these commands are invoked
  cmd = {
    'CodeCompanion',
    'CodeCompanionChat',
    'CodeCompanionActions',
  },
  keys = {
    {
      '<leader>aa',
      '<cmd>CodeCompanionActions<cr>',
      desc = '[A]I [A]ctions (CodeCompanion)',
    },
    {
      '<leader>ac',
      '<cmd>CodeCompanionChat<cr>',
      desc = '[A]I [C]hat (CodeCompanion)',
    },
    {
      '<leader>ap',
      '<cmd>CodeCompanion<cr>',
      desc = '[A]I [P]rompt (CodeCompanion)',
    },
  },

  -- Lazy loading
  lazy = true,
}
