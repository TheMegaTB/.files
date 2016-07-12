" "NeoBundle Scripts-----------------------------
" if has('vim_starting')
"   " Required:
"   set runtimepath+=/home/themegatb/.config/nvim/bundle/neobundle.vim/
" endif

" " Required:
" call neobundle#begin(expand('/home/themegatb/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" " Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
" call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" General
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'airblade/vim-gitgutter'
NeoBundleLazy 'Raimondi/delimitMate', {'on_i': 1}
NeoBundleLazy 'Shougo/deoplete.nvim', { 'on_i': 1 }
let g:deoplete#enable_at_startup = 1

" JavaScript
NeoBundle 'moll/vim-node'
NeoBundleLazy 'mxw/vim-jsx', {'on_ft': 'javascript'}
NeoBundleLazy 'othree/yajs.vim', {'on_ft': 'javascript'}
NeoBundleLazy 'othree/es.next.syntax.vim', {'on_ft': 'javascript'}
NeoBundleLazy 'gavocanov/vim-js-indent', {'on_ft': 'javascript'}
NeoBundleLazy 'carlitux/deoplete-ternjs', { 'on_ft': 'javascript', 'on_i': 1 }

" Markdown
NeoBundleLazy 'plasticboy/vim-markdown', {'on_ft': 'markdown'}
NeoBundleLazy 'dhruvasagar/vim-table-mode', {'on_ft': 'markdown'}
NeoBundleLazy 'junegunn/goyo.vim', {'on_cmd': 'Goyo'}
