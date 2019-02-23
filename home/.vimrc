" -------------------------------------------------------------------
" General
" -------------------------------------------------------------------
set number
set relativenumber
set title
set incsearch
set nobackup
set noswapfile
set noignorecase
set t_Co=256
let g:netrew_home='~/.vim'
set encoding=utf-8


" Set working directory to the current file
" set autchdir
" autocmd BufEnter * lcd %:p:h

" -------------------------------------------------------------------
" Search highlighting
" -------------------------------------------------------------------
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" -------------------------------------------------------------------
" Code folding
" -------------------------------------------------------------------
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
"set foldmethod=syntax

" -------------------------------------------------------------------
" Indentating Source Code
" -------------------------------------------------------------------
setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2
filetype plugin indent on
set smartindent
" C/C++: Fix { } indent inside 'switch' statement
set cino=l1

" -------------------------------------------------------------------
" Swap buffers between windows
" -------------------------------------------------------------------
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>


" -------------------------------------------------------------------
" Vundle
" -------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

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

" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'ludovicchabant/vim-gutentags'

" Plugin 'skywind3000/gutentags_plus'
" Plugin 'skywind3000/gutentags_plus'

" Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdtree'

" Plugin 'taglist.vim'
Plugin 'taglist.vim'

" Plugin 'wesleyche/SrcExpl'
Plugin 'wesleyche/SrcExpl'

" Plugin 'wesleyche/Trinity'
Plugin 'wesleyche/Trinity'

" Plugin 'grep.vim'
Plugin 'grep.vim'

" Plugin 'jlanzarotta/bufexplorer'
Plugin 'jlanzarotta/bufexplorer'

" Plugin 'majutsushi/tagbar'
Plugin 'majutsushi/tagbar'

" Plugin 'flazz/vim-colorschemes'
Plugin 'flazz/vim-colorschemes'

" Plugin 'valloric/youcompleteme'
Plugin 'Valloric/YouCompleteMe'

" Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sensible'

" Plugin 'hari-rangarajan/CCTree'
Plugin 'hari-rangarajan/CCTree'

" Plugin 'Conque-GDB'
Plugin 'Conque-GDB'

" Plugin 'Conque-Shell'
Plugin 'Conque-Shell'

" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/lh-vim-lib'

" Plugin 'luchermitte/local_vimrc'
Plugin 'luchermitte/local_vimrc'

" Plugin 'dylanaraps/root.vim'
Plugin 'dylanaraps/root.vim'

" Plugin 'tmhedberg/simpylfold'
Plugin 'tmhedberg/simpylfold'

" Plugin 'drmikehenry/vim-fontsize'
Plugin 'drmikehenry/vim-fontsize'


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
" Vim Tab Navigation
" -------------------------------------------------------------------
nnoremap <silent> <A-Right> <c-w>l
nnoremap <silent> <A-Left> <c-w>h
nnoremap <silent> <A-Up> <c-w>k
nnoremap <silent> <A-Down> <c-w>j

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
" Ctags
" -------------------------------------------------------------------
"set tags=./tags;/
set tags=./tags,tags;$HOME
"function SetTags()
"    let curdir = getcwd()
"
"    while !filereadable("tags") && getcwd() != "/"
"        cd ..
"    endwhile
"
"    if filereadable("tags")
"        execute "set tags=" . getcwd() . "/tags"
"    endif
"
"    execute "cd " . curdir
"endfunction

"call SetTags()


" -------------------------------------------------------------------
" Cscope
" -------------------------------------------------------------------


" -------------------------------------------------------------------
" Tagbar
" -------------------------------------------------------------------
" Toggle open/close
 "nmap <F3> :TagbarToggle<CR>

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

"--------------------------------------------------------------------------------
" YouCompleteMe
"--------------------------------------------------------------------------------

highlight Pmenu ctermfg=white ctermbg=darkgray
highlight PmenuSel ctermfg=black  ctermbg=white
highlight clear SignColumn

"nnoremap <silent>  <C-]>  :YcmCompleter GoToImprecise<CR>
nnoremap <silent>  <C-]>  :YcmCompleter GoTo<CR>
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

let g:ycm_global_ycm_extra_conf = '~/.ycm/.ycm_extra_conf.py'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" Remove preview window
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" Remove diagnostics: 'left side symbols'
let g:ycm_enable_diagnostic_signs = 0

" Remove diagnostics: 'text highlighting'
let g:ycm_show_diagnostics_ui = 0

"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'

let g:ycm_confirm_extra_conf = 0
"let g:loaded_youcompleteme = 1

"--------------------------------------------------------------------------------
" ctags
"--------------------------------------------------------------------------------
"set tags=./tags,tags;

"--------------------------------------------------------------------------------
" Gutentags
"--------------------------------------------------------------------------------

"--------------------------------------------------------------------------------
" Cscope
"--------------------------------------------------------------------------------
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  " else add the database pointed to by environment variable
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
endfunction
au BufEnter /* call LoadCscope()

"if has('cscope')
"  set cscopetag cscopeverbose
"
"  if has('quickfix')
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"  endif
"
"  cnoreabbrev csa cs add
"  cnoreabbrev csf cs find
"  cnoreabbrev csk cs kill
"  cnoreabbrev csr cs reset
"  cnoreabbrev css cs show
"  cnoreabbrev csh cs help
"
"  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"endif


" -------------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------------
" Open by default
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle open/close
"nnoremap <F3> :NERDTreeToggle<Enter>
" Open nerdtree on the current file
"nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" Close nerdtree after opening a file
"let NERDTreeQuitOnOpen = 1
" Close automatically after close last tab
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Deleting entry  buffer of the deleted file
"let NERDTreeAutoDeleteBuffer = 1
" Make it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Start NERDTree
"autocmd VimEnter * NERDTree
" Jump to the main window.
"autocmd VimEnter * wincmd p

" -------------------------------------------------------------------
" ConqueTerm
" -------------------------------------------------------------------
:nnoremap <S-w> :q!<CR>
:nnoremap <S-t> :ConqueTermSplit bash<CR>

" -------------------------------------------------------------------
" ConqueTerm
" -------------------------------------------------------------------
let g:ConqueGdb_GdbExe = '/usr/bin/gdb-multiarch'

" -------------------------------------------------------------------
" Trinity
" -------------------------------------------------------------------
" Open and close all the three plugins on the same time
nmap <F5>   :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately
nmap <F6>   :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately
nmap <F7>  :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately
nmap <F8>  :TrinityToggleNERDTree<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | TrinityToggleAll | endif

:au FileType nerdtree :vert resize 40

" -------------------------------------------------------------------
" ctrlp
" -------------------------------------------------------------------
"let g:ctrlp_root_markers = ['.ctrlp']

" -------------------------------------------------------------------
" BufExplorer
" -------------------------------------------------------------------
nnoremap <F2> :BufExplorer<Enter>

" -------------------------------------------------------------------
" Root
" -------------------------------------------------------------------
" Add 'toplevel' to the default finding root directory pattern
let g:root#patterns += ['toplevel']
" Enables automatically changing to project root on file open
" let g:root#auto = 1

" -------------------------------------------------------------------
" Grep
" -------------------------------------------------------------------
nnoremap <silent> <F3> :RGrep <CR>
let Grep_Default_Filelist = '*.c *.cpp *.cc *.h *.hpp'
let Grep_Default_Options = '-ilnw'
let Grep_Skip_Files = '*.bak *~'
let Grep_Skip_Dirs = 'build cmake scripts topbuild'

function ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

" -------------------------------------------------------------------
" ShowSpaces
" -------------------------------------------------------------------
function TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F12>     :ShowSpaces 1<CR>
nnoremap <S-F12>   m`:TrimSpaces<CR>``
vnoremap <S-F12>   :TrimSpaces<CR>
