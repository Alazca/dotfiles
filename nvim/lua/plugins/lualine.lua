return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require('lualine')
    local lazy_status = require('lazy.status') -- to configure lazy pending updates count
    local colors = {
      vertsplit = '#181A1F',
      special_grey = '#3B4048',
      menu_grey = '#3E4452',
      cursor_grey = '#2C323C',
      gutter_fg_grey = '#4B5263',
      blue = '#82b1ff',
      dark_red = '#BE5046',
      white = '#bfc7d5',
      green = '#C3E88D',
      purple = '#c792ea',
      yellow = '#ffcb6b',
      light_red = '#ff869a',
      red = '#ff5370',
      dark_yellow = '#F78C6C',
      cyan = '#89DDFF',
      comment_grey = '#697098',
      black = '#292D3E',
    }

    local my_lualine_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.purple, gui = 'bold' },
        b = { fg = colors.purple, bg = colors.menu_grey },
        c = { fg = colors.comment_grey, bg = colors.black },
      },
      insert = {
        a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
        b = { fg = colors.blue, bg = colors.menu_grey },
      },
      visual = {
        a = { fg = colors.black, bg = colors.cyan, gui = 'bold' },
        b = { fg = colors.cyan, bg = colors.menu_grey },
      },
      replace = {
        a = { fg = colors.black, bg = colors.green, gui = 'bold' },
        b = { fg = colors.green, bg = colors.menu_grey },
      },
      inactive = {
        a = { fg = colors.black, bg = colors.menu_grey, gui = 'bold' },
        b = { fg = colors.black, bg = colors.menu_grey },
        c = { fg = colors.black, bg = colors.menu_grey },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = '#ff9e64' },
          },
          { 'fileformat' },
          { 'filetype' },
        },
      },
    })
  end,
}
