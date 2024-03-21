call plug#begin()
Plug 'vim-airline/vim-airline'        " 状态栏
Plug 'tpope/vim-commentary'           " 注释
Plug 'vim-airline/vim-airline-themes' " 状态栏主题
Plug 'whonore/Coqtail'                " Coq 交互
Plug 'jiangmiao/auto-pairs'           " 自动补全括号
Plug 'godlygeek/tabular'              " 对齐到特定符号
Plug 'preservim/nerdtree'             " 目录
Plug 'junegunn/fzf.vim'               " 模糊搜索
Plug 'lervag/vimtex'                  " LaTeX 支持
Plug 'SirVer/ultisnips'               " 补全引擎
Plug 'honza/vim-snippets'             " 一些常见语言的补全模板
Plug 'easymotion/vim-easymotion'      " 快速移动
Plug 'luochen1990/rainbow'            " 彩色括号
call plug#end()

let mapleader=","

set number
set smarttab
set tabstop=4
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
colorscheme desert

" 状态栏
set laststatus=2
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

" 文件编码
set fileencodings=ucs-bom,utf8,default,cp936,latin1

" 文件类型
filetype plugin on
filetype indent on
autocmd BufEnter *.tkz :setlocal filetype=tex

" 退出
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>x :x<cr>

" 注释
nmap <leader>cc :Commentary<cr>
autocmd FileType gitconfig setlocal commentstring=#\ %s

" 目录
nmap <F2> :NERDTreeToggle<cr>
" nmap <leader>n :NERDTreeFocus<cr>
" nmap <leader>f :NERDTreeFind<cr>
" 在仅剩NERDTree时关闭窗口/标签页
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 对齐
nmap <leader>a= :Tabularize /=<cr>
nmap <leader>a: :Tabularize /:\zs<cr>
nmap <leader>a" :Tabularize /"<cr>
nmap <leader>a# :Tabularize /#<cr>
" nmap <leader>a| :Tabularize /|<cr>

" LaTeX
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
" 隐藏模式
set conceallevel=1
let g:tex_conceal='abdmg'

" 补全
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"

" 快速移动
" map <leader> <Plug>(easymotion-prefix)

" 彩色括号
let g:rainbow_active = 1
