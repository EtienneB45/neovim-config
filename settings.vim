set nocompatible              " required
filetype plugin indent on                  " required
syntax on

let g:python_highlight_all=1

"colorscheme solarized
"colorscheme solarized
"let g:solarized_termcolors=256
"colorscheme gruvbox
set background = "dark" 

"Call the theme 
"colorscheme palenight
colorscheme ayu
let ayucolor="dark"


set termguicolors

"custom the bar line
let g:airline_theme = 'ayu'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" ----- Shougo/deoplete and snippets -----
let g:deoplete#enable_at_startup = 1

" ----- davidhalter/jedi-vim -----
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 0
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#autocompletion_enabled = 0



" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" shortcut for goto definition after indentation
let g:ycm_server_python_interpreter='/usr/bin/python2'
"let g:ycm_autoclose_preview_window_after_completion=1


 "enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()

" change the <leader> key by % "
let mapleader="\<Space>"

set modeline
set splitbelow
set splitright
" Enable folding
set foldlevel=99
set foldmethod=marker
set encoding=utf-8
set showcmd
set smarttab
set mouse=a
set number
set ruler
set backspace=indent,eol,start
set incsearch
set clipboard=unnamedplus
 

" Manage PEP8 indentation for python files
au BufNewFile,BufRead *.py
	\ set tabstop=4 
	\| set softtabstop=4 
	\| set shiftwidth=4 
	\| set expandtab 
	\| set autoindent 
	\| set fileformat=unix
	\| let g:nerdtree_tabs_open_on_console_startup = 1 " To have NERDTree always open on startup


highlight BadWhitespace ctermbg=red guibg=darkred
" Flag for extraneous whitespace (mark in red color)
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
