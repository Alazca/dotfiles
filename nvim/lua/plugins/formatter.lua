return {
  'stevearc/conform.nvim',
  config = function()
    local conform = require 'conform'
    conform.setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        c = { 'clang_format' },
        cpp = { 'clang_format' },
        latex = { 'tex-fmt' },
        python = { 'black' },
        javascript = { 'prettier' },
        html = { 'prettier' },
        sql = { 'sql_formatter' },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    }
  end,
}
