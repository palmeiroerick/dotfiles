require("config.options")
require("config.lazy-init")
require("config.keymaps")

--TODO: config diagnostics
-- vim.diagnostic.config({
--   signs = {
--     text = {
--       [vim.diagnostic.severity.ERROR] = '',
--       [vim.diagnostic.severity.WARN] = '',
--       [vim.diagnostic.severity.INFO] = '',
--       [vim.diagnostic.severity.HINT] = '󰌵',
--     },
--   }
-- })

vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
    vim.opt.statuscolumn = " "
  end,
})
--
-- vim.keymap.set("n", "<space>t", function()
--   vim.cmd.vnew()
--   vim.cmd.term()
--   vim.cmd.wincmd("J")
--   vim.api.nvim_win_set_height(0, 10)
-- end)

-- vim.keymap.set("t", "<Esc><Esc>", "<c-\\><c-n>")
