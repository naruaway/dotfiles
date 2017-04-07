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
set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/.bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif
NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'blueyed/smarty.vim'

NeoBundle 'lilydjwg/python-syntax'
let python_highlight_all = 1

NeoBundle 'raichoo/purescript-vim'
NeoBundle 'anntzer/vim-cython'
NeoBundle 'othree/es.next.syntax.vim'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'elmcast/elm-vim'

NeoBundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'Quramy/tsuquyomi'
let g:tsuquyomi_completion_detail = 1
autocmd FileType typescript setlocal completeopt+=preview,menu

NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'JuliaLang/julia-vim'
NeoBundle 'sjl/gundo.vim'
let g:gundo_prefer_python3 = 1


" this may make vim slow
autocmd BufEnter * :syntax sync fromstart

NeoBundle 'luochen1990/rainbow'

let g:rainbow_active = 1

NeoBundle 'kana/vim-operator-user'
NeoBundle 'rhysd/vim-operator-surround'
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sc <Plug>(operator-surround-replace)


NeoBundleLazy 'jeaye/color_coded', {
  \ 'build': {
  \   'unix': 'cmake . && make && make install',
  \ },
  \ 'autoload' : { 'filetypes' : ['c', 'cpp', 'objc', 'objcpp'] },
  \ 'build_commands' : ['cmake', 'make']
\}
NeoBundleLazy 'rking/ag.vim'

NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'wavded/vim-stylus'
"NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'kchmck/vim-coffee-script'
"NeoBundle 'Shougo/rsense'
"NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'nemo157/glsl.vim'
"NeoBundle 'Align'
"let g:Align_xstrlen=3
"NeoBundle 'h1mesuke/vim-alignta'
"NeoBundle 'rizzatti/funcoo.vim'
"NeoBundle 'rizzatti/dash.vim'
"NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
"NeoBundle 'Shougo/vinarise'
"NeoBundle 'argtextobj.vim'
"NeoBundle 'kana/vim-textobj-user'
"NeoBundle 'h1mesuke/textobj-wiw'
"NeoBundle 'Shougo/vimshell'
"NeoBundle 'tpope/vim-afterimage'
"NeoBundle 'tpope/vim-vividchalk'
"NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'rizzatti/funcoo.vim'
"NeoBundle 'rizzatti/dash.vim'
nmap <silent> <leader>d <Plug>DashGlobalSearch
"NeoBundle 'ujihisa/shadow.vim'
"NeoBundle 'pydave/AsyncCommand'
"NeoBundle 'Shougo/vinarise'
"NeoBundle 'thinca/vim-qfreplace.git'
"NeoBundle 'kien/tabman.vim'
NeoBundle 'mattn/emmet-vim'
"let g:user_zen_settings = {
"      \  'indentation' : '  '
"      \}
"NeoBundle 'wincent/Command-T'
"NeoBundle 'css_color.vim'
source $VIMRUNTIME/macros/matchit.vim
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'scrooloose/nerdcommenter'
" 
"NeoBundle 'lepture/vim-css'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Lokaltog/vim-powerline'
"let g:Powerline_stl_path_style = 'relative'
"NeoBundle 'Lokaltog/vim-easymotion'
"let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
"let g:EasyMotion_leader_key=","
"NeoBundle 'thinca/vim-ref'
"NeoBundle 'kana/vim-textobj-line'
"NeoBundle 'scratch.vim'
"NeoBundle 'Rip-Rip/clang_complete'

"nnoremap <DOWN> !tmux send-keys -t 0 'xcodebuild -configuration Debug -sdk iphonesimulator5.1 && ios-sim launch build/Debug-iphonesimulator/*.app' Enter<CR>
"set completeopt=menuone
inoremap <C-C> <C-X><C-U>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"au VimEnter * RainbowParenthesesToggle
let g:ctrlp_arg_map = 1
let g:ctrlp_working_path_mode = 2
"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript']
let g:ctrlp_clear_cache_on_exit = 1
filetype plugin on
filetype indent on
"autocmd BufRead * NeoComplCacheEnable
set mouse=a
set undolevels=100
set ttymouse=xterm2


let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp'
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
