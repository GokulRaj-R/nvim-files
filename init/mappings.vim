" Toggle
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nmap <leader>c cdCD

" QuickFix
nnoremap <leader>z :cclose<CR>
nnoremap z<leader> :copen<CR>

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
cnoremap <S-Insert> <C-r>*
inoremap <S-Insert> <C-r>*

" Save and Close
nnoremap <leader>x  <Esc><Bar>:w<CR><Bar>:close<CR>
inoremap <leader>x  <Esc><Bar>:w<CR><Bar>:close<CR>

" Commenting
nmap <C-\> gcc
vmap <C-\> gc

" Open Terminal Split
nnoremap <leader>ht :vsp<bar>:term<CR>
nnoremap <leader>t :10sp<bar>:term<CR>

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
