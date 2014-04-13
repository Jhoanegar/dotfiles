"""""""""""""" Basic Settings
set noexpandtab
set autoindent 
set tabstop=2 shiftwidth=2 expandtab
set hlsearch
set number
set showcmd
set autoread
set scrolloff=10
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

" Go to the next line no matter what
inoremap <S-j><S-j> <Esc>o

" Faster than escape for insert mode
inoremap jj <Esc>

" Expand emmet abbreviation
imap hh <C-y>,

" Allow 256 colors
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

function! ToggleTypeOfNumbering()
  if (&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunction




