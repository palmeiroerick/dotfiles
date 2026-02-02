require("config.options")
require("config.lazy-init")
require("config.lsp")
require("config.keymaps")

-- local buf = vim.api.nvim_create_buf(false, true)
--
-- local width  = math.floor(vim.o.columns * 0.8)
-- local height = math.floor(vim.o.lines * 0.8)
-- local row    = math.floor((vim.o.lines - height) / 2)
-- local col    = math.floor((vim.o.columns - width) / 2)
--
-- vim.api.nvim_open_win(buf, true, {
--   relative = "editor",
--   width = width,
--   height = height,
--   row = row,
--   col = col,
--   style = "minimal",
--   border = "single",
-- })
--
-- vim.fn.termopen(vim.o.shell)
-- vim.cmd("startinsert")
