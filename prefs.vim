"filetype
syntax on

set encoding=utf-8
set ffs=unix,dos,mac

if has("gui_gtk2")
    set guifont=Anonymous\ Pro\ for\ Powerline\ 11
elseif has("gui_macvim")
    set guifont=Anonymous\ Pro\ for\ Powerline:h11
elseif has("gui_win32")
    set guifont=Anonymous\ Pro\ for\ Powerline:h11
end

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.md :call DeleteTrailingWS()

"powerline fonts
let g:airline_powerline_fonts=1

"fix airline not showing up
set laststatus=2


"snipmate
let g:snips_author = "Alexander O'Connor <Alex.OConnor@scss.tcd.ie>"
let g:snips_github = "http://www.github.com/oconnoat"
let g:snips_email = "Alex.OConnor@scss.tcd.ie"

"mappings
" ,, for nerd tree
nmap <Leader>, :NERDTreeToggle <CR>

" ,p for tab paging
nmap <Leader>p :tabp <CR>

nmap <Leader>ds :call DeleteTrailingWS() <CR>

"tab settings
set tabstop=4
set shiftwidth=4

set expandtab
set smarttab

"appearance
set number
color jellybeans

"automatically change to current directory
set autochdir

"Set Spelling
nmap <Leader>s :setlocal spell spelllang=en_gb <CR>

"pandoc conversions
nmap <Leader>cx :!pandoc --smart "%" -o "%:r.docx" <CR>
nmap <Leader>cf :!pandoc --smart "%" -o "%:r.pdf" <CR>
nmap <Leader>ch :!pandoc -t html5 --section-divs --css="style.css" --smart "%" -o "%:r.html" <CR>


