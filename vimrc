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
 Plugin 'VundleVim/Vundle.vim'

 " My Bundles here:
 Plugin 'desert-warm-256'
 Plugin 'dunckr/vim-monokai-soda'
 Plugin 'scrooloose/nerdtree'
 Plugin 'scrooloose/syntastic'
 Plugin 'hail2u/vim-css3-syntax'
 Plugin 'skammer/vim-css-color'
 Plugin 'pangloss/vim-javascript'
 Plugin 'tpope/vim-markdown'
 Plugin 'ervandew/supertab'
 Plugin 'bling/vim-airline'
 Plugin 'tpope/vim-surround' 
 Plugin 'MarcWeber/vim-addon-mw-utils'
 Plugin 'tomtom/tlib_vim'
 Plugin 'tpope/vim-repeat'
 Plugin 'tpope/vim-fugitive'
 Plugin 'L9'

  
  
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
