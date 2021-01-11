
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif


set number
colorscheme codedark
syntax enable

set textwidth=78

filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set showcmd
set cursorline
set  showmatch
"non case sensitive searching in file, partial matches and highlighting of search query"
"set ic"
set incsearch
set hlsearch
"searches subfolders recursively; tab completion as well for :find command
set path+=**

"autocomplet that works similar to bash"
set wildmode=longest,list:full
set wildmenu

"back-up files not stored in the directory of vim session"
set backupdir=~/.vim/vimtmp
set directory=~/.vim/vimtmp

