-- local lsp = require('lsp-zero').preset({})

--lsp.on_attach(function(client, bufnr)
--  lsp.default_keymaps({buffer = bufnr})
--end)

-- (Optional) Configure lua language server for neovim
-- vim.lsp.config("lua_ls", (lsp.nvim_lua_ls()))

vim.lsp.codelens.enable(true)
vim.lsp.config("gopls", {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
	shadow = false,
      },
      staticcheck = true,
      gofumpt = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
      usePlaceholders = true,
    },
  },
})

-- lsp.setup()
