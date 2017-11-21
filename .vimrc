" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'bitc/vim-bad-whitespace'
Plugin 'scrooloose/nerdtree'
"Plugin 'octol/vim-cpp-enhanced-highlight'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" END VUNDLE

au BufRead,BufNewFile Makefile* set noexpandtab

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
"

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set textwidth=120       " break lines when line length increases
:set colorcolumn=+1        " highlight column after 'textwidth'
:highlight ColorColumn ctermbg=black guibg=lightgrey

highlight SpecialKey ctermfg=1
set list
set listchars=tab:T>

" make backspaces more powerful
set backspace=indent,eol,start

syntax on
set ruler                           " show line and column number
set number
set showcmd                         " show (partial) command in status line

:imap jk <Esc>
nnoremap fef mx=ggG='x

nnoremap \ :NERDTreeToggle<CR>

" movement between different windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
