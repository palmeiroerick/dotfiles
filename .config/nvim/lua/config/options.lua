_G.myFoldColumn = require('utils.foldcolumn').myFoldColumn

local options = {
  backup = false,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  smartindent = true,
  softtabstop = 2,
  tabstop = 2,
  cursorline = true,
  mouse = "a",
  number = true,
  relativenumber = true,
  scrolloff = 8,
  sidescrolloff = 16,
  showmode = false,
  termguicolors = true,
  wrap = false,
  fillchars = { eob = " ", },
  splitbelow = true,
  splitright = true,
  swapfile = false,
  clipboard = "unnamedplus",
  signcolumn = "yes",
  ignorecase = true,
  updatetime = 250,
  smartcase = true,
  statuscolumn = " %l %s%{v:lua.myFoldColumn()} ",
  cmdheight = 0,
  timeout = true,
  timeoutlen = 300,
  whichwrap = "h,l",
  list = true,
  listchars = { trail = '·', },
  inccommand = 'nosplit',
  foldenable = true,
  foldcolumn = '0',
  foldlevel = 99,
  foldlevelstart = 99,
  sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal",
}

vim.g.have_nerd_font = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.markdown_recommended_style = 0
vim.g.loaded_matchparen = 1
vim.g.mapleader = " "

for key, value in pairs(options) do
  vim.opt[key] = value
end
