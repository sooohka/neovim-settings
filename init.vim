"plugin
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'nanotech/jellybeans.vim'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'preservim/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'blueyed/vim-diminactive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'rhysd/vim-clang-format'


"norm
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
Plug '42Paris/42header'
call plug#end()

"clang-format
so ~/.config/nvim/clang-format.vim
let g:clang_format#auto_format=0

"norm
so ~/.config/nvim/norm.vim

"ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"nerdcommenter
so ~/.config/nvim/commenter.vim

"nerdtree
let g:NERDTreeIgnore =['^node_modules$']


"coc config
let g:coc_global_extensions =[
    \'coc-snippets',
    \'coc-pairs',
    \'coc-tsserver',
    \'coc-eslint',
    \'coc-prettier',
    \'coc-json',
    \'coc-pyright',
    \'coc-clangd',
    \'coc-java',
    \]
 
so ~/.config/nvim/coc.vim

" eslint.showOutputChannel
" eslint enable

"coc snippets
" :CocCommand snippets.editSnippets
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
set tabstop=4 shiftwidth=4 expandtab

"tagbar
let g:tagbar_autofocus=1

"vim-airline
let g:airline#extensions#tabline#enabled = 1

" Syntax Highlighting
if has("syntax")  
syntax on
endif

" settings
set relativenumber number
set smarttab
set incsearch
set hidden
set noerrorbells
"set nowrap
set noswapfile
set encoding=utf-8 fileencodings=utf-8
set cursorline
set nobackup undodir=~/.config/nvim/undo undofile
set scrolloff=8 mouse=a
set signcolumn=yes
set list
set listchars=tab:>-
set tabstop=4
set noexpandtab


"set expandtab

syntax enable
colorscheme jellybeans
"set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ 
"cursor
"
"nmap
let mapleader=" "

inoremap <C-j> <Down>
inoremap <C-k> <Up>

nnoremap <C-n>n :NERDTreeFocus<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap nt :NERDTreeToggle<CR>
nnoremap <C-f> <cmd>Telescope find_files<cr>

nnoremap <S-h> :bp<CR> 
nnoremap <S-j> :bp<CR> 
nnoremap <S-l> :bn<CR> 
nnoremap <S-k> :bn<CR> 
nnoremap <S-w> :bw<CR>
nnoremap <S-q> <CR>
nnoremap <C-h> :Stdheader<CR>

nmap <C-k> <plug>NERDCommenterToggle
vmap <C-k> <plug>NERDCommenterToggle
vnoremap c :w !pbcopy<CR> <CR>
