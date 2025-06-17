return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        right_mouse_command = nil,
        indicator = {
          style = "none",
        },
        buffer_close_icon = "",
        modified_icon = "+",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        tab_size = 14,
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        show_duplicate_prefix = false,
        persist_buffer_sort = true,
      },
      highlights = {
        buffer_selected = {
          bold = false,
          italic = false,
        },
        fill = {
          bg = "#15161e",
        },
      },
    })
  end,
}
