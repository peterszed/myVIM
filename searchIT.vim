function SearchIt(visualMode)
   if a:visualMode ==# 'v'
        execute "normal! `<v`>y"
    elseif a:visualMode ==# 'V'
        execute "normal! `<v`>y"
    else
        return
    endif 
    let searchTerm = getreg("@")
    let searchTerm  = substitute(searchTerm, "\\s", "+", "g")
    let l:command = "https://google.com/search?q="
    execute "! start chrome ".l:command.l:searchTerm  
"    echo l:searchTerm
endfunction

vnoremap find :call SearchIt(visualmode())<cr>
