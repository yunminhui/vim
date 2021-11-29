call plug#begin(stdpath('data') . '/plugged')
	" File Explorer
	Plug 'preservim/nerdtree'
	" Theme
	Plug 'sonph/onehalf', { 'rtp': 'vim'} 
	" multi cursor
  Plug 'terryma/vim-multiple-cursors'
	" syntax
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'maxmellon/vim-jsx-pretty'
	" Plug 'mxw/vim-jsx'

	Plug 'mattn/emmet-vim'
	Plug 'chun-yang/auto-pairs'
  " Langugue	
	Plug 'pangloss/vim-javascript'
	" Comment
	Plug 'tpope/vim-commentary'
	
	Plug 'ap/vim-css-color'
	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'	

	" Plug 'nathanaelkane/vim-indent-guides'
	Plug 'thaerkh/vim-indentguides'
call plug#end()


syntax on
set number
set foldmethod=syntax
set foldlevelstart=99
let javscript_fold=1


" Theme
colorscheme onehalfdark
set t_Co=256

" Cursor
set cursorline
hi CursorLine term=bold cterm=bold 
" Multi Cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-m>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" Default split method
set splitright
set splitbelow

" Tap
set tabstop=2
set shiftwidth=2
set smarttab 
set autoindent
" Esc
imap jk <ESC>

" Terminal
function! OpenTerminal()
	split term://zsh
	resize 8
endfunction
nnoremap <c-z> :call OpenTerminal() <CR>


" NERDTree
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
" nnoremap <C-f> :NERDTreeFind<CR>
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'

" indent guide
let g:indent_guides_ignorelist = ['text']
let g:indent_guides_tabchar = '|'

" JS intellisense & syyntax highlighting
let g:coc_global_extensions = ['coc-eslint', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


