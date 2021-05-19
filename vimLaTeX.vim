function Clatex()
	" compile latex document with pdflatex
    write
    let g:filename = expand('%:p') 
    silent execute '!pdflatex "'.g:filename.'"'
"    let l:pdfname  = substitute(g:filename, "\\.tex", ".pdf", "g")
"    silent execute "!AcroRd32.exe ".l:pdfname
"    silent execute '!start texworks '.l:pdfname.'"'
endfunction

function Clatexc()
	" compile latex document with pdflatex -shell-escape
    write
    let g:filename = expand('%:p') 
    silent execute '!pdflatex -shell-escape "'.g:filename.'"'
"    let l:pdfname  = substitute(g:filename, "\\.tex", ".pdf", "g")
"    silent execute "!AcroRd32.exe ".l:pdfname
"    silent execute "!start texworks ".l:pdfname
endfunction

function Biber()
	" use biber for bibliography
    let g:filename = expand('%:p') 
    let g:filename = substitute(g:filename, "\\.tex", "", "g")
    execute '!biber "'.g:filename.'"'
endfunction 

function OpenPDF()
	" open the PDF
    let g:filename = expand('%:p') 
    let l:pdfname  = substitute(g:filename, "\\.tex", ".pdf", "g")
"    silent execute "!AcroRd32.exe ".l:pdfname
    silent execute '!start texworks "'.l:pdfname.'"'
endfunction

command Clatex :call Clatex()
command Clatexc :call Clatexc()
command Biber :call Biber()
command OpenPDF :call OpenPDF()
