-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8,utf-16,sjis,"
vim.opt.list = true
vim.opt.listchars = {
  space = "-",
  tab = "> ",
}

vim.opt.cursorline = true
vim.opt.number = true

vim.opt.fixeol = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = true
