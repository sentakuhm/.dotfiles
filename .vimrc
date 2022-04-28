"                  __ _       
"  ___ ___  _ __  / _(_) __ _ 
" / __/ _ \| '_ \| |_| |/ _` |
"| (_| (_) | | | |  _| | (_| |
" \___\___/|_| |_|_| |_|\__, |
"                       |___/ 
" ==================================================
" Dotfiles: https://github.com/sentakuhm/.dotfiles
" Email: sentakuhm@gmail.com
" ==================================================
set nocompatible              
filetype on                  
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'srcery-colors/srcery-vim'
Plug 'lervag/vimtex'
Plug 'shime/vim-livedown'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'

" Initialize plugin system
call plug#end()

"+++++++++++++ Settings
filetype plugin on
filetype plugin indent on
source $VIMRUNTIME/vimrc_example.vim
"set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:airline_powerline_fonts = 1
let g:coc_global_extensions = 1
set backspace=indent,eol,start
se mouse+=a
set encoding=utf-8
set tabstop=4
set softtabstop=4
set expandtab
set number
set autoread
"set spell
set t_ut=
set showcmd
set cursorline
set wildmenu
set hidden
set lazyredraw
set showmatch
set incsearch
set hlsearch

"+++++++++++++ Visual wrapping:
autocmd FileType python set breakindentopt=shift:4

"+++++++++++++ Cut/Copy/Paste:
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
nnoremap x "_x

"+++++++++++++ Enter Visual-Block Mode
nnoremap , <c-v> 

"+++++++++++++ Startify
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

"+++++++++++++ Floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_keymap_kill = '<F11>'

"+++++++++++++ fzf
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-/': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"+++++++++++++ Powerline
"let g:powerline_pycmd="py3"

"+++++++++++++ Emmets
let g:user_emmet_mode='a'

"+++++++++++++ Gitgutter
let g:gitgutter_max_signs = 500

"+++++++++++++ Livedown
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337

" the browser to use, can also be firefox, chrome or other, depending on your executable
let g:livedown_browser = "firefox"

"+++++++++++++ Colorizer
"let g:colorizer_auto_filetype='css,html,conf,ini,py,*rc'
let g:colorizer_auto_color = 1
"let g:colorizer_skip_comments = 1
"let g:colorizer_syntax = 1
"au BufNewFile,BufRead *.css,*.html,*.htm,*.conf  :ColorHighlight!

"+++++++++++++ Ident-Guides
"let g:indent_guides_enable_on_vim_startup = 1

"+++++++++++++ LaTeX

"+++++++++++++ Color Theme
if has('termguicolors')
    set termguicolors
endif

set t_Co=256

syntax on
set background=dark
"let g:gruvbox_material_background = 'soft'
"let g:gruvbox_material_enable_italic = 1
let g:srcery_italic = 1
colorscheme srcery

"+++++++++++++ NERDTree
autocmd vimenter * NERDTree
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>

"+++++++++++++ NRDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:webdevicons_enable_nerdtree = 1
