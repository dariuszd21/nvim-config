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
    config = function()
      local neotest = require 'neotest'
      neotest.setup {
        adapters = {
          require 'neotest-python',
          require 'neotest-go',
        },
      }

      --[[ Map test runner ]]
      vim.keymap.set('n', '<leader>tr', neotest.run.run, { desc = '[T]est [R]un' })
      local neotest_run_debug = function()
        neotest.run.run { strategy = 'dap' }
      end
      vim.keymap.set('n', '<leader>td', neotest_run_debug, { desc = '[T]est [D]ebug Run' })
      local neotest_run_file = function()
        neotest.run.run(vim.fn.expand '%')
      end

      vim.keymap.set('n', '<leader>tf', neotest_run_file, { desc = '[T]est whole [F]ile' })
      vim.keymap.set('n', '<leader>tn', neotest.jump.next, { desc = '[T]est [N]ext' })
      vim.keymap.set('n', '<leader>tp', neotest.jump.prev, { desc = '[T]est [P]revious' })
      vim.keymap.set('n', '<leader>ts', neotest.summary.toggle, { desc = '[T]est [S]ummary' })
      vim.keymap.set('n', '<leader>to', neotest.output_panel.toggle, { desc = '[T]est [O]output' })
    end,
  },
}
