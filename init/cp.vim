" Run with ith Input File
function! RunFile(f1)
  execute "AsyncRun -mode=term -pos=right -focus=0 -cols=50 %:r < %:rin_" . string(a:f1 - 48)
endfunction

" Run with ith Input File and Output File
function! OutputFile(f1)
  execute "AsyncRun -mode=term -pos=right -focus=0 -cols=50 %:r < %:rin_" . string(a:f1 - 48) . " > %:rout_" . string(a:f1 - 48)
endfunction

" Open ith Input File
function! OpenInput(f1)
  execute "15sp %:rin_" . string(a:f1 - 48)
endfunction

" Open ith Output File
function! OpenOutput(f1)
  execute "15sp %:rout_" . string(a:f1 - 48)
endfunction

autocmd filetype cpp nnoremap <silent> <leader>i :call OpenInput(getchar())<CR>
autocmd filetype cpp nnoremap <silent> <leader>m :call OutputFile(getchar())<CR>
autocmd filetype cpp nnoremap <silent> <leader>o :call OpenOutput(getchar())<CR>
autocmd filetype cpp nnoremap <silent> <leader>r :call RunFile(getchar())<CR>

" Make ith Input File
nnoremap <silent> <A-1> :15sp %:rin_1<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-2> :15sp %:rin_2<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-3> :15sp %:rin_3<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-4> :15sp %:rin_4<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-5> :15sp %:rin_5<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-6> :15sp %:rin_6<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-7> :15sp %:rin_7<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-8> :15sp %:rin_8<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
nnoremap <silent> <A-9> :15sp %:rin_9<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
noremap <silent> <A-0> :15sp %:rin_0<CR>

" Compile/Run
autocmd filetype cpp nnoremap <F6> :w <bar> 
      \ AsyncRun -mode=term -pos=right -focus=0 -cols=50 
      \ g++ -Wall -Wextra -DGLOCAL -std=c++17 -O2 % -o %:r -Wl,--stack,268435456<CR>

autocmd filetype cpp nnoremap <F7> :w <bar> 
      \ AsyncRun -mode=term -pos=right -focus=0 -cols=50 
      \ g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -DGLOCAL -std=c++17 -D_GLIBCXX_ASSERTIONS 
      \ -O2 % -o %:r -Wl,--stack,268435456<CR><CR>

autocmd filetype cpp nnoremap <F8> :w <bar> 
      \ AsyncRun -mode=term -pos=right -focus=0 -cols=50 
      \ g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -DGLOCAL -std=c++17 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC 
      \ -O2 % -o %:r -Wl,--stack,268435456<CR><CR>

autocmd filetype cpp nnoremap <F9> :w <bar> AsyncRun -mode=term -pos=external %:r<CR>
autocmd filetype cpp nnoremap <F10> :w <bar> AsyncRun -mode=term -pos=right -focus=0 -cols=50 %:r < 

autocmd filetype cpp imap <F6> <ESC><F6>
autocmd filetype cpp imap <F7> <ESC><F7>
autocmd filetype cpp imap <F8> <ESC><F8>
autocmd filetype cpp imap <F9> <ESC><F9>
autocmd filetype cpp imap <F10> <ESC><F10>
