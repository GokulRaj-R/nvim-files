" Run with ith Input File
nnoremap <Leader>1 :!%:r < %:rin_1<CR>
nnoremap <Leader>2 :!%:r < %:rin_2<CR>
nnoremap <Leader>3 :!%:r < %:rin_3<CR>
nnoremap <Leader>4 :!%:r < %:rin_4<CR>
nnoremap <Leader>5 :!%:r < %:rin_5<CR>
nnoremap <Leader>6 :!%:r < %:rin_6<CR>
nnoremap <Leader>7 :!%:r < %:rin_7<CR>

" Make ith Input File
nnoremap <Leader>i1 :tabe %:rin_1<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <Leader>i2 :tabe %:rin_2<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <Leader>i3 :tabe %:rin_3<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <Leader>i4 :tabe %:rin_4<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <Leader>i5 :tabe %:rin_5<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <Leader>i6 :tabe %:rin_6<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <Leader>i7 :tabe %:rin_7<bar>:%d<bar>:put +<CR><bar>:wq<CR>

" Open input and output manually
nnoremap <leader>ii :e %:rin_
nnoremap <leader>oo :e %:rout_

" Compile OR Run
autocmd filetype cpp nnoremap <F2> :w <bar> !g++ -Wall -Wextra -DLOCAL -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F3> :w <bar> !g++ -Wall -Wextra -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -DLOCAL -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F4> :!%:r<CR>
autocmd filetype cpp nnoremap <F5> :!%:r < %:rin_1 > %:rout_
