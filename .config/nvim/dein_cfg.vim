if &compatible
  set nocompatible
endif

set rtp+=/usr/share/vim/vimfiles
call dein#begin(expand('~/.cache/dein'))

 " Plugins:

 "  Generic
 call dein#add('Shougo/neosnippet.vim')
 call dein#add('Shougo/neosnippet-snippets')
 call dein#add('tpope/vim-surround')
 call dein#add('tpope/vim-commentary')
 call dein#add('tpope/vim-eunuch')
 call dein#add('tpope/vim-repeat')
 call dein#add('tpope/vim-fugitive')
 call dein#add('vim-airline/vim-airline')
 call dein#add('Raimondi/delimitMate')
 call dein#add('airblade/vim-gitgutter')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('SirVer/ultisnips')
 call dein#add('scrooloose/nerdtree')
 call dein#add('Xuyuanp/nerdtree-git-plugin')
 "  Themes
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('tyrannicaltoucan/vim-deep-space')
 call dein#add('ryanoasis/vim-devicons')

call dein#end()

filetype plugin indent on

" Autoinstall plugins
if dein#check_install()
  call dein#install()
endif


set background=dark
colorscheme deep-space

set number
set noswapfile
set tabstop=4
set smartcase
set expandtab
set shiftwidth=4
set cc=80
set completeopt-=preview
set encoding=utf8

let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections = 1
let g:deoplete#enable_at_startup = 1
