" Manually install the vundle plugin before using this

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'w0rp/ale'
Plugin 'dikiaap/minimalist'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'tribela/vim-transparent'

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

" Custom Stuff
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
colorscheme minimalist

let NERDTreeHighlightCursorline = 0
set mouse=a

nmap <C-A> :NERDTreeToggle<CR>
nmap <C-K> :TagbarToggle<CR>
nnoremap <silent> <C-p> :GFiles<CR>
