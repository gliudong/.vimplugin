"VIMIDE vimrc basic settings
"--------start---------
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set guifont=Courier:h12
set clipboard=unnamed
set scrolloff=3
set list
set listchars=tab:▸\ ,eol:¬,nbsp:·,trail:·
set showcmd
set linespace=4
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set noswapfile
set backspace=start,indent,eol
set numberwidth=4
set autoindent
set smartindent
set nobackup
set writebackup
set autoread
" 高亮显示搜索结果
set hlsearch 
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 显示行号
set nu
" 显示光标当前位置
set ruler
" 总是显示状态栏
set laststatus=2
" 开启事实搜索
set incsearch
" 搜索时大小写不敏感
"set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 禁止光标闪烁
set gcr=a:block-blinkon0

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>


" pathogen setting
"----------------------------------
execute pathogen#infect()
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
filetype indent on
syntax enable

" vim-javasrcipt setting
"----------------------------------
"let g:javascript_conceal=0

"powerline setting
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 
if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)




" airline setting
" ---------------------------------
"let g:airline_detect_modified=1
"let g:airline_theme='badwolf'

"solarized setting
"----------------------------------
"set background=dark
"colorscheme solarized

" NERDTree setting
"----------------------------------
map <C-n> :NERDTreeToggle<CR>
map <c-m> :call JsBeautify()<cr>
map <c-g> :call HtmlBeautify()<cr>

map <F5> :tabp<CR>
map <F6> :tabn<CR>
imap <F5> <ESC>:tabp<CR>i
imap <F6> <ESC>:tabn<CR>i
ca tn tabnew

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l 

au! BufRead,BufNewFile *.js set syntax=jquery
au! BufRead,BufNewFile *.less set syntax=css
au! BufRead,BufNewFile *.tpl set syntax=html
au! BufRead,BufNewFile *.sah set syntax=javascript

au! BufRead,BufNewFile *.js set filetype=javascript
au! BufRead,BufNewFile *.less set filetype=css
au! BufRead,BufNewFile *.tpl set filetype=html
au! BufNewFile,BufRead *.t2t set ft=txt2tags
au! BufRead,BufNewFile *.sah set filetype=javascript

autocmd! bufwritepost .vimrc source ~/.vimrc

let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
set tags=~/tags
"定义快捷键的前缀，即<Leader>
let mapleader=","
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()


nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>

let g:pdv_cfg_Package = 'placeholder'
let g:pdv_cfg_Version = '1.0.0'
