return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      local keymap = vim.keymap.set

      keymap("n", "<2-LeftMouse>", api.node.open.edit, opts("Open"))
      keymap("n", "<CR>", api.node.open.edit, opts("Open"))
      keymap("n", "a", api.fs.create, opts("Create File Or Directory"))
      keymap("n", "c", api.fs.copy.node, opts("Copy"))
      keymap("n", "d", api.fs.trash, opts("Trash"))
      keymap("n", "e", api.fs.rename_basename, opts("Rename: Basename"))
      keymap("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
      keymap("n", "l", api.node.open.edit, opts("Open"))
      keymap("n", "p", api.fs.paste, opts("Paste"))
      keymap("n", "q", api.tree.close, opts("Close"))
      keymap("n", "r", api.fs.rename, opts("Rename"))
      keymap("n", "s", api.node.open.horizontal, opts("Open: Horizontal Split"))
      keymap("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
      keymap("n", "x", api.fs.cut, opts("Cut"))
      keymap("n", "y", api.fs.copy.filename, opts("Copy Name"))
      keymap("n", "Y", api.fs.copy.relative_path, opts("Copy Relative Path"))
    end

    require("nvim-tree").setup({
      disable_netrw = true,
      on_attach = my_on_attach,
      view = {
        side = "right",
        signcolumn = "yes",
      },
      renderer = {
        root_folder_label = false,
        indent_markers = {
          enable = true,
          icons = {
            corner = "│",
            edge = "│",
            item = "│",
            none = " ",
          },
        },
        icons = {
          webdev_colors = true,
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "󰏭",
              staged = "",
              unmerged = "",
              renamed = "󰜶",
              untracked = "",
              deleted = "",
              ignored = "",
            },
          },
        },
      },
      update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
      },
      diagnostics = {
        enable = true,
        show_on_dirs = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      filters = {
        enable = true,
        git_ignored = false,
        dotfiles = false,
        custom = { "^.git$" },
      },
    })

    -- Disable statuscolumn in nvim-tree
    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        local filetype = vim.bo.filetype
        if filetype == "NvimTree" then
          vim.wo.statuscolumn = ""
        end
      end,
    })
  end,
}
