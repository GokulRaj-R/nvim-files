" " Run with ith Input File
" function! RunFile(f1)
"   execute "AsyncRun -mode=term -pos=right -focus=0 -cols=45 %:r < %:r_" . string(a:f1 - 48) . ".in"
" endfunction

" " Run with ith Input File and Output File
" function! OutputFile(f1)
"   execute "AsyncRun -mode=term -pos=right -focus=0 -cols=45 %:r < %:r_" . string(a:f1 - 48) .".in  > %:r_" . string(a:f1 - 48) . ".out"
" endfunction

" " Open ith Input File
" function! OpenInput(f1)
"   execute "15sp %:r_" . string(a:f1 - 48) . ".in"
" endfunction

" " Open ith Output File
" function! OpenOutput(f1)
"   execute "15sp %:r_" . string(a:f1 - 48) .".out"
" endfunction

" autocmd filetype cpp nnoremap <silent> <leader>i :call OpenInput(getchar())<CR>
" autocmd filetype cpp nnoremap <silent> <leader>m :call OutputFile(getchar())<CR>
" autocmd filetype cpp nnoremap <silent> <leader>o :call OpenOutput(getchar())<CR>
" autocmd filetype cpp nnoremap <silent> <leader>r :call RunFile(getchar())<CR>
" autocmd filetype cpp nnoremap <silent> <leader>t :AsyncRun -mode=term -pos=right -focus=0 -cols=45 sampleRunner %:r<CR>
" autocmd filetype cpp nnoremap <silent> <leader>s :AsyncRun -mode=term -pos=right -focus=0 -cols=45 sampleRunner %:r -s<CR>

" " Make ith Input File
" nnoremap <silent> <A-0> :15sp %:r_0.in<CR>
" nnoremap <silent> <A-1> :15sp %:r_1.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-2> :15sp %:r_2.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-3> :15sp %:r_3.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-4> :15sp %:r_4.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-5> :15sp %:r_5.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-6> :15sp %:r_6.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-7> :15sp %:r_7.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-8> :15sp %:r_8.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>
" nnoremap <silent> <A-9> :15sp %:r_9.in<bar>:%d<bar>:normal "+gP<CR><bar>:wq<CR>

" Compile
autocmd filetype cpp nnoremap <F6> :w <bar> 
      " \ AsyncRun -mode=term -pos=right -focus=0 -cols=45 
      \ g++ -Wall -Wextra -std=c++17 -O2 % -o %:r<CR>

autocmd filetype cpp nnoremap <F7> :w <bar> 
      " \ AsyncRun -mode=term -pos=right -focus=0 -cols=45 
      \ g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -DGLOCAL -std=c++17 -D_GLIBCXX_ASSERTIONS 
      \ -O2 % -o %:r<CR><CR>

autocmd filetype cpp nnoremap <F8> :w <bar> 
      " \ AsyncRun -mode=term -pos=right -focus=0 -cols=45 
      \ g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -DGLOCAL -std=c++17 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC 
      \ -O2 % -o %:r<CR><CR>

" autocmd filetype cpp nnoremap <F9> :w <bar> AsyncRun -mode=term -pos=external %:r<CR>
" autocmd filetype cpp nnoremap <F10> :w <bar> AsyncRun -mode=term -pos=right -focus=0 -cols=45 %:r < 

autocmd filetype cpp imap <F6> <ESC><F6>
autocmd filetype cpp imap <F7> <ESC><F7>
autocmd filetype cpp imap <F8> <ESC><F8>
" autocmd filetype cpp imap <F9> <ESC><F9>
" autocmd filetype cpp imap <F10> <ESC><F10>
