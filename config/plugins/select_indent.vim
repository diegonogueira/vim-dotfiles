"
"http://vim.wikia.com/wiki/Visual_selection_of_indent_block
"

function! SelectIndent ()
  let temp_var=indent(line("."))
  while indent(line(".")-1) >= temp_var
    exe "normal k"
  endwhile
  exe "normal V"
  while indent(line(".")+1) >= temp_var
    exe "normal j"
  endwhile
endfun
nmap vii :call SelectIndent()<CR>
