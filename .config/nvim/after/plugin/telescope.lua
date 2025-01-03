local builtin = require('telescope.builtin')
-- Find all files 
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Find inside files via Grep
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
-- Find open buffers
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- Find Vim commands
vim.keymap.set('n', '<leader>fc', builtin.commands, {})
-- Find fuctions/symbols
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
