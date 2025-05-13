print("Init chab1818")
-- require("chab1818.packer")
require("chab1818.lazyvim")



-- Key Maps
require("chab1818.remap")

-- Activate Theme
-- vim.cmd('colorscheme rose-pine')
vim.cmd('colorscheme sonokai')

-- Look preferences
vim.wo.number = true
vim.wo.cursorline = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
-- vim.wo.relativenumber = 1
