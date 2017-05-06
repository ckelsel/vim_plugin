" .vimrc - Vim configuration file.
"
" Copyright (c) 2010 Jeffy Du. All Rights Reserved.
"
" Maintainer: Jeffy Du <jeffy.du@gmail.com>
" Created: 2010-01-01
" LastChange: 2010-04-22

" GENERAL SETTINGS: {{{1
" To use VIM settings, out of VI compatible mode.
set nocompatible
" Enable file type detection.
filetype plugin indent on
" Syntax highlighting.
syntax on
" Setting colorscheme
colorscheme koehler
"color darkblue
" Other settings.
set autoindent
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set nobackup
set cindent
set cinoptions=:0
set cursorline
set completeopt=longest,menuone
set noexpandtab
set fileencoding=utf-8
set fileencodings=utf-8,cp936,gb2312,gbk,gb18030
set fileformat=unix
set foldenable
set foldmethod=marker
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=l
set helpheight=10
set helplang=cn
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
"set mouse=a
"set number
set pumheight=10
set ruler
set scrolloff=5
set shiftwidth=4
set showcmd
set smartindent
set smartcase
set tabstop=4
set termencoding=utf-8
set textwidth=80
set whichwrap=h,l
set wildignore=*.bak,*.o,*.e,*~
set wildmenu
set wildmode=list:longest,full
set wrap

" AUTO COMMANDS: {{{1
" auto expand tab to blanks
"autocmd FileType c,cpp set expandtab
" Restore the last quit position when open file.
autocmd BufReadPost *
    \ if line("'\'") > 0 && line("'\"") <= line("$") |
    \ exe "normal g'\"" |
    \ endif

" SHORTCUT SETTINGS: {{{1
" Set mapleader
let mapleader=","
" Space to command mode.
nnoremap <space> :
vnoremap <space> :
" Switching between buffers.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
inoremap <C-h> <Esc><C-W>h
inoremap <C-j> <Esc><C-W>j
inoremap <C-k> <Esc><C-W>k
inoremap <C-l> <Esc><C-W>l
" "cd" to change to open directory.
let OpenDir=system("pwd")
nmap <silent> <leader>cd :exe 'cd ' . OpenDir<cr>:pwd<cr>

function GPLV2()
    call setline(1,"/**-------------------------------------------------------------------------")
    call append (2, " * ")
    call append (3, " * Copyright (C) 2015 KunMing Xie <ckelsel@hotmail.com>")
    call append (4, " * ")
    call append (5, " * This program is free software; you can redistribute it and/or modify")
    call append (6, " * it under the terms of the GNU General Public License as published by")
    call append (7, " * the Free Software Foundation; either version 2 of the License, or")
    call append (8, " * (at your option) any later version.")
    call append (9, " * ")
    call append (10, " * This program is distributed in the hope that it will be useful,")
    call append (11, " * but WITHOUT ANY WARRANTY; without even the implied warranty of")
    call append (12, " * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the")
    call append (13, " * GNU General Public License for more details.")
    call append (14, " * ")
    call append (15, " * You should have received a copy of the GNU General Public License along")
    call append (16, " * with this program; if not, write to the Free Software Foundation, Inc.,")
    call append (17, " * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.")
    call append (18, " */")
endf
map gpl :call GPLV2()

function OS_WIN_POSIX()
    call setline(line("."),"#if defined(OS_WIN)")
    call setline(line(".")+1,"#elif defined(OS_POSIX)")
    call setline(line(".")+2,"#endif")
endf
map wp :call OS_WIN_POSIX()

function Apache()
    call setline(1,"/* Copyright 2017 kunming.xie")
    call append (1, " *")
    call append (2, " * Licensed under the Apache License, Version 2.0 (the \"License\");")
    call append (3, " * you may not use this file except in compliance with the License.")
    call append (4, " * You may obtain a copy of the License at")
    call append (5, " *")
    call append (6, " *    http://www.apache.org/licenses/LICENSE-2.0")
    call append (7, " *")
    call append (8, " * Unless required by applicable law or agreed to in writing, software")
    call append (9, " * distributed under the License is distributed on an \"AS IS\" BASIS,")
    call append (10, " * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.")
    call append (11, " * See the License for the specific language governing permissions and")
    call append (12, " * limitations under the License.")
    call append (13, " */")
endf
map apl :call Apache()

function ApacheOctave()
    call setline(1,"%% Copyright 2017 kunming.xie")
    call append (1, " %")
    call append (2, " % Licensed under the Apache License, Version 2.0 (the \"License\");")
    call append (3, " % you may not use this file except in compliance with the License.")
    call append (4, " % You may obtain a copy of the License at")
    call append (5, " %")
    call append (6, " %    http://www.apache.org/licenses/LICENSE-2.0")
    call append (7, " %")
    call append (8, " % Unless required by applicable law or agreed to in writing, software")
    call append (9, " % distributed under the License is distributed on an \"AS IS\" BASIS,")
    call append (10, " % WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.")
    call append (11, " % See the License for the specific language governing permissions and")
    call append (12, " % limitations under the License.")
    call append (13, "%%")
endf
map aplo :call ApacheOctave()

function AddTitle()
    call setline(1,"/**-------------------------------------------------------------------------")
    call append (1," * @file " . expand("%:t"))
    call append (2," *" )
    call append (3," * @author xiekm@yunchao.com" )
    call append (4," *" )
    call append (5," * @date " . strftime("%Y-%m-%d"))
    call append (6," *" )
    call append (7," * @brief " )
    call append (8," *" )
    call append (9," * @version " )
    call append (10," *" )
    call append (11," *------------------------------------------------------------------------*/")
endf
map title :call AddTitle()

function AddVCN()
    call setline(1, "\/\/")
    call append( 1, "\/\/  " . expand("%:t"))
    call append( 2, "\/\/")
    call append( 3, "\/\/  Created by XieKunming on " . strftime("%Y/%m/%d"))
    call append( 4, "\/\/  Copyright (C) 2017年 浙江云巢科技有限公司. All rights reserved.")
    call append( 5, "\/\/")
    call append( 6, "")
endf
map vcn :call AddVCN()


function AddTitlePrivate()
    call setline(1,"/**-------------------------------------------------------------------------")
    call append (1," * @file " . expand("%:t"))
    call append (2," *" )
    call append (3," * @author ckelsel@hotmail.com" )
    call append (4," *" )
    call append (5," * @date " . strftime("%Y-%m-%d"))
    call append (6," *" )
    call append (7," * @brief " )
    call append (8," *" )
    call append (9," * @version " )
    call append (10," *" )
    call append (11," *------------------------------------------------------------------------*/")
endf
map mytitle :call AddTitlePrivate()



function AddCdemo()
    call setline(1,"#include <stdio.h>")
    call append (1,"#include <stdlib.h>")
    call append (2,"#include <string.h>")
    call append (3,"")
    call append (4,"int main(int argc, char **argv)")
    call append (5,"{")
    call append (6,"    return 0;")
    call append (7,"}")
endf
map cdm :call AddCdemo()

function AddCxxdemo()
    call setline(1,"#include <iostream>")
    call append (1,"using namespace std;")
    call append (2,"")
    call append (3,"int main(int argc, char **argv)")
    call append (4,"{")
    call append (5,"    return 0;")
    call append (6,"}")
endf
map cxdm :call AddCxxdemo()

function AddDebugNotice()
endf

function AddSvnLog()
    call setline(1,"Author: xiekunming")
    call append (1,"Description: ")
    call append (2,"1. ")
endf
map svnlog :call AddSvnLog()

function AddGitLog()
    call setline(1,"Author: ckelsel")
    call append (1,"Description: ")
    call append (2,"1. ")
endf
map gitlog :call AddGitLog()


" PLUGIN SETTINGS: {{{1
" taglist.vim
let g:Tlist_Auto_Update=1
let g:Tlist_Process_File_Always=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Show_One_File=1
let g:Tlist_WinWidth=25
let g:Tlist_Enable_Fold_Column=0
let g:Tlist_Auto_Highlight_Tag=1
" NERDTree.vim
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeQuitOnOpen=1
" cscope.vim
if has("cscope")
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif
" OmniCppComplete.vim
let g:OmniCpp_DefaultNamespaces=["std"]
let g:OmniCpp_MayCompleteScope=1
let g:OmniCpp_SelectFirstItem=2
" VimGDB.vim
if has("gdb")
    set asm=0
    let g:vimgdb_debug_file=""
    run macros/gdb_mappings.vim
endif
" LookupFile setting
let g:LookupFile_TagExpr='"./tags.filename"'
let g:LookupFile_MinPatLength=2
let g:LookupFile_PreserveLastPattern=0
let g:LookupFile_PreservePatternHistory=1
let g:LookupFile_AlwaysAcceptFirst=1
let g:LookupFile_AllowNewFiles=0
" Man.vim
source $VIMRUNTIME/ftplugin/man.vim
" snipMate
let g:snips_author="Du Jianfeng"
let g:snips_email="cmdxiaoha@163.com"
let g:snips_copyright="SicMicro, Inc"
" plugin shortcuts
function! RunShell(Msg, Shell)
    echo a:Msg . '...'
    call system(a:Shell)
    echon 'done'
endfunction
nmap <F2> :TlistToggle<cr>
nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :MRU<cr>
nmap <F5> <Plug>LookupFile<cr>
nmap <F6> :vimgrep /<C-R>=expand("<cword>")<cr>/ **/*.c **/*.h<cr><C-o>:cw<cr>
"nmap <F9> :call RunShell("Generate tags", "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
"nmap <F10> :call HLUDSync()<cr>
nmap <F11> :call RunShell("Generate filename tags", "~/.vim/shell/genfiletags.sh")<cr>
nmap <F12> :call RunShell("Generate cscope", "cscope -Rb")<cr>:cs add cscope.out<cr>
nmap <leader>sa :cs add cscope.out<cr>
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<cr><cr>
nmap <leader>zz <C-w>o
nmap <leader>gs :GetScripts<cr>

nmap <C-N> :tabnext<CR>
nmap <C-P> :tabp<CR>
nmap <F9> :cn<CR>
nmap <F10> :cp<CR>
nmap <Space> :
set ts=4
set sw=4
set expandtab


set tags=~/tags
autocmd GUIEnter * simalt ~x
