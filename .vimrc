"
"   /$$    /$$ /$$                      /$$$$$$                       /$$$$$$  /$$
"  | $$   | $$|__/                     /$$__  $$                     /$$__  $$|__/
"  | $$   | $$ /$$ /$$$$$$/$$$$       | $$  \__/  /$$$$$$  /$$$$$$$ | $$  \__/ /$$  /$$$$$$
"  |  $$ / $$/| $$| $$_  $$_  $$      | $$       /$$__  $$| $$__  $$| $$$$    | $$ /$$__  $$
"   \  $$ $$/ | $$| $$ \ $$ \ $$      | $$      | $$  \ $$| $$  \ $$| $$_/    | $$| $$  \ $$
"    \  $$$/  | $$| $$ | $$ | $$      | $$    $$| $$  | $$| $$  | $$| $$      | $$| $$  | $$
"     \  $/   | $$| $$ | $$ | $$      |  $$$$$$/|  $$$$$$/| $$  | $$| $$      | $$|  $$$$$$$
"      \_/    |__/|__/ |__/ |__/       \______/  \______/ |__/  |__/|__/      |__/ \____  $$
"                                                                                  /$$  \ $$
"                                                                                 |  $$$$$$/
"                                                                                  \______/

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
"Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/ycmd/completers/cpp/.ycm_extra_conf.py'
nmap <F6> :NERDTreeToggle<CR>
"jumps to the last known position in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set backspace=indent,eol,start
set encoding=utf-8
"###############Color Theme:##############
 colorscheme gruvbox
 set background=dark
 filetype plugin on
 syntax on
 set number
 set spell

"Visual wrapping:
 autocmd FileType python set breakindentopt=shift:4

"Cut/Copy/Paste:
 vmap <C-c> "+yi
 vmap <C-x> "+c
 vmap <C-v> c<ESC>"+p
 imap <C-v> <C-r><C-o>+

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
"Lightline:
 set laststatus=2
 let g:lightline = {
   \     'active': {
   \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
   \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
   \     }
   \ }

"Emmets:
 let g:user_emmet_mode='a'

"NERDTree:
 autocmd vimenter * NERDTree
 let g:NERDTreeDirArrowExpandable = '▸'
 let g:NERDTreeDirArrowCollapsible = '▾'
 let NERDTreeShowHidden=1
 "Gitgutter:
 let g:gitgutter_max_signs = 500

"Ident-Guides:
 let g:indent_guides_enable_on_vim_startup = 1

"NRDCommenter:
 let g:NERDSpaceDelims = 1
 let g:NERDCompactSexyComs = 1
 let g:NERDDefaultAlign = 'left'
 let g:NERDAltDelims_java = 1
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 let g:NERDCommentEmptyLines = 1
 let g:NERDTrimTrailingWhitespace = 1
 let g:NERDToggleCheckAllLines = 1
