return {
  'datsfilipe/min-theme.nvim',
  lazy = false,
  config = function()
    require('min-theme').setup({
      theme = 'dark',
    })
    vim.cmd.colorscheme('min-theme')
  end
}

