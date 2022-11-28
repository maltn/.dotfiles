let path = '~/AppData/Local/nvim/plugged'
if has("win64") || has("win32") || has("win16")
	let path = '~/AppData/Local/nvim/plugged'
else
	let path = '~/.config/nvim/plugged'
endif


call plug#begin(path)
  "Enables VSCode like line comments with CTRL+K"
  Plug 'tpope/vim-commentary'

  "Auto pairing for () {} etc"
  Plug 'jiangmiao/auto-pairs'  

  "Theme"
  Plug 'ayu-theme/ayu-vim'


  " Stop delete command from copying
  " Plug 'svermeulen/vim-cutlass'

  "Code completion"
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip' 
  Plug 'rust-analyzer/rust-analyzer'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'onsails/lspkind.nvim'

  "Vertical lines to mark indentions
  Plug 'lukas-reineke/indent-blankline.nvim'

  "File tree
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-tree/nvim-tree.lua'

  "Bufferline 
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

  "Support advanced syntaxing and other external plugin features
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  "Color matching for brackets builts upon the treesitter plugin
  Plug 'p00f/nvim-ts-rainbow'

  "Statusline
  Plug 'nvim-lualine/lualine.nvim'

  "Multi cursors
  Plug 'mg979/vim-visual-multi'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

  "Adds a place to check all errors and warnigns with :TroubleToggle
  Plug 'folke/trouble.nvim'
call plug#end()




