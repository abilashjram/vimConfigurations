"
"  Goofy's vimrc configuration
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " be iMproved, required
syntax on                 " required
filetype on               " required
set nowrap
set encoding=utf8

"Showlinenumbers
set nu
set ruler

"Set proper tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

"User interface options
"Display the status line
set laststatus=2
set cursorline

"change current dir Acc to file open in buffer
set autochdir
set hidden

"search options
set hlsearch
set incsearch
set ignorecase

"set t_Co=256
"set background=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set the runtine path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'cespare/vim-toml'
" Programming
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'mattn/emmet-vim'

" Syntax
Plugin 'rust-lang/rust.vim'
Plugin 'plasticboy/vim-markdown'

" Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajh17/Spacegray.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'agreco/vim-citylights'
"End configuration, makes the plugins available
call vundle#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ext Congfigurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"neocomplete Congfigurations
"let g:deoplete#enable_at_startup = 1


"cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let c_no_curly_error=1

" vim-airline-extentions
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colours = 1
let g:hybrid_reduced_contrast = 0


"if (has("termguicolors"))
 "   set termguicolors
"endif

"let base16colorspace=256
colorscheme spacegray

"let g:spacegray_underline_search = 1
"let g:spacegray_italicize_comments = 1

"NerdTree configuration
autocmd VimEnter * NERDTree   "Open NerdTree on start up
autocmd VimEnter * wincmd p   "Set Cursor to code file
autocmd BufWinEnter * NERDTreeMirror       "Open NERDTreeMirror on new tab

"Enable Rustc Formatter
let g:rustfmt_autosave = 1

"Vim-notes
let g:notes_directories = ['~/Projects/LearnRust/Rust_Fundamentals/Notes']
let g:notes_suffix = '.txt'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NerdTree mappings

noremap \\    :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>
noremap <C-n> :NERDTreeFocus<CR>

"Tab switching keymaps
nnoremap th   :tabfirst<CR>
nnoremap tj   :tabnext<CR>
nnoremap tk   :tabprev<CR>
nnoremap tl   :tablast<CR>
nnoremap td   :tabclose<CR>
nnoremap tn   :tabnext<Space>


