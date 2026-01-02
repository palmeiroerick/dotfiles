local M = {}

function M.myFoldColumn()
  local lnum = vim.v.lnum
  local level = vim.fn.foldlevel(lnum)
  local closed = vim.fn.foldclosed(lnum)

  if level == 0 then
    return " "
  end

  if closed == lnum then
    return ""
  elseif closed == -1 and vim.fn.foldlevel(lnum - 1) < level then
    return ""
  else
    return "│"
  end
end

return M
