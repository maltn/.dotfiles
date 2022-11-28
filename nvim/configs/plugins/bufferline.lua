local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup {
  options = {
    diagnostics = "nvim_lsp",
    mode = "tabs",
    separator = false,
    separator_style = {"", ""},
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    indicator = {
      icon = "",
      style = "none"
    }
  },
  highlights = {
    separator = {
      fg = "#ff0000",
      bg = "#ff0000"
    },
    separator_selected = {
      fg = "#ff0000"
    }
  }
}
