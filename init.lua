local options = {
  backup = false,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  smartindent = true,
  softtabstop = 2,
  tabstop = 2,
  cursorline = false,
  mouse = "",
  number = true,
  relativenumber = true,
  scrolloff = 8,
  sidescrolloff = 16,
  showmode = false,
  termguicolors = true,
  wrap = false,
  fillchars = {
    eob = " ",
  },
  splitbelow = true,
  splitright = true,
  swapfile = false,
  clipboard = "unnamedplus",
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

local keymap = vim.keymap.set

keymap("n", "<Tab>", ">>")
keymap("n", "<S-Tab>", "<<")
keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

keymap("n", "<A-j>", ":m .+1<CR>==")
keymap("n", "<A-k>", ":m .-2<CR>==")
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")

keymap("n", "<S-l>", ":bn<cr>")
keymap("n", "<S-h>", ":bp<cr>")

keymap("n", "<C-q>", ":qa!<cr>")
keymap("n", "<C-w>", ":wa!<cr>")

keymap({ "n", "v", "i", "c" }, "<Up>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Down>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Left>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Right>", "<Nop>")
