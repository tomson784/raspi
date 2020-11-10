"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/dein')
  call dein#begin('$HOME/.vim/dein')

  call dein#add('$HOME/.vim/dein/repos/github.com/Shougo/dein.vim')
  " 追加したいプラグインを入れていく
  "以下２つは例
  call dein#add('scrooloose/nerdtree')
  call dein#add('raphamorim/lucario')
  "構文チェックを行う。
  call dein#add('scrooloose/syntastic')
  "()を補間する。
  call dein#add('Townk/vim-autoclose')
  "() 色付け:
  call dein#add('itchyny/lightline.vim')
  "インデントの色付け
  call dein#add('Yggdroot/indentLine')

  call dein#add('justmao945/vim-clang')
  " set clang options for vim-clang
  let g:clang_c_options = '-std=c11'
  let g:clang_cpp_options = '-std=c++1z -stdlib=libc++ --pedantic-errors'

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


set nobackup       " Do not back up files
set tabstop=4      
set autoindent
set expandtab
set shiftwidth=4
set number

" search command list [http://kawatama.net/web/1341]
" Remove search highlights
set hlsearch       

" [https://www.toumasu-program.net/entry/2019/01/28/105352]
" Show directory tree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"End dein Scripts-------------------------
