syntax on

set nu

set nocompatible              " be iMproved, required
filetype off                  " required
set expandtab                 " replace tabs with spaces
set smartindent
set tabstop=2                 " 2 spaces for a tab for Ansible
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set clipboard=unnamed

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'pearofducks/ansible-vim'
Plug 'preservim/nerdtree'
"Plug 'chase/vim-ansible-yaml'
Plug 'adrienverge/yamllint'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'Vimjas/vim-python-pep8-indent'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" " All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" "
colorscheme gruvbox
set background=dark

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>
