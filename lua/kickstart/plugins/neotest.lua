return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      --[[ Runners  ]]
      'nvim-neotest/neotest-python',
      'akinsho/neotest-go',
    },
    opts = function()
      return {
        adapters = {
          require 'neotest-python',
          require 'neotest-go',
        },
      }
    end,
  },
}
