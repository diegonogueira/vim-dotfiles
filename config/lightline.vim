set noshowmode

let g:lightline = {
            \ 'colorscheme': 'nord',
            \ }

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }
let s:p.normal.middle = [[["#FFF", 66], ["#FFF", 235]]]
