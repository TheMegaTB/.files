function! s:install_neobundle()
  if (!isdirectory(expand("$HOME/.config/nvim/bundle/neobundle.vim")))
    echo 'Downloading NeoBundle. Please wait...'
    call system(expand("mkdir -p $HOME/.config/nvim/bundle"))
    call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim"))
    echo 'NeoBundle has been downloaded...'
  endif
  if has('vim_starting')
    set runtimepath+=/home/themegatb/.config/nvim/bundle/neobundle.vim/
  endif
  call neobundle#begin()
  NeoBundleFetch 'Shougo/neobundle.vim'
  source ~/.config/nvim/bundle.vim
  call neobundle#end()
  NeoBundleCheck
endfunction
call s:install_neobundle()


"let base16colorspace=256
syntax enable
"colorscheme base16-gooey

set tabstop=4
set smartcase
set expandtab
set shiftwidth=4
set noswapfile
set undofile
set undodir=~/.config/nvim/tmp/undodir
set completeopt-=preview
