-- List all dependencies here
return {
  'nvim-lua/plenary.nvim',
  'folke/neodev.nvim',
  'nvim-treesitter/nvim-treesitter-textobjects',
  'windwp/nvim-ts-autotag',
  'nvim-tree/nvim-web-devicons',
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'folke/neoconf.nvim', cmd = 'Neoconf' },
}
