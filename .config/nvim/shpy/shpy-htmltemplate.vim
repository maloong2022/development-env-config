" Add html template automatically.
autocmd BufNewFile *.html exec ":call SetHtmlTemplate()"
func SetHtmlTemplate()
  if expand("%:e") == 'html'
    call setline(1,"<!DOCTYPE html>")
    call setline(2,"<html lang='en'>")
    call setline(3,"  <head>")
    call setline(4,"    <meta charset='utf-8'>")
    call setline(5,"    <meta http-equiv='X-UA-Compatible' content='IE=edge'>")
    call setline(6,"    <meta name='viewport' content='width=device-width,initial-scale=1.0'>")
    call setline(7,"    <link rel='stylesheet' type='text/css' href='css/style.css' >")
    call setline(8,"    <title>HTML TITLE</title>")
    call setline(9,"  </head>")
    call setline(10,"  <body>")
    call setline(11,"")
    call setline(12,"")
    call setline(13,"  </body>")
    call setline(14,"</html>")
  endif
endfunc

autocmd BufNewFile * normal G

