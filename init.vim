call plug#begin(stdpath('data') . '/plugged')

	"File Explorer
	Plug 'preservim/nerdtree'
	"Theme
	Plug 'sonph/onehalf', { 'rtp': 'vim'} 
	"multi cursor
	Plug 'terryma/vim-multiple-cursors'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'pangloss/vim-javascript'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'mattn/emmet-vim'

call plug#end()

syntax on
set number

" Theme
colorscheme onehalfdark
set t_Co=256

"Cursor
set cursorline
hi CursorLine term=bold cterm=bold 

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

"Tap
set tabstop=2
set shiftwidth=2
set smarttab 
set autoindent
" Default split method
set splitright
set splitbelow


" JS intellisense & syyntax highlighting
let g:coc_global_extensions = ['coc-eslint', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nnoremap <C-b> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
" nnoremap <C-f> :NERDTreeFind<CR>
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

function! OpenTerminal()
	split term://zsh
	resize 8
endfunction

nnoremap <c-z> :call OpenTerminal() <CR>

nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l


