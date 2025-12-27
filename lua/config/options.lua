-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.smarttab = true
vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false

local homePath = os.getenv("HOME") or os.getenv("LOCALAPPDATA")
if homePath then
  vim.opt.undodir = homePath .. "/.vim/undodir"
  vim.opt.undofile = true
end

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50
