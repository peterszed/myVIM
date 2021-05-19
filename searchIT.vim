function! SearchIt()
    execute "normal! `<v`>y"
    let l:searchTerm = getreg("@")
    let l:searchTerm  = substitute(l:searchTerm, "\\s", "+", "g")
    let l:command = "https://google.com/search?q="
    silent execute "! start chrome ".l:command.l:searchTerm  
"    echo l:searchTerm
endfunction

function! OpenIt()
    execute "normal! `<v`>y"
    let l:searchTerm = getreg("@")
    silent execute "! start chrome ".l:searchTerm  
"    echo l:searchTerm
endfunction
" some text here for testing
" github.com
vnoremap goo :call SearchIt()<cr>
vnoremap open :call OpenIt() <cr>
