function Clatex()
    let g:filename = expand('%:p') 
    execute "!pdflatex ".g:filename
    let l:pdfname  = substitute(g:filename, "\\.tex", ".pdf", "g")
    execute "!AcroRd32.exe ".l:pdfname
endfunction

function Biber()
    let g:filename = expand('%:p') 
    let g:filename = substitute(g:filename, "\\.tex", "", "g")
    execute "!biber ".g:filename
endfunction 


command Clatex :call Clatex()
command Biber :call Biber()
