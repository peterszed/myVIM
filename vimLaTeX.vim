function Clatex()
    let g:filename = expand('%:p') 
"    echo g:filename
    execute "!pdflatex ".g:filename
    let l:pdfname  = substitute(g:filename, "\\.tex", ".pdf", "g")
"    echo l:pdfname
    execute "!AcroRd32.exe ".l:pdfname
endfunction

command Clatex :call Clatex()
