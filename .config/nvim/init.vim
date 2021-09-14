" ============================= vim-plug setup =============================
call plug#begin('~/.vim/plugged')

" ========== Plugins Below ==========

" Utility
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-accent'

" Customization
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'kaicataldo/material.vim'
Plug 'joshdick/onedark.vim'
Plug 'ntk148v/vim-horizon'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Language Specific
Plug 'dart-lang/dart-vim-plugin' " dart
Plug 'yuezk/vim-js' " js
Plug 'HerringtonDarkholme/yats.vim' " ts
Plug 'maxmellon/vim-jsx-pretty' " tsx
" ===================================

call plug#end()

" ==========================================================================

" ================================= Remaps =================================

" coc-explorer
nmap <space>e :CocCommand explorer<CR>

" Tabs
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" CoC
nnoremap <silent> <Space>f :call CocAction('format')<CR>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" ========================== Coc-Explorer Settings =========================

" Close explorer if it's the last window open
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" ==========================================================================
"
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

" ============================ Lightline Config ============================

let g:lightline = {
      \ 'colorscheme': 'horizon',
      \ }
set laststatus=2

" ==========================================================================

" ================================= Theme ==================================

" ========= Setting correct colors ===========

" autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
" --- or ---
set termguicolors

" ============================================

" Setting NERDtree pane separator appearance
set fillchars=""
highlight VertSplit guibg=Orange guifg=Black ctermbg=7 ctermfg=97
colorscheme horizon

" ==========================================================================
