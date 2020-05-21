scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8 " set file encoding when it`s open
syntax on
set nocompatible
filetype plugin on
set path+=**

runtime .plugins
runtime .snippetlist

set backspace=indent,eol,start
set linebreak
set mouse=
set showcmd
set ruler
set showmatch
set showtabline=2
set confirm
set hidden
set number
set list
set cursorline
set pastetoggle=
set autoread
set splitbelow
set splitright
set listchars=eol:¬,tab:\•\ 
set showbreak=͢
set tabstop=4 
set shiftwidth=4 
set smarttab 
set smartindent
set noexpandtab
set noswapfile
set nobackup
set nofoldenable
set completeopt=longest,menuone
set wrap
set wrapscan
set imsearch=0
set history=128
set undolevels=1000
set updatetime =100
set hlsearch
set incsearch
set smartcase
set ignorecase
set infercase
set laststatus=2
set title
set wildmenu
" set autochdir
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername} titlelen=0
set titleold=
set statusline+=%F
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

if &diff
	highlight DiffAdd cterm=none ctermfg=green ctermbg=black
	highlight DiffDelete cterm=none ctermfg=darkred ctermbg=black
	highlight DiffChange cterm=none ctermfg=none ctermbg=black
	highlight DiffText cterm=none ctermfg=black ctermbg=darkyellow
endif

hi NonText ctermfg=blue
hi SpecialKey ctermfg=blue
hi LineNr ctermfg=red

" ####### MAPS
map <S-TAB> :bn<CR>
nmap <S-TAB> :bn<CR>
imap <S-TAB> <Esc>:bn<CR>i
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>
nnoremap <C-J> ciW<CR><Esc>:if match( @", "^\\s*$") < 0<Bar>exec "norm P-$diw+"<Bar>endif<CR>

command! MakeTags !ctags -R .
