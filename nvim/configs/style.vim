"Enables more terminal colors
set termguicolors 

"Setup Ayu colorscheme
colorscheme Ayu
let ayucolor="dark"
set background=dark
syntax enable

"Removes color on these specific options
hi Normal guibg=NONE ctermbg=NONE
hi LineNr ctermfg=NONE ctermbg=NONE
hi clear SignColumn
"Removes the white line separator between windows
set fillchars=vert:\ 
hi! VertSplit guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE

"Changes the statusline color
hi StatusLine ctermbg=NONE ctermfg=NONE

"Enabled numbered lines"
:set number relativenumber
:set nu rnu

"Disables signcolumn which is a thing left of the numbers so instead of
"symbols showing there they are shown where the number usually is"
set signcolumn=number

"Idk
set noshowmatch
