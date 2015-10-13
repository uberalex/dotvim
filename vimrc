let mapleader = ","

set nocompatible               " be iMproved
 filetype off                   " required!


if has("gui_win32")
	set rtp+=~/_vimfiles/bundle/Vundle.vim/
	let path='~/_vimfiles/bundle'
	call vundle#begin(path)
else
	set rtp+=~/.vim/bundle/Vundle.vim/
	call vundle#begin()
end
 
 " let Vundle manage Vundle
 " required! 
 Bundle 'VundleVim/Vundle.vim'

 " My Bundles here:
 Bundle 'desert-warm-256'
 Bundle 'scrooloose/nerdtree'
 Bundle 'scrooloose/syntastic'
 Bundle 'hail2u/vim-css3-syntax'
 Bundle 'skammer/vim-css-color'
 Bundle 'pangloss/vim-javascript'
 Bundle 'tpope/vim-markdown'
 Bundle 'ervandew/supertab'
 Bundle 'bling/vim-airline'
 Bundle 'surround.vim'
 Bundle "MarcWeber/vim-addon-mw-utils"
 Bundle "tomtom/tlib_vim"
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 " Bundle 'Lokaltog/vim-easymotion'
 " Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
  Bundle 'L9'
 " Bundle 'FuzzyFinder'
 " non github repos
" Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...
 call vundle#end()
 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 if filereadable(glob("~/.vim/prefs.vim")) 
    source ~/.vim/prefs.vim
 elseif filereadable(glob("~/_vimfiles/prefs.vim"))
    source ~/_vimfiles/prefs.vim
 endif
