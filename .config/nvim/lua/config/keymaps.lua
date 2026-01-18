local keymap = vim.keymap.set

-- Clear highlights on search
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Disable arrows
keymap({ "n", "v", "i", "c" }, "<Up>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Down>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Left>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Right>", "<Nop>")

-- Identation
keymap("n", "<Tab>", ">>")
keymap("n", "<S-Tab>", "<<")
keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

-- Move to window
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Buffers
keymap("n", "<C-q>", "<cmd>bd!<cr>", { desc = "Bufffer Delete" })
keymap("n", "<S-h>", "<cmd>bp<cr>", { desc = "Prev buffer" })
keymap("n", "<S-l>", "<cmd>bn<cr>", { desc = "Next buffer" })

-- NvimTree
keymap("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", { desc = "File Explorer" })

-- Telescope
keymap("n", "<leader><Space>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
keymap("n", "<leader>s", "<cmd>SessionSearch<cr>", { desc = "Find Files" })

keymap("n", "<leader>hi", "<cmd>TSHighlightCapturesUnderCursor<CR>",
  { desc = "Show Treesitter highlight capture under cursor" })
keymap("n", "<leader>hp", "<cmd>TSPlaygroundToggle<CR>", { desc = "Toggle Tresitter Playground" })

-- keymap("n", "<C-c>", "ciw{{c1::<C-R>\"}}<Esc>")
-- keymap("v", "<C-c>", "c{{c1::<C-R>\"}}<Esc>")
