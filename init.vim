call plug#begin(stdpath('data') . '/plugged')
	" File Explorer
	Plug 'preservim/nerdtree'
	" Theme
	" Plug 'sonph/onehalf', { 'rtp': 'vim'} 
	Plug 'nanotech/jellybeans.vim'
	" syntax
	Plug 'neoclide/coc.nvim', {'branch': 'release', 'for':'python'}
	Plug 'maxmellon/vim-jsx-pretty'
	" Plug 'mxw/vim-jsx'
	Plug 'mattn/emmet-vim'
	Plug 'chun-yang/auto-pairs'
  " Langugue	
	Plug 'pangloss/vim-javascript'
	Plug 'numirias/semshi', {'do':'UpdateRemotePlugins', 'for':['python']}
	" Comment
	Plug 'tpope/vim-commentary'
	" CSS color
	Plug 'ap/vim-css-color'
	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'	
	
	Plug 'preservim/tagbar'
call plug#end()


syntax on
set number

set mouse=a


" Tap ----------------------------------------------------------
set tabstop=2
set shiftwidth=2
set smarttab 
set autoindent
set cindent


" folding -------------------------------------------------------
set foldmethod=manual
" set foldmethod=syntax
" set foldlevelstart=99
" let javscript_fold=1
" setlocal foldmethod=indent
" set nofoldenable
" set foldlevel=99
" set fillchars=fold:\ "The backslash escapes a space
" set foldtext=CustomFoldText()
" function! CustomFoldText()
"   let indentation = indent(v:foldstart - 1)
"   let foldSize = 1 + v:foldend - v:foldstart
"   let foldSizeStr = " " . foldSize . " lines "
"   let foldLevelStr = repeat("+--", v:foldlevel)
"   let expansionString = repeat(" ", indentation)
"   return expansionString . foldLevelStr . foldSizeStr
" endfunction


" Theme -------------------------------------------------------
" colorscheme onehaslfdark
" set t_Co=256
colorscheme jellybeans


" python sytax 보조--------------------------------------------
" function MyCustomHighlights()
"     hi semshiGlobal      ctermfg=red guifg=#ff0000
" endfunction
" autocmd FileType python call MyCustomHighlights()
" autocmd ColorScheme * call MyCustomHighlights()


" Cursor -------------------------------------------------------
set cursorline
hi CursorLine term=bold cterm=bold 


" Default split method -----------------------------------------
set splitright
set splitbelow


" Key mapping --------------------------------------------------
imap jk <ESC>


" Terminal -----------------------------------------------------
function! OpenTerminal()
	split term://zsh
	resize 8
endfunction
nnoremap <c-z> :call OpenTerminal() <CR>


" NERDTree -----------------------------------------------------
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
" nnoremap <C-f> :NERDTreeFind<CR>
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif


" airline ------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_tabs = 1
" let g:airline#extensions#tabline#formatter = 'default'
nnoremap <silent><C-h> :bp<CR>
nnoremap <silent><C-l> :bn<CR>


" tagbar -------------------------------------------------------
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width=40

" JS intellisense & syyntax highlighting -----------------------
let g:coc_global_extensions = ['coc-eslint', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver',  'coc-import-cost','coc-explorer']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
