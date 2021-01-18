" ============================= vim-plug setup =============================
call plug#begin('~/.vim/plugged')

" ========== Plugins Below ==========

" Utility
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'

" Customization
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'kaicataldo/material.vim'
Plug 'joshdick/onedark.vim'
Plug 'ntk148v/vim-horizon'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Language Specific
Plug 'dart-lang/dart-vim-plugin'
" ===================================

call plug#end()

" ==========================================================================

" ================================= Remaps =================================

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Tabs
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" CoC
nnoremap <silent> <Space>f :call CocAction('format')<CR>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" ============================ General settings ============================
set relativenumber
set number
filetype plugin indent on
set autoindent
" Use tabs not spaces
set noexpandtab
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" Disable writing temporary files after saving
set nobackup
set noundofile

" ==========================================================================

" ========================== NERDTree Settings =============================

" Start NERDTree on startup and put the cursor back into the main pane
autocmd VimEnter * NERDTree | wincmd p
" Automatically exit vim when NERDTree is the last pane left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" ==========================================================================

" ============================ Lightline Config ============================

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }
set laststatus=2

" ==========================================================================

" ================================= Theme ==================================

autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
" Setting NERDtree pane separator appearance
set fillchars=""
highlight VertSplit guibg=Orange guifg=Black ctermbg=7 ctermfg=97
colorscheme dracula

" ==========================================================================
