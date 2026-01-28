return {
  'zbirenbaum/copilot.lua',
  dependencies = {
    -- 'copilotlsp-nvim/copilot-lsp', -- Add copilot-lsp as a dependency
    -- init = function()
    --   vim.g.copilot_nes_debounce = 500
    -- end,
  },

  cmd = { 'Copilot', 'Copilot auth', 'Copilot status' }, -- Load the plugin on specific commands

  config = function()
    require('copilot').setup {
      suggestion = { enabled = false }, -- Disable inline suggestions
      panel = { enabled = false }, -- Disable the panel
    }

    -- Key mapping for toggling Copilot suggestions
    vim.api.nvim_set_keymap('n', '<leader>ci', ':Copilot toggle<CR>', { noremap = true, silent = true })
  end,
}
