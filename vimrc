set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'majutsushi/tagbar'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'bling/vim-airline'
Plugin 'The-NERD-Commenter'
Plugin 'Tabular'
Plugin 'Valloric/YouCompleteMe'
Plugin 'The-NERD-tree'
Plugin 'FencView.vim'
Plugin 'EasyMotion'
Plugin '_jsbeautify'
Plugin 'ShowTrailingWhitespace'
Plugin 'ZenCoding.vim'
Plugin 'AutoClose'
Plugin 'ctrlp.vim'

call vundle#end()

"enable syntax highlighting
syntax enable

"show line numbers
set number

"set tabs to have 4 spaces
set ts=4

"indent when moving to the next line while writing code
set autoindent

"expand tabs into spaces
set expandtab

"when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

"show a visual line under the cursor's current line
set cursorline

"show the matching part of the pair for [] {} and ()
set showmatch

"show command in bottom bar
set showcmd

"load filetype-specific indent files
filetype indent on

"visual autocomplete for command menu
set wildmenu

"redraw only when we need to
set lazyredraw

"searching
" search as characters are entered
set incsearch
"highlight matches
set hlsearch

"enable all python syntax highlighting features
let python_highlight_all=1

"enable folding
set foldenable

"open most folds by default
set foldlevelstart=10

"10 nested fold max
set foldnestmax=10

"space open/closes folds
nnoremap <space> za

"fold based on indent level
set foldmethod=indent

"leader is comma
let mapleader=","

"text after a double-quote is a comment
set ruler

"tagbar settings
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
map <F3> :Tagbar<CR>

"minibuffer setting
let BufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0
map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>

"vim-airline
set laststatus=2

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

