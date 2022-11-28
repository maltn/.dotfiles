local lualine_gruvbox = require("lualine.themes.gruvbox_dark")

lualine_gruvbox.insert.a.bg = "#9aaa46"

lualine_gruvbox.inactive.c.bg = nil
lualine_gruvbox.insert.c.bg = nil
lualine_gruvbox.visual.c.bg = nil
lualine_gruvbox.replace.c.bg = nil
lualine_gruvbox.normal.c.bg = nil
lualine_gruvbox.command.c.bg = nil

lualine_gruvbox.inactive.b.bg = nil
lualine_gruvbox.insert.b.bg = nil
lualine_gruvbox.visual.b.bg = nil
lualine_gruvbox.replace.b.bg = nil
lualine_gruvbox.normal.b.bg = nil
lualine_gruvbox.command.b.bg = nil

require('lualine').setup({
  options = {
    icons_enabled = true,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    theme = lualine_gruvbox
  }
})
