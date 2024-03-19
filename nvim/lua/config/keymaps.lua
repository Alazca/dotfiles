local v = vim.keymap
local opts = { noremap = true, silent = true }

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
v.set('v', '>', '>gv') -- Indentation Support
v.set('v', '<', '<gv') -- Indentation Support

-- No op leader key
--v.set( {"i" , "n"}, "<leader>", "<nop>", opts)

-- Nvim-tree
v.set({ 'i', 'n', 'v' }, '<C-n>', '<cmd> NvimTreeToggle <CR>', opts)
v.set({ 'n', 'v' }, '<leader>ee', '<cmd> NvimTreeFocus <CR>', opts)
v.set({ 'n', 'v' }, '<leader>ec', '<cmd>NvimTreeCollapse<CR>', opts) -- collapse file explorer

-- Telescope
v.set({ 'i', 'n', 'v' }, '<leader>ff', '<cmd>Telescope find_files<cr>')
v.set({ 'i', 'n', 'v' }, '<leader>fr', '<cmd>Telescope oldfiles<cr>')
v.set({ 'i', 'n', 'v' }, '<leader>fs', '<cmd>Telescope live_grep<cr>')

-- Harpoon
v.set('n', '<leader>hm', "<cmd>lua require('harpoon.mark').add_file()<CR>")
v.set('n', '<leader>hn', "<cmd>lua require('harpoon.ui').nav_next()<CR>")
v.set('n', '<leader>hp', "<cmd>lua require('harpoon.ui').nav_prev()<CR>")
v.set('n', '<leader>hh', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
