local opt = vim.opt
local indent = 4

vim.g.mapleader = " "
vim.g.maplocalleader = " "

opt.number = true
opt.relativenumber = true

opt.colorcolumn = "79"

opt.wrap = false
opt.expandtab = true
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent

opt.clipboard = "unnamedplus"
opt.swapfile = false

opt.scrolloff = 18

opt.splitright = true

opt.ignorecase = true
opt.smartcase = true

opt.syntax = "enable"
opt.termguicolors = true

opt.showcmd = true
opt.autoread = true

