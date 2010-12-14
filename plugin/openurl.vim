" Open's a url in the default browser... current mac only!
function! OpenUrl ()
  let line = getline (".")
  let line = matchstr (line, "\%(http://\|www\.\)[^ ,;\t]*")
  exec "!open ".line
endfunction
map <Leader>so :call OpenUrl ()<CR>

