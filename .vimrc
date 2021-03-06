"VIMIDE vimrc basic settings
"--------start---------
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set guifont=Courier:h12
set clipboard=unnamed
set scrolloff=3
"set list
"set listchars=eol:¬,nbsp:·,trail:·
set showcmd
set linespace=2
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set noswapfile
set backspace=start,indent,eol
set numberwidth=2
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

" FINDING FILE
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Create the 'tags' file
"command! MakeTags !ctags -R .


"ex 中上下键搜索
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" 展开当前文件所在目录
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/':'%%'

" set vim wiki
" ------------------------------------
let wiki_main = {}
"let wiki_main.path = '~/AliDrive/documents/'
let wiki_main.syntax = 'markdown'
let wiki_main.ext = '.md'
let wiki_main.index = 'Home'
let wiki_main.nested_syntaxes = {'python': 'python', 'cpp': 'cpp', 'javscript': 'javascript', 'json': 'json', 'conf': 'conf'}

" pathogen setting
"----------------------------------
execute pathogen#infect()
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
syntax on
filetype plugin on
filetype indent on

" Tweaks for browsing
"let g:netrw_banner=0        " disbale annoying banner
"let g:netrw_browse_split=4  " open in prior window
"let g:netrw_altv=1          " open splits to the right
"let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)zs\.\S\+'


" eslint setting
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'

" vim-javasrcipt setting
"----------------------------------
"let g:javascript_conceal=0
"
"vim-jsx setting
"-----------------------------------
let g:jsx_ext_required=0

"powerline setting
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
let g:python_host_prog = '/Library/Python/2.7'
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim


 "These lines setup the environment to show graphics and colors correctly.
"set nocompatible
"set t_Co=256
 
"let g:minBufExplForceSyntaxEnable = 1
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
 
"if ! has('gui_running')
   "set ttimeoutlen=10
   "augroup FastEscape
      "autocmd!
      "au InsertEnter * set timeoutlen=0
      "au InsertLeave * set timeoutlen=1000
   "augroup END
"endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" airline setting
" ---------------------------------
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_detect_modified=1
"let g:airline_theme='badwolf'

"solarized setting
"----------------------------------
set background=light
colorscheme solarized
"colorscheme hybrid_material

" NERDTree setting
"----------------------------------
map <C-n> :NERDTreeToggle<CR>
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=1

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ctrlp setting 
" ------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim  " start
" 当尝试打开一个文件时，如果它已经在某个窗口被打开，CtrlP会尝试跳到那个窗口，而不是新打开一个实例
let g:ctrlp_switch_buffer = 'Et'          

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
"autocmd! BufWritePost * call system("ctags -R")

"let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
"set tags=~/tags
"定义快捷键的前缀，即<Leader>
let mapleader=","
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()


nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>

let g:pdv_cfg_Package = 'placeholder'
let g:pdv_cfg_Version = '1.0.0'
