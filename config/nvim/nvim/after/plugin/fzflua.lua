require("fzf-lua").setup(
  {
    'fzf-native',
    winopts={
      height = 0.95,
      width = 0.95
    }
  }

)
vim.keymap.set("n", "<leader>ff", require("fzf-lua").files, {desc = "FzF Files"})
vim.keymap.set("n", "<leader>fb", require("fzf-lua").buffers, {desc = "FzF Buffers"})
vim.keymap.set("n", "<leader>fl", require("fzf-lua").blines, {desc = "FzF Lines"})
vim.keymap.set("n", "<leader>fg", require("fzf-lua").grep, {desc = "FzF Grep"})
vim.keymap.set("n", "<leader>fs", require("fzf-lua").treesitter, {desc = "FzF Symbols"})
vim.keymap.set("n", "<leader>fd", require("fzf-lua").diagnostics_workspace, {desc = "FzF Workspace Diagnostic"})
vim.keymap.set("n", "<leader>fr", require("fzf-lua").lsp_references, {desc = "FzF LSP References"})
