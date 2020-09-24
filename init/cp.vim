" Run with ith Input File
nnoremap <Leader>1 :!%:r < %:rin_1<CR>
nnoremap <Leader>2 :!%:r < %:rin_2<CR>
nnoremap <Leader>3 :!%:r < %:rin_3<CR>
nnoremap <Leader>4 :!%:r < %:rin_4<CR>
nnoremap <Leader>5 :!%:r < %:rin_5<CR>
nnoremap <Leader>6 :!%:r < %:rin_6<CR>
nnoremap <Leader>7 :!%:r < %:rin_7<CR>
nnoremap <Leader>0 :!%:r < %:rin_0<CR>

" Make ith Input File
nnoremap <silent> <A-1> :tabe %:rin_1<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-2> :tabe %:rin_2<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-3> :tabe %:rin_3<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-4> :tabe %:rin_4<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-5> :tabe %:rin_5<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-6> :tabe %:rin_6<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-7> :tabe %:rin_7<bar>:%d<bar>:put +<CR><bar>:wq<CR>
nnoremap <silent> <A-0> :vsp %:rin_0<CR>

" Open input and output manually
nnoremap <leader>i :e %:rin_
nnoremap <leader>o :e %:rout_

" Compile OR Run
autocmd filetype cpp nnoremap <F2> :w <bar> Dispatch g++ -Wall -Wextra -DLOCAL -std=c++17 -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F3> :w <bar> Dispatch g++ -Wall -Wextra -DLOCAL -std=c++17 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F4> :term %:r<CR>
autocmd filetype cpp nnoremap <F5> :!%:r < %:rin_1 > %:rout_
