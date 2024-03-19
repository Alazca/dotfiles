return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    local term = require('toggleterm')
    term.setup({
      open_mapping = [[<C-t>]],
      hide_numbers = true,
      persist_size = true,
      shade_filetypes = {},
      shade_terminals = true,
      autochdir = false,
      start_in_insert = true,
      direction = 'float',
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
        title_pos = 'center',
      },
    })
  end,
}
