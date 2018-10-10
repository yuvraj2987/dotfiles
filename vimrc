" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "Add your bundles here
    Plugin 'https://github.com/tpope/vim-fugitive' "So awesome, it should be illegal
    Plugin 'scrooloose/nerdtree' " File explorer
    Plugin 'w0rp/ale' " Async Linter for multiple languages
    Plugin 'vim-airline/vim-airline' " Status Line manger. Works with ale
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end()
    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
    syntax on                      " enable syntax
    set number " enable number
    " Default Indentation follow python
    " No tabs
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set tw=79

    " ale - async linter
    " set error/warning with airline plugin
    let g:airline#extensions#ale#enabled = 1

    " General vim settings for all files
    "
    " Do not write any backup file
    set noswapfile
    set nobackup

    set hidden         " hides buffers instead of closing them. You have to save file/buffer separately.
    set backspace=indent,eol,start
    set number
    set showmatch
    set ignorecase        " ignore cases when searching
    set smartcase        " ignore cases if search pattern is all in lower case,
                        " case sensitive otherwise
    set incsearch        " show search matches as you type.
    set history=1000    " remember more commands
    set undolevels=20
    set title
    set tw=79          " set text width
    " paste mode. Pasting from external source press F2 key to avoid weired
    " formatting
    set pastetoggle=<F2>

    " enable syntax and indentation
    syntax on
    filetype indent plugin on
    " Remove trailing spaces
    autocmd BufWritePre * :%s/\s\+$//e
    " Set jinja filetype
    au BufNewFile,BufRead *.j2 set ft=jinja
    " NERDTREE
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " ALE - Async linter
    " Set error/warning with airline plugin
    let g:airline#extensions#ale#enabled = 1
    let g:ale_linters = {
    \   'python': ['flake-8', 'pylint'],
    \}

    " Ansible files
    au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
    " WePay specific ansible definition
    au BufRead,BufNewFile */infrastructure/*.yml set filetype=yaml.ansible
    au BufRead,BufNewFile */roles/*/tasks/*.yml set filetype=yaml.ansible
    au BufRead,BufNewFile */roles/*/defaults/*.yml set filetype=yaml.ansible
    au BufRead,BufNewFile */roles/*/vars/*.yml set filetype=yaml.ansible


" Setting up Vundle - the vim plugin bundler end
