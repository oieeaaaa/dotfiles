" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "
" auto-close plugin
Plug 'rstacruz/vim-closer'

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" For code comments
Plug 'preservim/nerdcommenter'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" VueJS syntax highlighting
Plug 'posva/vim-vue'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" === Syntax Highlighting === "
" Syntax highlighting for everything
Plug 'sheerun/vim-polyglot'

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'mhartington/oceanic-next'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()
