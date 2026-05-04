require('mini.fuzzy').setup()

require("mini.completion").setup({
  window = {
    info = {width = 200, height = 50},
    signature = {width = 200, height = 50}  
  },
  lsp_completion = {
    -- Override the default strict matching with mini.fuzzy
    process_items = function(items, base)
      return MiniFuzzy.process_lsp_items(items, base)
    end,
  }
})

require("mini.icons").setup()

--local gen_loader = require('mini.snippets').gen_loader
--require('mini.snippets').setup({
--  snippets = {
--    -- Load snippets based on current language by reading files from
--    -- "snippets/" subdirectories from 'runtimepath' directories.
--    gen_loader.from_lang(),
--  },
--})
