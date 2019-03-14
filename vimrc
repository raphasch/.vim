
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
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

set autoindent
set tabstop=4
set smartindent
set shiftwidth=4
set softtabstop=0 
set noexpandtab
set cindent
set smarttab

set showcmd
set cursorline
filetype indent on
set  showmatch
"non case sensitive searching in file, partial matches and highlighting of search query"
"set ic"
set incsearch
set hlsearch
"searches subfolders recursively; tab completion as well for :find command
set path+=**
set wildmenu


