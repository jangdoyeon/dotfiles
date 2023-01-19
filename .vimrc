set number
set ignorecase    " when search
set hlsearch    " highlight when search
set showmatch    " show brackets matched

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'thaerkh/vim-indentguides'
Plug 'davidhalter/jedi-vim'
" Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'pangloss/vim-javascript'
Plug 'jacoborus/tender.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
" state bar
Plug 'vim-airline/vim-airline-themes'
" golang
Plug 'fatih/vim-go'
" git
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" List ends here. Plugins become visible to Vim after this call.
" vim json
Plug 'elzr/vim-json'
call plug#end()

" golang highlight
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" NERDTree show hidden file
let NERDTreeShowHidden=1

" go autocomplete
au filetype go inoremap <buffer> . .<C-x><C-o>

" fix coc.nvim box color
highlight Pmenu ctermbg=black ctermfg=yellow

autocmd vimenter * ++nested colorscheme seoul256
map <C-n> : NERDTreeToggle<CR>

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
