if exists("did_load_csvfiletype")
  finish
endif
let did_load_csvfiletype=1

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufNewFile,BufRead *.ly,*.ily  setf lilypond
augroup END

augroup filetypedetect
  au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
augroup END
