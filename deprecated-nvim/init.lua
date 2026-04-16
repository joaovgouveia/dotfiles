-- General
vim.g.mapleader = " "

-- Vim Stuff
require("config.vim-stuff")

-- Lazy
require("config.lazy")
require("lazy").setup("config.plugins")
