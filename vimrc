set nocompatible              " be iMproved, required
set backspace=indent,eol,start
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

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
 Plugin 'https://github.com/ervandew/supertab'


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
"language message zh_CN.UTF-8   "使用中文提示信息
set background=dark      "背景使用黑色
set viminfo='20,<1000

"文本编辑设置
set sw=4   "自动缩进的时候，缩进尺寸为 4 个空格
set ts=4   "Tab 宽度为 4 个字符


""断行设置
set tw=500
set lbr    "不在单词中间断行
set pastetoggle=<F12>	"粘贴保持原有换行格式


"编码设置
set showmatch   "显示括号配对情况
set cin    "使用“V”命令选中一段文本后，按“=”将这段文本重新调整缩进格式
set cino=:0g0t0(sus  "设定 C/C++ 风格自动缩进的选项
set ai     "打开普通文件类型的自动缩进

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
set foldenable              " 开始折叠
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码


"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
""光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


let g:go_fmt_command = "goimports"
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 
let g:go_disable_autoinstall = 0

"快捷键
map <F6> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

nmap <C-j> :vertical resize -3<CR>
nmap <C-k> :vertical resize +3<CR>


