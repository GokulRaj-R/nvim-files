" Run with ith Input File
function! RunFile(f1)
  execute "!%:r < %:rin_" . string(a:f1 - 48)
endfunction

" Run with ith Input File and Output File
function! InOut(f1)
  let num = string(a:f1 - 48)
  execute "!%:r < %:rin_" . num . " > %:rout_" . num
endfunction

" Open ith Input File
function! OpenInput(f1)
  execute "vsp %:rin_" . string(a:f1 - 48)
endfunction

" Open ith Output File
function! OpenOutput(f1)
  execute "vsp %:rout_" . string(a:f1 - 48)
endfunction

autocmd filetype cpp nnoremap <silent> <leader>i :call OpenInput(getchar())<CR>
autocmd filetype cpp nnoremap <silent> <leader>m :call InOut(getchar())<CR>
autocmd filetype cpp nnoremap <silent> <leader>o :call OpenOutput(getchar())<CR>
autocmd filetype cpp nnoremap <silent> <leader>r :call RunFile(getchar())<CR>

" Make ith Input File
nnoremap <silent> <A-1> :vsp %:rin_1<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-2> :vsp %:rin_2<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-3> :vsp %:rin_3<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-4> :vsp %:rin_4<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-5> :vsp %:rin_5<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-6> :vsp %:rin_6<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-7> :vsp %:rin_7<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-8> :vsp %:rin_8<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-9> :vsp %:rin_9<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
noremap <silent> <A-0> :vsp %:rin_0<CR>

" Compile/Run
autocmd filetype cpp nnoremap <F2> :w <bar> Dispatch g++ -Wall -Wextra -DLOCAL -std=c++17 -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F3> :w <bar> Dispatch g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -Wconversion -DLOCAL -std=c++17 -D_GLIBCXX_ASSERTIONS -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> Dispatch g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -Wconversion -DLOCAL -std=c++17 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -O2 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F5> :vsp <bar> :term %:r<CR>
autocmd filetype cpp nnoremap <F6> :!%:r < 

autocmd filetype cpp imap <F2> <ESC><F2>
autocmd filetype cpp imap <F3> <ESC><F3>
autocmd filetype cpp imap <F4> <ESC><F4>
autocmd filetype cpp imap <F5> <ESC><F5>
