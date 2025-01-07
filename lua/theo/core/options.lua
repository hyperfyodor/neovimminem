vim.cmd("let g:netrw_liststyle = 3")

vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false
opt.ignorecase = true

opt.cursorline = true 

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
