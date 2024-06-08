" Colorscheme
colorscheme catppuccin_mocha

" System
set nobackup
set noswapfile
set fileencoding=utf-8
set mouse=i
set clipboard=unnamedplus
set undofile
set nowritebackup
set title

" Tabs
set noexpandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Indentation
set smartindent
set autoindent
set nolisp
set foldmethod=marker

" Interface
set cmdheight=1
set pumheight=10
set showtabline=1
set splitbelow
set splitright
set textwidth=0
set nowrap
set scrolloff=8
set sidescrolloff=0

" Left column
set number
set norelativenumber
set numberwidth=2
set signcolumn=yes

" Visuals
set showbreak=..
set conceallevel=0
set noshowmode
set termguicolors
set cursorline
set list

" Search
set nohlsearch
set ignorecase
set smartcase

" Completion
set completeopt=menuone,noselect
set timeoutlen=300
set updatetime=300
set wildmode="bashcomp"
set nospell

" Appends
set listchars="tab:▎,trail:·,precedes:<,extends:>, nbsp:○"
set shortmess+=Ic
set whichwrap+=<,>,[,],h,l
set path+=**

""" Mappings
nnoremap <C-j> 5gj
nnoremap <C-k> 5gk
nnoremap <C-h> 5h
nnoremap <C-l> 5l

vnoremap <C-j> 5gj
vnoremap <C-k> 5gk
vnoremap <C-h> 5h
vnoremap <C-l> 5l

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Quickfix
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprevious<CR>
nnoremap <C-q> :copen<CR>
nnoremap <C-A-q> :cclose<CR>

" Better window navigation
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Resize with arrows
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Right> :vertical resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>

" Navigate buffers
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>

" Folding
nnoremap , za

" Insert things
" Line
nnoremap <enter> o<esc>
nnoremap <A-enter> i<CR><esc>

" Word Wrap
nnoremap <A-z> :set wrap!<CR>

" Better pasting
nnoremap <A-p> pg;h

syntax on
