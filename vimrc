set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" themes and nice info in the bottom bar
" https://github.com/vim-airline/vim-airline
" https://github.com/vim-airline/vim-airline-themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" git command integration
" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" python auto-completion
" https://github.com/davidhalter/jedi-vim
Plugin 'davidhalter/jedi-vim'

" nice file tree (off by default)
" https://github.com/preservim/nerdtree
Plugin 'scrooloose/nerdtree'

" sensible defaults
" https://github.com/tpope/vim-sensible
Plugin 'tpope/vim-sensible'

" multi-colored parens for easier matching
" https://github.com/luochen1990/rainbow
Plugin 'luochen1990/rainbow'

" display thin vertical lines showing tab indents
" https://github.com/Yggdroot/indentLine
Plugin 'Yggdroot/indentLine'

" some fancy indenting for indented langs like python
" https://github.com/tweekmonster/braceless.vim
" add the following at the end of this file:
" autocmd FileType python BracelessEnable +indent
"Plugin 'tweekmonster/braceless.vim'

" fuzzy matching on command line args, requires fzf
" https://github.com/junegunn/fzf
" brew install fzf
Plugin 'junegunn/fzf'

" https://github.com/hashivim/vim-terraform
Plugin 'hashivim/vim-terraform'

" pretty icons
" https://github.com/ryanoasis/vim-devicons
Plugin 'ryanoasis/vim-devicons'

" auto-add pairs for braces like [], {}, (), etc
" https://github.com/jiangmiao/auto-pairs
Plugin 'jiangmiao/auto-pairs'

" Syntax checking and linting
" https://github.com/vim-syntastic/syntastic
Plugin 'vim-syntastic/syntastic'

" surrounding items (HTML, XML, etc)
" https://github.com/tpope/vim-surround
"Plugin 'tpope/vim-surround'

" Jinja (templating lang) support
" https://github.com/Glench/Vim-Jinja2-Syntax
Plugin 'Glench/Vim-Jinja2-Syntax'

" YAML linting
" https://github.com/adrienverge/yamllint
Plugin 'adrienverge/yamllint'

" Linting engine
" https://github.com/dense-analysis/ale
Plugin 'dense-analysis/ale'

" YAML folding config
" https://github.com/pedrohdz/vim-yaml-folds
Plugin 'pedrohdz/vim-yaml-folds'



" dark theme
" https://github.com/rakr/vim-two-firewatch
" enable with:
"   set background=dark
"   let g:two_firewatch_italics=1
"   colorscheme two-firewatch
"Plugin 'rakr/vim-two-firewatch'

" another dark theme
" https://github.com/juanedi/predawn.vim
"Plugin 'juanedi/predawn.vim'

" another theme
" https://github.com/alessandroyorba/sierra
" enable with:
"   let g:sierra_Twilight = 1
"   colorscheme sierra
"Plugin 'alessandroyorba/sierra'

" more themes
" https://github.com/morhetz/gruvbox
"Plugin 'morhetz/gruvbox'

" more themes
" https://github.com/jpo/vim-railscasts-theme
"Plugin 'jpo/vim-railscasts-theme'


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

" use UTF-8 all the time
set encoding=UTF-8

" dark background
set background=dark

" enable syntax highlighting
syntax on

" tab and indenting for yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" set the char to use for indenting
" https://github.com/Yggdroot/indentLine
let g:indentLine_char = '⦙'

" 
set foldlevelstart=20

" linting engine config
let g:ale_echo_msg_format = '%severity%: [%linter%] %s'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
"let g:ale_lint_on_text_changed = 'never'

" Enable NerdTree by default if no files are opened
" Work with "vim" and "vim ." and "vim path/to/dir"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

" Set 2 space tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

