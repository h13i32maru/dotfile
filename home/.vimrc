set nocompatible
syntax on
set directory=~/.vimswap
set ts=2 sw=2 sts=0
set fileencodings=utf-8,sjis,utf-16
set fileencoding=utf-8
set expandtab
set nobackup
set number
autocmd FileType * set indentexpr& 
"挿入モード終了時にIME状態を保存しない
inoremap <silent> <ESC> <ESC>
set modeline
set modelines=1
set ignorecase
set nowrap
set nocindent
set noautoindent
set textwidth=0
set foldmethod=marker
"macvimではこの設定必要
"autocmd FileType * set nocindent

"なぜかsmartindentが効かない時がある。
"autocmdで強制的に設定するとうまくいくみたい
set smartindent
autocmd FileType * set smartindent

set ambiwidth=double
set hlsearch
au! BufRead,BufNewFile *.json set filetype=json 
au! BufRead,BufNewFile *.tpl set filetype=html
au BufRead,BufNewFile *.tpl,*.html,*.css setlocal ts=2 sw=2 sts=0

source ~/.vim/h13i32maru/global.vim
au FileType javascript source ~/.vim/h13i32maru/javascript.vim
au BufRead,BufNewFile *.rst setlocal ts=3 sw=3 sts=0

"au BufWritePost *.php !php -l %

set rtp+=~/.vim/vundle.git/
call vundle#rc()
 
"Bundle "Markdown"
"Bundle "Markdown-syntax"
