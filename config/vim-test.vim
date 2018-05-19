let test#filename_modifier = ":~"
let test#strategy = "asyncrun"

nmap <silent> ,tt :TestNearest<CR>
nmap <silent> ,tb :TestFile<CR>
nmap <silent> ,ta :TestSuite<CR>
nmap <silent> ,tr :TestLast<CR>
nmap <silent> ,tv :TestVisit<CR>
