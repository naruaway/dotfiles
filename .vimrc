" keep vim silent
set noerrorbells
set t_vb=
set visualbell


set complete+=k
set path+=/usr/local/include
set clipboard=unnamed
"テキストベースのスクロールバーを実装
"set numberの欄にfoldcolumnも合わせて表示できるようにする
"tabbarにカレントディレクトリを
"statuslineにスクロールバーを
"Color Picker自作する

"xterm256のカラーパレット(16-255)を定義するエスケープシーケンスは \e]4;20;rgb:ff/ff/ff\a
"iTerm2専用のエスケープシーケンスは
"Change the color palette
"^[]Pnrrggbb^[\
"Replace "n" with:
"0-f (hex) = ansi color
"g = foreground
"h = background
"i = bold color
"j = selection color
"k = selected text color
"l = cursor
"m = cursor text
"rr, gg, bb are 2-digit hex value (for example, "ff").
"Example in bash that changes the foreground color blue:
"echo -e "\033]Pg4040ff\033\\"
"
"
"

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')


  " Add or remove your plugins here:
  call dein#add('lilydjwg/python-syntax')
  let python_highlight_all = 1

  call dein#add('sjl/gundo.vim')
  let g:gundo_prefer_python3 = 1

  call dein#add('ctrlpvim/ctrlp.vim')
  let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp'
  let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
  let g:ctrlp_arg_map = 1
  let g:ctrlp_working_path_mode = 2
  "let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript']
  let g:ctrlp_clear_cache_on_exit = 1


  call dein#add('mattn/emmet-vim')


  call dein#add('vim-scripts/vim-soy')


  call dein#add('tpope/vim-fugitive')


  call dein#add('artur-shaik/vim-javacomplete2')
  autocmd FileType java setlocal omnifunc=javacomplete#Complete


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------



filetype plugin on
filetype indent on
set undolevels=100


set backspace=start,indent,eol
let &wildignore=expand('~/.Trash/').'*,'
let &wildignore.=expand('~/Library/').'*,'
let &wildignore.=expand('~/Movies/').'*,'
let &wildignore.=expand('~/Music/').'*,'
let &wildignore.=expand('~/Pictures/').'*,'
let &wildignore.='*/.git/*,*/.hg/*,*/.svn/*,'
let &wildignore.='*/.gitignore,*/.DS_Store'
set ignorecase
set smartcase
set hlsearch
set showtabline=2
set switchbuf=usetab,newtab
set encoding=utf-8
set virtualedit=all
set laststatus=1
set showtabline=1
set autoindent
set wildmenu
set autoread
set swapfile
set directory=~/.vimswap
set nobackup
set undodir=~/.vimundo
set undofile
set showcmd
set background=dark
"let g:solarized_termtrans=1
"colorscheme solarized
colorscheme molokai
set number
set nolazyredraw
set shiftwidth=2
set tabstop=8
set softtabstop=8
set expandtab
set list
set listchars=tab:»_,trail:-,extends:»,precedes:«,nbsp:%
syntax on
noremap <UP> :wa<CR>:make<CR>
au BufWinEnter * call matchadd("Error", '　')
au WinEnter * call matchadd("Error", '　')
noremap <ScrollWheelUp> <C-Y>
noremap <ScrollWheelDown> <C-E>
"inoremap <ScrollWheelUp> <C-O><C-U>
"inoremap <ScrollWheelDown> <C-O><C-D>
nnoremap <silent> <esc><esc> :nohlsearch<return>
inoremap <silent> <esc> <esc>:redraw<return>

nnoremap Y y$
"inoremap <silent> <C-P> <Up>
"inoremap <silent> <C-N> <Down>
inoremap <silent> <C-B> <Left>
inoremap <silent> <C-F> <Right>
inoremap <silent> <C-A> <Home>
inoremap <silent> <C-E> <End>
inoremap <silent> <C-D> <Del>
inoremap <silent> <C-K> <C-O>D
inoremap <silent> <C-Y> <C-R>"

nnoremap <silent> <C-N> :<C-U>tabnew<CR>:<C-U>CtrlP<CR>
nnoremap <silent> <C-P> :<C-U>CtrlP<CR>
