-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.mouse = "a"

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "utf-8,utf-16,sjis,"
opt.list = true
opt.listchars = {
  space = "-",
  tab = "> "

}
opt.clipboard = "unnamed"
-- Show line nubmber
opt.number = true
opt.relativenumber = true

-- Tab and indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Visual
opt.cursorline = true
opt.showmode = true
opt.showcmd = true

-- Cmd
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 4

-- Else
opt.autoread = true
opt.fixeol = true

opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5
opt.background = "dark"

vim.g.lazyvim_mini_snippets_in_completion = true
vim.g.lazyvim_prettier_needs_config = false
