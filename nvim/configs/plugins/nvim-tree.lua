vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  open_on_setup_file = true,
  open_on_tab = true,
  open_on_setup = true,
  renderer = {
    -- highlight_opened_files = "all",
    highlight_git = true,
    root_folder_modifier = ':t',
    icons = {
      glyphs = {
        default = '',
        symlink = '',
        bookmark = '◉',
        git = {
          unstaged = '',
          staged = '',
          unmerged = '',
          renamed = '',
          deleted = '',
          untracked = '',
          ignored = '',
        },
        folder = {
          default = '',
          open = '',
          symlink = '',
        },
      },
      show = {
        git = false,
        file = true,
        folder = true,
        folder_arrow = false,
      },
    },
    indent_markers = {
      enable = true,
    },
  },
})
