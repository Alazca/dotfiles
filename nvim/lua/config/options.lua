local v = vim.opt
local g = vim.g

v.relativenumber = true
v.swapfile = false
v.backup = false
v.termguicolors = true
v.shiftwidth = 2
v.tabstop = 2
v.smartcase = true
v.incsearch = true
v.ignorecase = true
v.autoindent = true
v.smartindent = true
v.showmode = false
v.scrolloff = 10
v.pumheight = 10
v.expandtab = true
v.cursorline = true
v.signcolumn = 'yes'
v.colorcolumn = '100'
v.wrap = false
v.hidden = true
v.undofile = true
v.hlsearch = false
v.cmdheight = 1
v.completeopt = 'menuone,noinsert,noselect'
v.errorbells = false
v.backspace = 'indent,eol,start'
v.autochdir = false
v.iskeyword:append('-')
v.splitbelow = true
v.splitright = true
v.foldenable = false

v.clipboard:append('unnamedplus')
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_matchparen = 1

--v.spell = true
--v.spelllang = 'en_us'
