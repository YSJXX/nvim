
" Plug-In 시작 (플러그인 설치 경로)
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'NLKNguyen/papercolor-theme' " theme
Plug 'vim-python/python-syntax'
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" ==== Dafault Setting =======

if has("syntax")
        syntax on
endif

set hlsearch
set nu
" set autoindent
set ts=4        " 문서의 \t 값을 출력시 몇 개의 스페이스로 보여줄
set sts=4       " tab 키를 눌렀을 대 몇개의 스페이스를 입력할 것인지
set shiftwidth=4
set cindent
set laststatus=2
set showmatch " 괄호 짝 하이라이트
set smartcase
set smarttab
set smartindent
set ruler
set fileencodings=utf8,euc-kr

"close 시 remove white space
"autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm


" ======= Theme ======
set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

" ======= 단축키 =====
nnoremap <C-n> :tabprevious<CR>
nnoremap <C-m> :tabnext<CR>
nnoremap <C-S-n> :bp<CR>
nnoremap <C-S-m> :bn<CR>

nnoremap <F2> :vsp \| term<CR>
nnoremap <CR> <CR>

tnoremap <M-h> <C-\><C-N><C-w>h
tnoremap <M-l> <C-\><C-N><C-w>l

tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l
" ==== 각종 버퍼 명령어 =================================
" 터미널 오픈
" :bel sp 50 | resize 10 | terminal


" =======================================================
" nvim-treesitter
"
" =======================================================

