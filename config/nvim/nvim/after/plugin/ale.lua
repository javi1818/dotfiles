vim.cmd('let g:ale_linters = {"python": ["ruff", "pylsp"]}')
vim.g.ale_enabled = 1
vim.g.ale_disable_lsp = 0
-- vim.keymap.set("n", "<leader>an", vim.cmd.ALENext)
-- vim.keymap.set("n", "<leader>ap", vim.cmd.ALEPrevious)
vim.keymap.set("n", "<leader>ad", vim.cmd.ALEGoToDefinition)
