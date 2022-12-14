:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

Plug 'https://github.com/tpope/vim-surround' "Surrounding Strings with Chars
Plug 'https://github.com/vim-airline/vim-airline' "StatusBar
Plug 'https://github.com/preservim/nerdtree' "SideBar With FileSystem
Plug 'https://github.com/ap/vim-css-color' "Css color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' "Retro theme
Plug 'https://github.com/tc50cal/vim-terminal' " Terminal on Vim?
Plug 'https://github.com/preservim/tagbar' "Tagbar for navigation
Plug 'https://github.com/ryanoasis/vim-devicons' "Icons for Languages
Plug 'https://github.com/neoclide/coc.nvim' "AutoCompletion

call plug#end()

nmap<F8> :TagbarToggle<CR>

:set completeopt-=preview

:colorscheme jellybeans

nnoremap<C-f> :NERDTreeFocus<CR>
nnoremap<C-n> :NERDTree<CR>
nnoremap<C-t> :NERDTreeToggle<CR>
inoremap<expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

// Mapping NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowExpandable="-"


