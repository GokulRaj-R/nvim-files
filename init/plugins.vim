call plug#begin("~/.vim/plugged")
Plug 'nvim-lua/plenary.nvim'
Plug 'p00f/cphelper.nvim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()


" ===========================================================================================
" Settings
" ===========================================================================================
" Color Scheme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable

" let g:gruvbox_bold=0
" let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox
" colorscheme jellybeans
colorscheme minimalist

" NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Automatically change NerdTree root directory when current root directory changes
augroup DIRCHANGE
    au!
    autocmd DirChanged global :NERDTreeCWD
augroup END

" Python
let g:python3_host_prog = 'C:\Program Files\Python310\python.exe'

" SnipMate
let g:snipMate = { 'snippet_version' : 1 }

let g:airline_section_c = '%-1.3n | %t'
let g:airline_theme='gruvbox'

" CpHelper
let g:cphdir = "D:\\CP\\Contests"
let g:cpp_compile_command = "g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -DGLOCAL -std=c++17 -D_GLIBCXX_ASSERTIONS -O2 solution.cpp -o cpp.out"

