set nocompatible              " be iMproved, required
filetype off                  " required

" -------------------------------------------------------------------
" Indentating Source Code
" -------------------------------------------------------------------
setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2
filetype plugin indent on
set smartindent

" -------------------------------------------------------------------
" Vundle
" -------------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"  Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"   Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugin 'scrooloose/nerdtree' - install Trinity instead NERDtree
" Plugin 'scrooloose/nerdtree'

" Plugin 'dkprice/vim-easygrep'
Plugin 'dkprice/vim-easygrep'

" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'ludovicchabant/vim-gutentags'

" Plugin 'jlanzarotta/bufexplorer'
Plugin 'jlanzarotta/bufexplorer'

" Plugin 'majutsushi/tagbar'
Plugin 'majutsushi/tagbar'

" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nathanaelkane/vim-indent-guides'

" Plugin 'yggdroot/indentline'
Plugin 'yggdroot/indentline'

" Plugin 'flazz/vim-colorschemes'
Plugin 'flazz/vim-colorschemes'

" Plugin 'valloric/youcompleteme'
"Plugin 'valloric/youcompleteme'

" Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sensible'


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
"


" -------------------------------------------------------------------
" NERDTree  
" -------------------------------------------------------------------
" Open by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle open/close
nnoremap <F8> :NERDTreeToggle<Enter>
" Open nerdtree on the current file
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" Close nerdtree after opening a file
let NERDTreeQuitOnOpen = 1
" Close automatically after close last tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Deleting entry  buffer of the deleted file
let NERDTreeAutoDeleteBuffer = 1
" Make it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Start NERDTree
"autocmd VimEnter * NERDTree
" Jump to the main window.
"autocmd VimEnter * wincmd p


" -------------------------------------------------------------------
" Vim Tab Navigation
" -------------------------------------------------------------------
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" To move between buffers and maximise the selected one
" C-W = to resizes all windows to equal size
" Horizontal
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
" Vertical
map <C-H> <C-W>h<C-W>\|
map <C-L> <C-W>l<C-W>\|
" This sets the minimum window height to N
set wmh=0

" -------------------------------------------------------------------
" Tagbar
" -------------------------------------------------------------------
" Toggle open/close
nmap <F9> :TagbarToggle<CR>

" -------------------------------------------------------------------
" Indent Guides
" -------------------------------------------------------------------
" Show indent guides by default 
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
set ts=2 sw=2 et

let g:indentLine_enabled = 0
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239

"
"
" let gutentags_project_root = 1
