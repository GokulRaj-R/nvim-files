" Color Scheme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable

let g:gruvbox_bold=0
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" colorscheme dracula

" NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Toggle
nmap <leader>c cdCD
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

nnoremap <leader>z :cclose<CR>
nnoremap z<leader> :copen<CR>

" Python
let g:python3_host_prog = 'C:\Users\Gokul\AppData\Local\Programs\Python\Python38\python.EXE'

" Split movements
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
tnoremap <Esc> <C-\><C-n>
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <C-Tab> :bn<CR>

" Split Resize
nnoremap <silent> <C-Left> :vertical resize -3<CR>
nnoremap <silent> <C-Right> :vertical resize +3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" Copy to clipboard
noremap  <leader>y  "+y
nnoremap  <leader>w  :%y+<CR>

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Commenting
nmap <C-\> gcc
vmap <C-\> gc

" Terminal 
" Remove line numbers
autocmd TermOpen * setlocal nonumber 
" Open Terminal Split
nnoremap <leader>ht :vsp<bar>:term<CR>
nnoremap <leader>t :10sp<bar>:term<CR>

" Fzf
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Buffers
" Mappings to access buffers (don't use \p because a
" delay before pressing p would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>:b<Space>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
