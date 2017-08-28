set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
 Plugin 'https://github.com/scrooloose/nerdtree'
 Plugin 'https://github.com/majutsushi/tagbar'
 Plugin 'https://github.com/fatih/vim-go'


 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

"基础设置
set nocp     " nocompatible vi 
set ru
""显示当前光标所在位置在文件中的行号、列号，以及对应的整个文件的百分比
set hls      "搜索时高亮显示被找到的文本
set is       "搜索时在未完全输入完毕要检索的文本时就开始检索
syntax on    "打开关键字上色

set backspace=indent,eol,start  " 设置删除格式
set whichwrap=b,s,<,>,[,]   "对某一个或几个按键开启到头后自动折向下一行的功能
set encoding=utf-8    "设置当前字符编码为 UTF-8
set langmenu=zh_CN.UTF-8   "使用中文菜单，并使用 UTF-8 编码
language message zh_CN.UTF-8   "使用中文提示信息
set background=dark      "背景使用黑色
set viminfo='20,<1000

"文本编辑设置
set sw=4   "自动缩进的时候，缩进尺寸为 4 个空格
set ts=4   "Tab 宽度为 4 个字符


""断行设置
set tw=78  "设置光标超过 78 列的时候折行
set lbr    "不在单词中间断行


"编码设置
set showmatch   "显示括号配对情况
set cin    "使用“V”命令选中一段文本后，按“=”将这段文本重新调整缩进格式
set cino=:0g0t0(sus  "设定 C/C++ 风格自动缩进的选项
set ai     "打开普通文件类型的自动缩进
