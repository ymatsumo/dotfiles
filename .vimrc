set nocompatible
filetype off

""---------------------------------------------------------------------------
"" plugin setup
""
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

NeoBundleCheck

""---------------------------------------------------------------------------
"" unite.vim
""
" buffer list
noremap <C-P> :Unite buffer<CR>
" file list
noremap <C-N> :Unite -buffer-name=file file<CR>
" recently file list
noremap <C-Z> :Unite file_mru<CR>
" sourcesをカレントディレクトリに設定
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" split
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" vsplit
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" close
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

""---------------------------------------------------------------------------
"" nerdtree
""
" toggle open
noremap <C-A> :NERDTreeToggle<CR>

""---------------------------------------------------------------------------
"" global option
""
" tabstop
set tabstop=2
" expand tab
set expandtab
" 対応する括弧を表示
set showmatch
" コマンドラインモードで<Tab>によるファイル名補完
set wildmenu
" syntax
syntax on
" line number
set number
" ruler
set ruler
" ウィンドウの末尾から2行目にステータスラインを常に表示
set laststatus=2
" コマンドラインで使用する行数
set cmdheight=2
" show cmd
set showcmd
" title
set title
" background
set background=dark
" color scheme
colorscheme desert
highlight LineNr ctermfg=darkyellow

filetype plugin indent on
