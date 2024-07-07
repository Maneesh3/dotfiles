-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.relativenumber = false
-- vim.cmd([[
-- map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
-- map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
-- ]])
