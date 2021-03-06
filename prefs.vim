"filetype
syntax on

set encoding=utf-8
set ffs=unix,dos,mac

if has("gui_gtk2")
    set guifont=Anonymous\ Pro\ for\ Powerline\ 11
elseif has("gui_macvim")
    set guifont=Anonymous\ Pro\ for\ Powerline:h11
elseif has("gui_win32")
    set guifont=Anonymice_Powerline:h11
end

"Windows-specific Fixes
if has("gui_win32")
    set backspace=eol,start,indent
    set directory=.,$TEMP " default dir for swap files
end

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

augroup templates
    autocmd! 
    autocmd BufNewFile  *.py	0r ~/.vim/templates/skeleton.py
augroup END


autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.md :call DeleteTrailingWS()
autocmd BufWrite *.markdown :call DeleteTrailingWS()

nmap <Leader>ds :call DeleteTrailingWS() <CR>
"powerline fonts
let g:airline_powerline_fonts=1

"fix airline not showing up
set laststatus=2

"mappings
" ,, for nerd tree
nmap <Leader>, :NERDTreeToggle <CR>

" ,p for tab paging
nmap <Leader>p :tabp <CR>

"tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

"wrapping
set colorcolumn=80

autocmd BufNewFile,BufRead *.tsv setlocal listchars=tab:>- 
autocmd BufNewFile,BufRead *.csv setlocal listchars=,:>-

"appearance
set number
colorscheme desert-warm-256

"automatically change to current directory
set autochdir
nnoremap <Leader>cd :cd %:p:h<CR>


"Set Spelling
nmap <Leader>s :setlocal spell spelllang=en_gb <CR>

"pandoc conversions
nmap <Leader>cx :!pandoc -f markdown-smart "%" -o "%:r.docx" <CR>
nmap <Leader>cf :!pandoc -f markdown-smart "%" -o "%:r.pdf" <CR>
nmap <Leader>ch :!pandoc -t html5 --section-divs --css="style.css" --smart "%" -o "%:r.html" <CR>
