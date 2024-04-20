return {
  {
    -- Theme with pastele colors
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
      }
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
}
