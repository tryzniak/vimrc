highlight Visual cterm=bold ctermbg=black ctermfg=White

" Equalize split when Vim is resized
autocmd VimResized * wincmd =

" Make `jj` and `jk` throw you into normal mode
inoremap jj <esc>
inoremap jk <esc>

" Make creating tabs easier
nnoremap <Leader>w <C-w>

" Make moving between the tabs easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Split opening
set splitbelow
set splitright

" Detect filetypes automatically
filetype plugin indent on

" Refresh changed files automatically  
set autoread

" Enable colorschemes
syntax on

" Show line numbers
set number

" Stop line breaking
set nowrap

" Visually show when approaching 80 characters boundary
set colorcolumn=81

if $TERM == "xterm-256color"
  set t_Co=256
endif

" colorscheme cake
" set background=light

" Show invisibles
" set list
" set listchars=tab:»-,trail:·,eol:¬

" Indent with spaces
set expandtab
set shiftwidth=2
set softtabstop=2

autocmd FileType go set autoindent noexpandtab tabstop=4 shiftwidth=4

" Enable incremental search
set incsearch

" Ignore case
set ignorecase

" Smart case-sensivity
set smartcase

filetype plugin on

" Install vim-plug if it's not there
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" Fuzzy search files in Vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'digitaltoad/vim-pug'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
call plug#end()
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" Use goimports with vim-go
let g:go_fmt_command = "goimports"
" Don't show a preview window
set completeopt-=preview

nmap <Leader>f :Files<CR>

" Enable Emmet for specific filetypes
let g:user_emmet_install_global = 0
autocmd FileType html,css,js,jsx EmmetInstall

let g:fzf_colors=
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
