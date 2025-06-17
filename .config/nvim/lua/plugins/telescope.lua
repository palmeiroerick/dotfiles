return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim", 'nvim-telescope/telescope-ui-select.nvim' },
  config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            prompt_position = "top",
            preview_cutoff = 40,
            height = 0.5,
            width = 0.5,
          },
        },
        sorting_strategy = "ascending",
        prompt_prefix = " ",
        selection_caret = "  ",
        mappings = {
          i = {
            ["<ESC>"] = actions.close,
          },
        },
      },
    })
  end,
}
