" ╔═╗╔═╗╔╗╔╔╦╗╔═╗╦╔═╦ ╦  ╔═╗╔═╗╔╗╔╔═╗╦╔═╗
" ╚═╗║╣ ║║║ ║ ╠═╣╠╩╗║ ║  ║  ║ ║║║║╠╣ ║║ ╦
" ╚═╝╚═╝╝╚╝ ╩ ╩ ╩╩ ╩╚═╝  ╚═╝╚═╝╝╚╝╚  ╩╚═╝
" ==================================================
" Dotfiles: https://github.com/sentakuhm/.dotfiles
" Email: madaramost@gmail.com
" ==================================================
set nocompatible              
filetype on                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bling/vim-bufferline'
"Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'mattn/emmet-vim'
"Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'tpope/vim-surround'
"Plugin 'majutsushi/tagbar'
Plugin 'honza/vim-snippets'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" All of your Plugins must be added before the following line
call vundle#end() 
filetype plugin on
filetype plugin indent on 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_use_clangd = 0
let g:airline_powerline_fonts = 1
"jumps to the last known position in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set backspace=indent,eol,start
set encoding=utf-8
set tabstop=4
set softtabstop=4
set expandtab
set number
set spell
set t_ut=
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
"###############Color Theme:##############
syntax on
colorscheme gruvbox 
let g:gruvbox_contrast_dark="hard"
set background=dark

"Visual wrapping:
autocmd FileType python set breakindentopt=shift:4

"Cut/Copy/Paste:
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
nnoremap x "_x
"Taglist:
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-l> :TlistToggle<CR>

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

if !has('gui_running')
	set t_Co=256
endif

"#########Enable-Plugins:#############
"Startify:
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

"Syntastic:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"fzf settings:
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

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
"############## end fzf ###########################

"Lightline:
let g:powerline_pycmd="py3"

"Emmets:
let g:user_emmet_mode='a'

 "Gitgutter:
let g:gitgutter_max_signs = 500

"Ident-Guides:
"let g:indent_guides_enable_on_vim_startup = 1

"NERDTree:
autocmd vimenter * NERDTree
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>
"NRDCommenter:
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:webdevicons_enable_nerdtree = 1
