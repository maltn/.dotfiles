nnoremap <Leader>v :e $MYVIMRC<cr>

nnoremap <Leader><BS> :NvimTreeToggle<CR>
nnoremap <Leader>n :NvimTreeFocus<CR>

"more comfortable navigation
noremap Ö 5l
noremap <S-l> 5k
noremap <S-k> 5j
noremap <S-j> 5h

" Rebinds movement keys for ergo reasons
noremap ö l
noremap l k
noremap k j
noremap j h

"Makes h and H add new lines
noremap h o<Esc>0D
noremap <S-h> O<Esc>0D

"Indention handling
nnoremap <Tab> >>
nnoremap <S-Tab> <<

nnoremap <Leader>p o<Esc>p
nnoremap <Leader>P O<Esc>p


"Vim commentary plugin with Ctrl + K toggles comments
nmap <C-k> gcc


" Change current tab
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><leader>$ <Cmd>BufferLineGoToBuffer -1<CR>

"Close current tab
nnoremap <leader>q :bd<CR>:bd<CR>

"Focus to right window
nnoremap <leader>m <C-w>w

"Leader + i opens info about what currently hovering over
nnoremap <silent><leader>i <Cmd>lua vim.lsp.buf.hover()<CR>

nnoremap <leader>ff <Cmd>Telescope find_files<CR>
nnoremap <leader>fs <Cmd>Telescope live_grep<CR>
nnoremap <leader>fc <Cmd>Telescope grep_string<CR>
nnoremap <leader>fb <Cmd>Telescope buffers<CR>
nnoremap <leader>fh <Cmd>Telescope help_tags<CR>

nnoremap <leader>ee <Cmd>TroubleToggle<CR>


