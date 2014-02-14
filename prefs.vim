"filetype
syntax on

set encoding=utf-8
set ffs=unix,dos,mac

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

function! WordCount()
  let s:old_status = v:statusmsg
  let position = getpos(".")
  exe ":silent normal g\"
  let stat = v:statusmsg
  let s:word_count = 0
  if stat != '--No lines in buffer--'
    let s:word_count = str2nr(split(v:statusmsg)[11])
    let v:statusmsg = s:old_status
  end
  call setpos('.', position)
  return s:word_count 
endfunction


"powerline fonts
let g:airline_powerline_fonts=1

"fix airline not showing up
set laststatus=2


"snipmate
let g:snips_author = "Alexander O'Connor <Alex.OConnor@scss.tcd.ie>"
let g:snips_github = "http://www.github.com/oconnoat"
let g:snips_email = "Alex.OConnor@scss.tcd.ie"

"mappings
nmap <Leader>, :NERDTreeToggle <CR>


"tab settings
set tabstop=4
set shiftwidth=4

set expandtab
set smarttab

"appearance
set number

color jellybeans

