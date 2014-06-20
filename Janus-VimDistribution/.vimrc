""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

""
"" Chester's configuration ****************************
""


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
" color theme
colorscheme desert

""
"" End of personal cuntomization ***********************
""


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

" .vimrc.after is loaded after the plugins have loaded
"



