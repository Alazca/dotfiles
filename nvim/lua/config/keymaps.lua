local v = vim.keymap
local opts = { noremap = true, silent = true }
local harpoon = require( "harpoon" )
harpoon:setup()

-- Insert Mode
v.set('i', 'kj', '<ESC>')
v.set('i', 'jk', '<ESC>')

-- Normal Mode
v.set('n', '<ESC>', '<cmd>noh<CR>')
v.set('n', '<C-h>', '<C-w>h', opts)
v.set('n', '<C-j>', '<C-w>j', opts)
v.set('n', '<C-k>', '<C-w>k', opts)
v.set('n', '<C-l>', '<C-w>l', opts)
v.set('n', '<C-d>', '<C-d>zz', opts)

-- Visual Mode
-- Indentation Support
v.set('v', '>', '>gv')
v.set('v', '<', '<gv')

-- No op leader key
--v.set( {"i" , "n"}, "<leader>", "<nop>", opts)

-- Nvim-tree
v.set({ 'i', 'n', 'v' },'<C-n>',      '<cmd> NvimTreeToggle <CR>',  opts)
v.set({ 'n', 'v' },     '<leader>ee', '<cmd> NvimTreeFocus <CR>',   opts)
v.set({ 'n', 'v' }, '   <leader>ec',  '<cmd>NvimTreeCollapse<CR>',  opts) -- collapse file explorer

-- Telescope
v.set({ 'i', 'n', 'v' }, '<leader>ff', '<cmd>Telescope find_files<cr>')
v.set({ 'i', 'n', 'v' }, '<leader>fr', '<cmd>Telescope oldfiles<cr>')
v.set({ 'i', 'n', 'v' }, '<leader>fs', '<cmd>Telescope live_grep<cr>')

-- Harpoon
v.set('n', '<leader>hm', function() harpoon:list():add() end, opts)
v.set('n', '<leader>hh', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, opts)
v.set("n", "<leader>hp", function() harpoon:list():prev() end)
v.set("n", "<leader>hn", function() harpoon:list():next() end)
v.set('n', '<C-1>', function() harpoon:list():select(1) end, opts)
v.set('n', '<C-2>', function() harpoon:list():select(2) end, opts)
v.set('n', '<C-3>', function() harpoon:list():select(3) end, opts)
v.set('n', '<C-4>', function() harpoon:list():select(4) end, opts)


