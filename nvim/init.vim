"Sets leader to Space
let mapleader=" "

"Detect if on Mac or Windows
if has("win64") || has("win32") || has("win16")
  source $HOME/AppData/Local/nvim/configs/plug-manager.vim
  source $HOME/AppData/Local/nvim/configs/general.vim
  source $HOME/AppData/Local/nvim/configs/lsp-error-handler.lua
  source $HOME/AppData/Local/nvim/configs/style.vim

  source $HOME/AppData/Local/nvim/configs/plugins/nvim-cmp.vim
  source $HOME/AppData/Local/nvim/configs/plugins/visual-multi.vim
  source $HOME/AppData/Local/nvim/configs/plugins/nvim-tree.lua
  source $HOME/AppData/Local/nvim/configs/plugins/bufferline.lua
  source $HOME/AppData/Local/nvim/configs/plugins/treesitter.lua
  source $HOME/AppData/Local/nvim/configs/plugins/mason.lua
  source $HOME/AppData/Local/nvim/configs/plugins/lualine.lua
  source $HOME/AppData/Local/nvim/configs/plugins/telescope.lua
  source $HOME/AppData/Local/nvim/configs/plugins/trouble.lua

  source $HOME/AppData/Local/nvim/mappings/input.vim
  source $HOME/AppData/Local/nvim/mappings/normal.vim
  source $HOME/AppData/Local/nvim/mappings/visual.vim
else
  source $HOME/.config/nvim/plug-manager.vim
endif


autocmd CursorMoved * :lua echo_diagnostic()
