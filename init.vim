call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'nanotech/jellybeans.vim'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'mbbill/undotree'

Plug 'preservim/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'blueyed/vim-diminactive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'BurntSushi/ripgrep'

"norm
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
Plug '42Paris/42header'
Plug 'cacharle/c_formatter_42.vim'
call plug#end()

so ~/.config/nvim/telescope.vim


"nmap
let mapleader=" "


"Clangformat
let g:c_formatter_42_format_on_save=1


"norm
so ~/.config/nvim/norm.vim

"ctrlp
"nerdcommenter
so ~/.config/nvim/commenter.vim

"nerdtree
let g:NERDTreeIgnore =['^node_modules$']
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25



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

"telescope

"tagbar
let g:tagbar_ctags_bin='/opt/homebrew/bin/ctags'
let g:tagbar_autofocus=1

"vim-airline
let g:airline#extensions#tabline#enabled = 1

" Syntax Highlighting
if has("syntax")  
syntax on
endif

" settings
set relativenumber number

set incsearch hlsearch ignorecase smartcase


set hidden
set noerrorbells
set nowrap
set noswapfile
set encoding=utf-8 fileencodings=utf-8

set cursorline
set nobackup undodir=~/.config/nvim/undo undofile
set scrolloff=8 mouse=n
set signcolumn=yes

set list
set listchars=tab:>-
set tabstop=4
set noexpandtab
set smarttab
"set expandtab

"syntax enable
colorscheme jellybeans



inoremap <C-j> <Down>
inoremap <C-k> <Up>

nnoremap <C-n>n :NERDTreeFocus<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap nt :NERDTreeToggle<CR>
nmap <C-k> <plug>NERDCommenterToggle
vmap <C-k> <plug>NERDCommenterToggle


"buffer
nnoremap <silent><S-h> :bp<CR> 
nnoremap <silent><S-j> :bp<CR> 
nnoremap <silent><S-l> :bn<CR> 
nnoremap <silent><S-k> :bn<CR> 
nnoremap <silent><S-w> :bw<CR>
nnoremap <S-q> <CR>


"window
nmap <silent><leader>v :wincmd v<CR>
nmap <silent><leader>w :wincmd c<CR>
nmap <silent><leader>k :wincmd l<CR>
nmap <silent><leader>l :wincmd l<CR>
nmap <silent><leader>j :wincmd h<CR>
nmap <silent><leader>h :wincmd h<CR>


"telescope
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>

"show description -> <leader><leader>
"rename -> <leader>rn
"multicursor -> <C-n>

" my keymap
vnoremap c :w !pbcopy<CR> <CR>
nnoremap <silent><esc> :noh <CR> 
