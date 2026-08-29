return {
  'glacambre/firenvim',
  lazy = false,
  config = function()
    vim.g.firenvim_config = {
      globalSettings = {},
      localSettings = {
        ['.*'] = { takeover = 'never' },
      },
    }
  end,
}
