call plug#begin('~/.local/share/nvim/plugged')

"Plug 'ensime/ensime-vim', { 'for': 'scala' }
"Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
"Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'artur-shaik/vim-javacomplete2'

Plug 'noahfrederick/vim-noctu'

call plug#end()

colorscheme noctu

autocmd FileType java setlocal omnifunc=javacomplete#Complete
"autocmd BufWritePost *.scala silent :EnTypeCheck
"nnoremap <localleader>t :EnTypeCheck<CR>

" keep vim silent
set noerrorbells
set t_vb=
set visualbell


set complete+=k
set path+=/usr/local/include
set clipboard=unnamed


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
set number
set nolazyredraw
set shiftwidth=2
set tabstop=8
set softtabstop=8
set expandtab
set list
set listchars=tab:»_,trail:-,extends:»,precedes:«,nbsp:%
syntax on

au BufWinEnter * call matchadd("Error", '　')
au WinEnter * call matchadd("Error", '　')

nnoremap <silent> <esc><esc> :nohlsearch<return>
inoremap <silent> <esc> <esc>:redraw<return>

nnoremap Y y$

nnoremap <silent> <C-N> :<C-U>tabnew<CR>:<C-U>CtrlP<CR>
nnoremap <silent> <C-P> :<C-U>CtrlP<CR>

"autocmd BufWritePost *.scala silent :EnTypeCheck
"nnoremap <localleader>t :EnTypeCheck<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Required:
filetype plugin indent on
syntax enable

" Java
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java setlocal shiftwidth=4


" always show gutter
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
