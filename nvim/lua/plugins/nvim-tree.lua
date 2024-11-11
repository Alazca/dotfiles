return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  title = false,
  config = function()
    require('nvim-tree').setup({
      filters = {
        dotfiles = true,
      },
    })
  end,
}
