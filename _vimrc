" fix runtime error r6034
python << EOF
import os, re
path = os.environ['PATH'].split(';')

def is_problem(folder):
    try:
        for item in os.listdir(folder):
            if re.match(r'msvcr\d\d\.dll', item):
                return True
    except:
        pass
    return False

path = [folder for folder in path if not is_problem(folder)]
os.environ['PATH'] = ';'.join(path)
EOF

set encoding=utf-8

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" A Vim plugin that manages your tag files
Plug 'ludovicchabant/vim-gutentags'

" My plugins
Plug 'https://github.com/ckelsel/vim_plugin.git'

" A code-completion engine for Vim http://valloric.github.io/YouCompleteMe/
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Run Async Shell Commands in Vim 8.0 / NeoVim and Output to Quickfix Window
Plug 'skywind3000/asyncrun.vim'

" ALE (Asynchronous Lint Engine) 
Plug 'w0rp/ale'

" Displays function signatures from completions in the command line.
Plug 'Shougo/echodoc.vim'

" Signify (or just Sy) uses the sign column to indicate added,
" modified and removed lines in a file that is managed by a version control system (VCS).
Plug 'mhinz/vim-signify'

" Additional Vim syntax highlighting for C++ (including C++11/14)
Plug 'octol/vim-cpp-enhanced-highlight'

" An asynchronous fuzzy finder which is used to quickly locate files, buffers, mrus, tags, etc. in large project.
Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }

" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Alternate Files quickly (.c --> .h etc)
Plug 'vim-scripts/a.vim'

" Initialize plugin system
call plug#end()

source $VIMRUNTIME/mswin.vim
