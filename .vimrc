"""""""""""""" Basic Settings
set noexpandtab
set autoindent 
set tabstop=2 shiftwidth=2 expandtab
set hlsearch
set number
set showcmd
set autoread
retab

filetype plugin on
syntax on

colo jellybeans

" Allow a transparent background
hi Normal ctermbg=NONE

" Correct Typos
command Wq wq
command WQ wq
command W w
command Q q

" Easier to reach in latin-american keyboards
let mapleader="ñ"

""""""""""""""" Leader mappings
" toggle comment
map <Leader>c gcc


" Insert empty line and stay in the same line 
map <Leader>O <S-O><Esc>

" Insert empty line and go one line down
map <Leader>o o<Esc>

" toggle hlsearch
map <Leader>h :set hlsearch! <cr>

" Relative number
map <Leader>n :call ToggleTypeOfNumbering() <cr>

" Reload current file
map <Leader>r :edit <cr>

" Insert ruby erb tags
inoremap <Leader>= <%=  %><Esc>bhi
inoremap <Leader>- <%  %><Esc>bhi

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




