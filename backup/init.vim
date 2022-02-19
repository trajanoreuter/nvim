call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
call plug#end()

"Theme config
colorscheme gruvbox
set background=dark

"Set config
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set clipboard=unnamed
set hidden
set termguicolors
set expandtab
set shiftwidth=2
set smarttab
set cindent
set tabstop=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

inoremap jk <ESC>

"Leader to space
let mapleader="\<space>"

"Edit vim
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
"source vim
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Snips config
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

"Files search
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

"Nerd tree Config
nmap <c-n> :NERDTreeToggle<cr>
"Using macbook, need to bind this command
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeIgnore = ['^node_modules$']

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

augroup removeWitheSpaces
autocmd BufRead,BufWrite * if ! &bin | silent! %s/ \+$//ge | endif
augroup end
