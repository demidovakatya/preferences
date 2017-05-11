syntax on
colorscheme industry 

filetype on

au BufNewFile,BufRead *.hlq set filetype=sql
au BufNewFile,BufRead *.q set filetype=sql
au BufNewFile,BufRead *.kt set filetype=kotlin

" Allow backspace in insert mode
set backspace=indent,eol,start
" buffers / files
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>q :bdelete<CR>
nnoremap <leader><leader> :w<CR>


" Show line numbers
" set nu
set nonumber 
set title
set shiftwidth=4
set smartindent
set smarttab

" speed up
set ttyfast
set ttyscroll=3

set autoread

" fix delete key in iTerm2
exe "set <Del>=\<Esc>[3;*~"

" filetype plugin indent on
execute pathogen#infect()

" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo
set noswapfile

" Centralize backups, swapfiles and undo history
set directory=~/.vim/swaps
set backupdir=~/.vim/backups

