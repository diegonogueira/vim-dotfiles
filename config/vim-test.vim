let test#filename_modifier = ":~"
let test#strategy = "asyncrun"

nnoremap , <Nop>
nnoremap <silent> ,tt :TestNearest<CR>
nnoremap <silent> ,tb :TestFile<CR>
nnoremap <silent> ,ta :TestSuite<CR>
nnoremap <silent> ,tr :TestLast<CR>
nnoremap <silent> ,tv :TestVisit<CR>
