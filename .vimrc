" Vimrc from Tang, Bin (tang.bin@icloud.com)
"
" ================================ System settings ====================================
"
set nocompatible
set foldmethod=syntax
set nofoldenable
syntax on
" set nowrap
filetype plugin indent on

"
" ================================ vim-plugin ====================================
"
call plug#begin('~/.vim/vim-plug')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'godlygeek/tabular' " required by vim-markdown
Plug 'plasticboy/vim-markdown'
Plug 'ryanoasis/vim-devicons'
Plug 'bagrat/vim-workspace'
Plug 'tpope/vim-fugitive'

call plug#end()
"
" ================================ Autocommands ====================================
"
augroup ausettings
	autocmd!
	au BufNewFile,Bufread *.mxml set filetype=mxml
	au BufNewFile,Bufread *.as set filetype=actionscript
	au BufNewFile,Bufread *.asd set filetype=lisp
	au FileType javascript set dictionary=~/.vim/dict/javascript.dict
	au FileType actionscript set dictionary=~/.vim/dict/as.dict
	au FileType mxml set dictionary=~/.vim/dict/as.dict
	au BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\   exe "normal! g`\"" |
				\ endif
augroup END
"
" ================================ LET settings  ==================================
"
let mapleader=","
let g:mapleader=","
let $LANG = 'en_US'
"
" ================================ SET settings =================================
"
" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" highlight current line
set cursorline


set viminfo^=%
set scrolloff=3
" set fdm=indent
set langmenu=en_US
set conceallevel=0
set guifont=Monofur\ Nerd\ Font\ Mono:h16
" set guifont=Hack\ Nerd\ Font\ Mono:h16
set fenc=utf-8 "fileencoding
set encoding=UTF-8
" set ffs=mac,unix,dos
set noerrorbells
" set nobackup
" set nocompatible
set clipboard+=unnamed
set showcmd
set autoindent
set hlsearch
"set si
set cindent
set history=100
set autoread
set incsearch
set tags=tags
set autochdir
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<,eol:$
set ruler
set cmdheight=4
set ignorecase
set lazyredraw
set showmatch

"
" ======================= Theme & style =======================
"
set termguicolors
colorscheme tangbin " Place at ~/.vim/colors/tangbin.vim
let macvim_skip_colorscheme=1
hi cursorline gui=underline cterm=underline guibg=black

" always show status line
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'unicode'
let g:airline_theme='wombat'

" set statusline=\ %{HasPaste()}[%n]\ %F%h%r%m%w\ 
" " set statusline+=%<CWD:\ %{getcwd()}
" set statusline+=%= " Goto right
" set statusline+=\ %q\ 0x%B\ [%l/%L\ %p%%\ :\ %03c]%y\ 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" set backspace=eol,start,indent
" set whichwrap+=<,>,h,l

"
" ===================== devicons ==================
"
let g:webdevicons_enable = 1
let g:WebDevIconsOS = 'Darwin'
"
" ==================== jslint ==================
"
"let g:syntastic_javascript_checkers=['jslint']

"
" ===================== terminal ====================
"
set shell=/usr/local/bin/zsh
noremap <silent><C-m><C-k> :terminal<CR>
"
" ------------------ Tagbar settings ------------------------
"
noremap <silent><F3> :TagbarOpenAutoClose<CR>
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_autoclose = 1
"
" ================== NERD Tree Settings ======================
"
noremap <silent><C-m><C-j> :NERDTreeToggle %:p:h<CR>
let NERDChristmasTree = 1
let NERDTreeQuitOnOpen = 1
"
" ======================= Ctrl P settings =====================
"
let g:ctrlp_by_filename = 1
let g:ctrlp_root_markers = ['pom.xml']
noremap <silent><C-m><C-l> :CtrlPBuffer<cr>
"
" ======================= Vim-JavaScript settings =====================
"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
"
" ======================== Python =======================
"
" ========================== Mappings ============================
" search
"
" Insert date and time.
nnoremap <silent> <leader>dl "=strftime("%m/%d/%Y %H:%M:%S")<CR>p
inoremap <silent> <leader>dl <C-R>=strftime("%m/%d/%Y %H:%M:%S")<CR>
nnoremap <silent> <leader>dt "=strftime("%H:%M")<CR>p
inoremap <silent> <leader>dt <C-R>=strftime("%H:%M")<CR>
nnoremap <silent> <leader>dd "=strftime("%Y-%m-%d")<CR>p
inoremap <silent> <leader>dd <C-R>=strftime("%Y-%m-%d")<CR>
nnoremap <silent> <leader>oo <esc>i<CR><esc>
" New daily work (log day)
nnoremap <silent> <leader>ld o<esc>^Di##<space><C-R>=strftime("%m/%d (%w)")<CR><esc>
" New time work log (log time)
nnoremap <silent> <leader>lt o<esc>^Di<space>*<space><C-R>=strftime("%H:%M")<CR>:<space>
"
" Tabs
noremap <F5> :tabprevious<CR>
noremap <F6> :tabnext<CR>
noremap <F7> :tabnew<CR>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
" nnoremap <leader>tm :tabmove<cr> " <leader>tm is used to toggle table mode.
" Open new Tab with current tab path.
nnoremap <leader>te :tabedit <C-r>=expand('%:p:h')<cr> 
noremap <silent> <leader>z :close<cr>
noremap <silent> <leader>x :x<cr>
noremap <silent> <leader>o :only<cr>
"
" Select and search
vnoremap * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
noremap <silent> <leader><cr> :noh<cr>
noremap <C-h> :vimgrep <C-R><C-W> **/*.*<CR> :cw<CR>
" grep selected string.
vnoremap <silent> gv :call VisualSelection('gv')<CR>
" noremap <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>
" nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
noremap <leader><space> :vimgrep // <C-R>%<C-A><right>
"
" More and insert
noremap j gj
noremap k gk
noremap tt O<ESC>j
noremap mm o<ESC>k
" noremap <leader>cd :cd %:p:h<cr>:pwd<cr>
" noremap <leader>cc :botright cope<cr>
" noremap <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
noremap <leader>n :cn<cr>
noremap <leader>p :cp<cr>
"
" Open .vimrc quickly to edit it!
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
"
" For quick edit.
nnoremap <leader>" viw<ESC>a"<ESC>hbi"<ESC>lel
inoremap jk <ESC>
nnoremap <leader>> $
nnoremap <leader>< ^
nnoremap <leader>v ^v$
"
" ================================== Functions ==================================
"

function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction

function! VisualSelection(direction) range
	let l:saved_reg = @"
	execute "normal! vgvy"
	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")
	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
	elseif a:direction == 'replace'
		call CmdLine("%s" . '/'. l:pattern . '/')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif
	let @/ = l:pattern
	let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")
	if buflisted(l:alternateBufNum)
		buffer #
	else bnext
	endif
	if bufnr("%") == l:currentBufNum
		new
	endif
	if buflisted(l:currentBufNum)
		execute("bdelete! ".l:currentBufNum)
	endif
endfunction

