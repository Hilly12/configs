" Manually install the vundle plugin before using
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'w0rp/ale'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'tribela/vim-transparent'
Plugin 'sainnhe/sonokai'
Plugin 'cespare/vim-toml'
Plugin 'preservim/nerdcommenter'
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Important!!
if has('termguicolors')
  set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai


syntax on
filetype on
set backspace=indent,eol,start

" Custom Stuff
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

let NERDTreeHighlightCursorline = 0
set mouse=a

nmap <C-A> :NERDTreeToggle<CR>
nmap <C-K> :TagbarTogcle<CR>
nnoremap <silent> <C-P> :GFiles<CR>

nmap cc <plug>NERDCommenterInvert
xmap cc <plug>NERDCommenterInvert

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

