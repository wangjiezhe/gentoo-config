call plug#begin()
Plug 'vim-airline/vim-airline'                        " 状态栏
Plug 'tpope/vim-commentary'                           " 注释
Plug 'vim-airline/vim-airline-themes'                 " 状态栏主题
Plug 'whonore/Coqtail'                                " Coq 交互
Plug 'jiangmiao/auto-pairs'                           " 自动补全括号
Plug 'godlygeek/tabular'                              " 对齐到特定符号
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " 目录
Plug 'junegunn/fzf.vim'                               " 模糊搜索
call plug#end()

let mapleader=","

" 退出
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>x :x<cr>

" 注释
nmap <leader>cc :Commentary<cr>

" 目录
nmap <F2> :NERDTreeToggle<cr>
nmap <leader>n :NERDTreeFocus<cr>
nmap <leader>f :NERDTreeFind<cr>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 对齐
nmap <leader>a= :Tabularize /=<cr>
nmap <leader>a: :Tabularize /:\zs<cr>
nmap <leader>a" :Tabularize /"<cr>
nmap <leader>a# :Tabularize /#<cr>
" nmap <leader>a| :Tabularize /|<cr>

set laststatus=2
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

set fileencodings=ucs-bom,utf8,default,cp936,latin1
