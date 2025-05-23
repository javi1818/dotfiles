vim.g.mapleader = " "
-- Vim file explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.NvimTreeToggle)
-- Copy current file path to clipboard
vim.keymap.set("n", "<leader>cf", function()
	vim.api.nvim_command("let @+=@%")
	vim.api.nvim_command('echo "File path copied to clipboard: " . @%')
end)
vim.keymap.set("n", "<leader>an", vim.cmd.ALENext)
vim.keymap.set("n", "<leader>ad", vim.cmd.ALEGoToDefinition)
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>tp", vim.cmd.tabprevious)
vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete)

vim.keymap.set("n", "<leader><Left>", function()
	vim.api.nvim_command("vertical resize +10")
end)

vim.keymap.set("n", "<leader><Right>", function()
	vim.api.nvim_command("vertical resize -10")
end)

vim.keymap.set('n', '<leader>rb', function() require('reach').buffers() end, {})

vim.keymap.set('n', '<C-Left>', '<C-w>h', { desc = 'Go to left window' })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { desc = 'Go to lower window' })
vim.keymap.set('n', '<C-Up>', '<C-w>k', { desc = 'Go to upper window' })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { desc = 'Go to right window' })
