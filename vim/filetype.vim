if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    " Add CSV file detection
    au! BufNewFile,BufRead *.csv setf csv
augroup END
