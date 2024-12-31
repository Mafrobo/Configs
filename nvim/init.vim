:set number
:set relativenumber


:set modifiable
call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'voldikss/vim-floaterm'
Plug 'akinsho/toggleterm.nvim'
Plug 'uZer/pywal16.nvim', { 'as': 'pywal16' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end() 

nnoremap <C-d> :NERDTreeToggle<CR>
nnoremap <C-q> :q!<CR> 
nnoremap <C-t> :ToggleTerm<CR>
" Tab für die Vervollständigung verwenden
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Mit Enter die aktuelle Auswahl bestätigen
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Gehe zu Definition, Typ, Implementierung oder Referenzen
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Fehler anzeigen
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Schnell eine Aktion ausführen (wie Auto-Fix)
nmap <silent> <leader>ca <Plug>(coc-codeaction)

lua << EOF

local pywal16 = require('pywal16')

pywal16.setup()

EOF

