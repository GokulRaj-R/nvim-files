" Run with ith Input File
nnoremap <Leader>1 :!%:r < %:rin_1<CR>
nnoremap <Leader>2 :!%:r < %:rin_2<CR>
nnoremap <Leader>3 :!%:r < %:rin_3<CR>
nnoremap <Leader>4 :!%:r < %:rin_4<CR>
nnoremap <Leader>5 :!%:r < %:rin_5<CR>
nnoremap <Leader>6 :!%:r < %:rin_6<CR>
nnoremap <Leader>7 :!%:r < %:rin_7<CR>
nnoremap <Leader>0 :!%:r < %:rin_0<CR>

" Run with ith Input File and Output File
nnoremap <Leader>r1 :!%:r < %:rin_1 > %:rout_1<CR>
nnoremap <Leader>r2 :!%:r < %:rin_2 > %:rout_2<CR>
nnoremap <Leader>r3 :!%:r < %:rin_3 > %:rout_3<CR>
nnoremap <Leader>r4 :!%:r < %:rin_4 > %:rout_4<CR>
nnoremap <Leader>r5 :!%:r < %:rin_5 > %:rout_5<CR>
nnoremap <Leader>r6 :!%:r < %:rin_6 > %:rout_6<CR>
nnoremap <Leader>r7 :!%:r < %:rin_7 > %:rout_7<CR>
nnoremap <Leader>r0 :!%:r < %:rin_0 > %:rout_0<CR>

" Make ith Input File
nnoremap <silent> <A-1> :vsp %:rin_1<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-2> :vsp %:rin_2<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-3> :vsp %:rin_3<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-4> :vsp %:rin_4<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-5> :vsp %:rin_5<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-6> :vsp %:rin_6<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-7> :vsp %:rin_7<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-0> :vsp %:rin_0<CR>

" Open input and output manually
nnoremap <leader>i :vsp %:rin_
nnoremap <leader>o :vsp %:rout_

" Compile OR Run
autocmd filetype cpp nnoremap <F2> :w <bar> Dispatch g++ -Wall -Wextra -DLOCAL -std=c++17 -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F3> :w <bar> Dispatch g++ -Wall -Wextra -DLOCAL -std=c++17 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F4> :vsp <bar> :term %:r<CR>
autocmd filetype cpp nnoremap <F5> :!%:r < 
