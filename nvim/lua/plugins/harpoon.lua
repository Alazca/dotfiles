return {
  'ThePrimeagen/harpoon',
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
   config = function()
     local harpoon = require( 'harpoon' )
     harpoon:setup({})
     
     local conf = require( 'telescope.config' ).values
     _G.toggle_telescope = function()
       local harpoon_files = harpoon:list()
       local file_paths = {}
       for _, item in ipairs(harpoon_files.items) do
         table.insert(file_paths, item.value)
       end

       require("telescope.pickers").new({}, {
         prompt_title = "Harpoon",
         finder = require("telescope.finders").new_table({
           results = file_paths,
         }),
         previewer = conf.file_previewer({}),
         sorter = conf.generic_sorter({}),
       }):find()
     end
   end,
}

