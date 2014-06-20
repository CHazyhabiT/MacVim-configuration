" Chester's Configuration File for MacVim

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible" Use Vim defaults instead of 100% vi compatibility
set backspace=2" more powerful backspacing

" syntax highlight
syntax on

" highlight the current row
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" set default font
set guifont=Monaco:h12

" set default size of the new window
set lines=30
set columns=90

" indent
set smartindent
set autoindent

" confirm the unsaved file before quit
set confirm

" the width of tab
set tabstop=4


set softtabstop=4
set shiftwidth=4
"  统一缩进为4

set noexpandtab
" 不要用空格代替制表符

" display the number of the rows
set number

" record the history
set history=50

" searching highlight
set hlsearch
set incsearch

" 行内替换
set gdefault

" encoding
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

" set the colorscheme
" desert/torte
" colorscheme desert

" set the language
set langmenu=zn_CN.UTF-8
set helplang=cn

" set the height of the command line to be 2 (default is 1)
set cmdheight=2

" display the status of the cursor in insert mode
set ruler

" always display the status line
set laststatus=2

" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来
set showcmd

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" highlight all the bracket
set showmatch
" the time of the highlighting the bracket
set matchtime=5

" auto save teh file between switching the buffer
set autowrite

" 增强模式中的命令行自动完成操作
set wildmenu

" 字符间插入的像素行数目
set linespace=2

" 开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。
set whichwrap=b,s,<,>,[,]

" 分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。
filetype plugin indent on

"==================自定义的键映射======================

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>
" 括号自动生成

map <F7> :if exists("syntax_on") <BAR>
\    syntax off <BAR><CR>
\  else <BAR>
\syntax enable <BAR>
\  endif
" 单键<F7>控制syntax on/off。原因是有时候颜色太多会妨碍阅读。

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc
" <F5>编译和运行C程序

map <F6> :call CompileRunGpp<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./<"
endfunc
" <F6>编译和运行C++程序

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
