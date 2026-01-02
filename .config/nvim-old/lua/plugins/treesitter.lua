return {
  {
    "nvim-treesitter/playground",
    cmd = { "TSPlaygroundToggle", "TSHighlightCapturesUnderCursor" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
      require("nvim-treesitter.configs").setup({
        playground = {
          enable = true,
          updatetime = 25,
          persist_queries = false,
        },
        ensure_installed = {
          "bash",
          "c",
          "css",
          "diff",
          "fish",
          "git_config",
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "python",
          "scheme",
          "scss",
          "tmux",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
        },

        -- auto_install = true,

        highlight = {
          enable = true,
          use_languagetree = true,
        },

        indent = {
          enable = true,
        },
      })
    end,
  }
}
