return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  version = '^18.0.0',

  -- Only load when these commands are invoked
  cmd = {
    'CodeCompanion',
    'CodeCompanionChat',
    'CodeCompanionExplain',
    'CodeCompanionActions',
  },
  keys = {
    {
      '<leader>ac',
      function()
        vim.cmd 'CodeCompanionChat'
      end,
      desc = '[A]I [C]hat (CodeCompanion)',
    },
    {
      '<leader>ae',
      function()
        vim.cmd 'CodeCompanion Explain'
      end,
      mode = 'v',
      desc = '[A]I [E]xplain selected code',
    },
  },

  -- Lazy loading
  lazy = true,
}
