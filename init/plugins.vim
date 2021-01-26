call plug#begin("~/.vim/plugged")
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tomlion/vim-solidity'
Plug 'pangloss/vim-javascript'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mattn/emmet-vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'skywind3000/asyncrun.vim'
call plug#end()


" ===========================================================================================
" Settings
" ===========================================================================================
" Color Scheme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable

let g:gruvbox_bold=0
let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox
colorscheme jellybeans

" NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Python
let g:python3_host_prog = 'C:\Users\Gokul\AppData\Local\Programs\Python\Python38\python.EXE'

" Fzf
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:airline_section_c = '%-1.3n | %t'
let g:airline_theme='gruvbox'
