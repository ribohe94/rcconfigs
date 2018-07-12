set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Specifying Plugins
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'kien/ctrlp.vim'
Plug 'lokaltog/vim-powerline'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'wincent/command-t'
Plug 'ntpeters/vim-better-whitespace'
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'shougo/neocomplete.vim'

call plug#end()

"I guess I'll leave this here
Bundle 'vim-ruby/vim-ruby'

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

set hlsearch
set number
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"Always show current position
set ruler
" Height of the command bar
set cmdheight=2
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" For regular expressions turn magic on
set magic
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Enable syntax highlighting
syntax enable 
colorscheme monokai
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Always show the status line
set laststatus=2
" Get thos .swp outta'here
set noswapfile
" Reload the damn file
set autoread
hi Search cterm=bold ctermbg=blue ctermfg=white
set autoread
set relativenumber
set showcmd
set formatoptions-=cro
set rtp+=~/.fzf
