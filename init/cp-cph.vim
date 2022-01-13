" Open ith Input and Output File
function! EditFile(f1)
    execute "CphEdit " . string(a:f1 - 48)
endfunction


" CpHelper Mappings
autocmd filetype cpp nmap <leader>t :w <bar> CphTest<CR>
autocmd filetype cpp nmap <leader>r :w <bar> CphRetest<CR>
autocmd filetype cpp nmap <leader>e :w <bar> call EditFile(getchar())<CR>
nmap <A-q> :CphReceive<CR>
nmap <A-s> :CphStop<CR>

" Manual Compile & Run
autocmd filetype cpp nnoremap <F6> :w <bar> 
      \ !g++ -Wall -Wextra -std=c++17 -O2 % -o cpp.out <CR>

autocmd filetype cpp nnoremap <F7> :w <bar> 
      \ !g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -DGLOCAL -std=c++17 -D_GLIBCXX_ASSERTIONS 
      \ -O2 % -o cpp.out<CR>

autocmd filetype cpp nnoremap <F8> :w <bar> 
      \ !g++ -Wall -Wextra -Wshadow -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -DGLOCAL -std=c++17 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC 
      \ -O2 % -o cpp.out<CR>


autocmd filetype cpp imap <F6> <ESC><F6>
autocmd filetype cpp imap <F7> <ESC><F7>
autocmd filetype cpp imap <F8> <ESC><F8>
