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
set noundofile
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
set splitbelow

" AUTO COMMANDS: {{{1
" auto expand tab to blanks
" autocmd FileType c,cpp set expandtab
" Restore the last quit position when open file.

"autocmd BufReadPost *
"    \ if line("'\'") > 0 && line("'\"") <= line("$") |
"    \ exe "normal g'\"" |
"    \ endif

"autocmd BufWritePre  *.{cpp,h,c,cc,hpp,cxx}  call StripTrailingWhite()

function! StripTrailingWhite()
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction


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
    call append (3, " * Copyright (C) 2018 KunMing Xie <kunming.xie@hotmail.com>")
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

function Apache()
    call setline(1,"/* Copyright 2018 kunming.xie")
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
    call setline(1,"%% Copyright 2018 kunming.xie")
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

function AddAstute()
    call setline(1, "\/\/")
    call append( 1, "\/\/  " . expand("%:t"))
    call append( 2, "\/\/")
    call append( 3, "\/\/  Created by XieKunming on " . strftime("%Y/%m/%d"))
    call append( 4, "\/\/  Copyright (C) 2018 Nanjing Astute Software Technology Co., Ltd. All rights reserved.")
    call append( 5, "\/\/")
    call append( 6, "")
endf
map hsr :call AddAstute()

function AddVCN()
    call setline(1, "\/\/")
    call append( 1, "\/\/  " . expand("%:t"))
    call append( 2, "\/\/")
    call append( 3, "\/\/  Created by XieKunming on " . strftime("%Y/%m/%d"))
    call append( 4, "\/\/  Copyright (C) 2018 Zhe Jiang Cloud Nest Technology Co., Ltd. All rights reserved.")
    call append( 5, "\/\/")
    call append( 6, "")
endf
map vcn :call AddVCN()


function AddTitlePrivate()
    call setline(1,"/**-------------------------------------------------------------------------")
    call append (1," * @file " . expand("%:t"))
    call append (2," *" )
    call append (3," * @author kunming.xie@hotmail.com" )
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
    call setline(1,"Author: kunming.xie")
    call append (1,"Description: ")
    call append (2,"1. ")
endf
map gitlog :call AddGitLog()


" PLUGIN SETTINGS: {{{1
" VimGDB.vim
if has("gdb")
    set asm=0
    let g:vimgdb_debug_file=""
    run macros/gdb_mappings.vim
endif

" Man.vim
source $VIMRUNTIME/ftplugin/man.vim

" plugin shortcuts
function! RunShell(Msg, Shell)
    echo a:Msg . '...'
    call system(a:Shell)
    echon 'done'
endfunction

"nmap <C-N> :tabnext<CR>
"nmap <C-P> :tabp<CR>
nmap <Space> :
set expandtab


" 启动最大化
if has('win32')
    "gvim, 而不是vim
    au GUIEnter * simalt ~x
    set encoding=utf-8
    set fileencodings=utf-8,gbk,gb18030,gk2312
    "解决菜单乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    "解决consle输出乱码
    language messages zh_CN.utf-8

    colorscheme evening
endif

"
" YouCompleteMe settings
"
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
set completeopt=menu,menuone
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
"let g:ycm_key_invoke_completion = '<c-z>'
if has('win32')
    let g:ycm_global_ycm_extra_conf = "C:\Users\v\vimfiles\.ycm_extra_conf.py"
else
    let g:ycm_global_ycm_extra_conf = 0
    "~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py"
endif
"noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }



"
" gutentags settings
"
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.vim/cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.vim/cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.vim/cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif


"
" asyncrun settings
"
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

let g:asyncrun_encs = 'gbk'

" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>


"
" ale settings
"
" let g:ale_linters_explicit = 1
" let g:ale_completion_delay = 500
" let g:ale_echo_delay = 20
" let g:ale_lint_delay = 500
" let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_lint_on_insert_leave = 1
" let g:airline#extensions#ale#enabled = 1

" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''

" let g:ale_sign_error = "\ue009\ue009"
" hi! clear SpellBad
" hi! clear SpellCap
" hi! clear SpellRare
" hi! SpellBad gui=undercurl guisp=red
" hi! SpellCap gui=undercurl guisp=blue
" hi! SpellRare gui=undercurl guisp=magenta


"
" LeaderF
"
" CTRL+P 在当前项目搜索文件
" CTRL+N 打开 MRU搜索，搜索最近打开的文件
" ALT+P 打开搜索函数
" ALT+N 打开 Buffer 搜索：
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git','.hg','.idea','.vscode'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
