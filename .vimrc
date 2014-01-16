"""""""""""""" Basic Settings
set noexpandtab
set autoindent 
set tabstop=2 shiftwidth=2 expandtab
set hlsearch
set number
retab

colo jellybeans

" Allow a transparent background
hi Normal ctermbg=NONE

" Easier to reach in latin-american keyboards
let mapleader="ñ"

""""""""""""""" Leader mappings
" toggle comment
map <Leader>c gcc

" toggle hlsearch
map <Leader>h :set hlsearch! <cr>

" Relative number
map <Leader>n :call ToggleTypeOfNumbering() <cr>

" Insert <%= >
map <Leader>= i<C-g>s=

" Faster than escape for insert mode
inoremap jj <Esc>

" Allow 256 colors
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

function! ToggleTypeOfNumbering()
  if (&number == 1)
    set relativenumber
  else
    set number
  endif
endfunction




