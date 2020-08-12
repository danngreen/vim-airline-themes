let g:airline#themes#dgmolokai#palette = {}
let g:airline#themes#dgmolokai#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }

" Normal mode
let s:N1 = [ '#080808' , '#e6db74' , 232 , 144 ] " mode
if get(g:, 'airline_dgmolokai_bright', 0)
  let s:N2 = [ '#f8f8f0' , '#232526' , 253 , 208 ] " info
else
  let s:N2 = [ '#f8f8f0' , '#232526' , 253 , 16 ] " info
endif
let s:N3 = [ '#f8f8f0' , '#4654A7' , 253 , 67  ] " statusline was 465457

let g:airline#themes#dgmolokai#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#dgmolokai#palette.normal_modified = {
      \ 'airline_c': [ '#080808' , '#e6db74' , 232 , 144 , '' ] ,
      \ }

" Insert mode
let s:I1 = [ '#080808' , '#66d9ef' , 232 , 81  ]
if get(g:, 'airline_dgmolokai_bright', 0)
  let s:I2 = [ '#f8f8f0' , '#232526' , 253 , 208 ]
else
  let s:I2 = [ '#f8f8f0' , '#232526' , 253 , 16 ]
endif
let s:I3 = [ '#f8f8f0' , '#465457' , 253 , 67  ]


let g:airline#themes#dgmolokai#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dgmolokai#palette.insert_modified = {
      \ 'airline_c': [ '#080808' , '#66d9ef' , 232 , 81 , '' ] ,
      \ }

" Replace mode
let s:R1 = [ '#080808' , '#f92672' , 232 , 161 ]
if get(g:, 'airline_dgmolokai_bright', 0)
  let s:R2 = [ '#f8f8f0' , '#232526' , 253 , 208 ]
else
  let s:R2 = [ '#f8f8f0' , '#232526' , 253 , 16 ]
endif
let s:R3 = [ '#f8f8f0' , '#465457' , 253 , 67  ]

let g:airline#themes#dgmolokai#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#dgmolokai#palette.replace_modified = {
      \ 'airline_c': [ '#080808' , '#f92672' , 232 , 161 , '' ] ,
      \ }

" Visual mode
let s:V1 = [ '#080808' , '#a6e22e' , 232 , 118 ]
if get(g:, 'airline_dgmolokai_bright', 0)
  let s:V2 = [ '#f8f8f0' , '#232526' , 253 , 208 ]
else
  let s:V2 = [ '#f8f8f0' , '#232526' , 253 , 16 ]
endif
let s:V3 = [ '#f8f8f0' , '#465457' , 253 , 67  ]

let g:airline#themes#dgmolokai#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dgmolokai#palette.visual_modified = {
      \ 'airline_c': [ '#080808' , '#a6e22e' , 232 , 118 , '' ] ,
      \ }

" Inactive
let s:IA = [ '#1b1d1e' , '#465457' , 233 , 67 , '' ]
let g:airline#themes#dgmolokai#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#dgmolokai#palette.inactive_modified = {
      \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
      \ }

"airline_tab: visible but not active buffer
"airline_tabsel: active buffer
"airline_tabtype: ?
"airline_tabfill: background color
"airline_tabmod: unsaved active buffer
"airline_tabmod: unsaved non-active buffer (visible??)
" Todo: make non-visible tabs grey
let s:TABBLUE = ['#ffffff', '#4654A7',  231, 29, '']
let s:TABDIMBLUE = ['#000000', '#404040',  231, 29, '']
let s:TABYELLOW = ['#000000', '#e6e674',  231, 36, '']
let s:TABRED = ['#f8f8f8', '#e67000',  231, 88, '']
let s:TABDIMRED = ['#dddddd', '#663000',  231, 88, '']
let s:TABGRAYBG = ['#0fffff', '#2b2b2b',  231, 23, '']
let g:airline#themes#dgmolokai#palette.tabline = {
      \ 'airline_tab':  s:TABBLUE,
      \ 'airline_tabsel':  s:TABYELLOW,
      \ 'airline_tabhid':  s:TABDIMBLUE,
      \ 'airline_tabtype':  ['#0fffff', '#FF5252',  231, 36, ''],
      \ 'airline_tabfill': s:TABGRAYBG,
      \ 'airline_tabmod': s:TABRED,
      \ 'airline_tabmod_unsel':  s:TABDIMRED,
      \ }

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#dgmolokai#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
      \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )
