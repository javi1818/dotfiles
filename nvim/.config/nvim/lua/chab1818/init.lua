print("Init chab1818")

require("chab1818.lazyvim")



-- Key Maps
require("chab1818.remap")

-- Activate Theme
-- vim.cmd('colorscheme rose-pine')
vim.cmd('colorscheme sonokai')
-- vim.cmd.colorscheme "catppuccin-nvim"

-- Look preferences
vim.wo.number = true
vim.wo.cursorline = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
-- vim.wo.relativenumber = 1

vim.env.BAT_THEME = 'Dracula'


-- Check if 'rg' is installed
if vim.fn.executable("rg") == 1 then
    -- Set the grep program to ripgrep with flags for smart case and hidden files
    vim.opt.grepprg = "rg --vimgrep --smart-case --hidden"
    
    -- Tell Neovim how to parse the output (File:Line:Column:Message)
    vim.opt.grepformat = "%f:%l:%c:%m"
end

-- Required for treesitter highlighting
--vim.api.nvim_create_autocmd('FileType', {
--  pattern = { '<filetype>' },
--  callback = function() vim.treesitter.start() end,
--})
