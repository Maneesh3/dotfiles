-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.winbar = "%=%m %{expand('%:~:.')}"
--vim.opt.winbar = "%=%m %f"
vim.opt.showtabline = 2
-- Winbar text colour
vim.api.nvim_set_hl(0, "WinBar", { bg = "#1e1e1e", fg = "#ffffff", bold = true }) -- Active window
vim.api.nvim_set_hl(0, "WinBarNC", { bg = "#3a3a3a", fg = "#aaaaaa", bold = false }) -- Inactive windows
