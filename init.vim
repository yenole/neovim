let mapleader="\<Space>"

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-startify'

Plug 'honza/vim-snippets'

Plug 'fatih/vim-go'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = ["coc-json","coc-git","coc-explorer","coc-vimlsp"]

nnoremap <leader>e :CocCommand explorer<cr>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-o> coc#refresh()

nmap <leader>rn <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


Plug 'kien/ctrlp.vim'

let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'

call plug#end()

set nobackup
set number
