" Open's a url in the default browser... current mac only!
function! OpenUrl (app)
  let line = matchstr (getline('.'), "\\v(http|www\.)[^ \t;,]*")
  exec "!open -a ".a:app." ".line
endfunction
map <leader>guc :call OpenUrl ("Chrome")<CR>
map <leader>guu :call OpenUrl ("Chrome")<CR>
map <leader>gul :call OpenUrl ("Lighthouse")<CR>
