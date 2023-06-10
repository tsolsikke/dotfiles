set nocompatible " vi互換しない
filetype off

"call vundle#end()
filetype plugin indent on

" その他カスタム設定を以下に記入
" ale
let g:ale_sign_colum_always=1 "シンボルカラム表示したまま
let g:ale_sign_error='!!' "エラーシンボル変更
let g:ale_sign_warning='==' "警告シンボル変更
highlight ALLErrorSign ctermbg=red
highlight ALEWarningSign ctermbg=yellow

"vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1 " vim起動時に有効化
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=grey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgray
let g:indent_guides_guide_size=1
colorscheme default " これしないとなんかエラーでる
" ################################
" 以下デフォルト設定
"
"---------------------------------
" 文字コード・改行コードの自動判定と設定 

" ファイルを読み込む時の、文字コード自動判別の順番
set encoding=utf-8
" set fileencodings=sjis,cp932,euc-jp,utf-8

" Vim起動時に、強制する設定
" vimの内部文字コード （これを書くと、上記の優先度設定が無視されます）
" set encoding=sjis
" JIS系の文字コードは先頭に記述する必要があります。
" また、set encodingで指定した文字コードを含める場合は一番最後に記述します。
" これは、先頭や途中に含めてしまうと、以降に指定した文字コードは
" 無視されてしまうためです。

" ファイルのエンコーディング（改行コードの種類）
set fileformats=unix,dos,mac
"set fileformat=dos,unix,mac

"----------------------------
set number " 行番号表示
highlight LineNr ctermfg=yellow ctermbg=8
syntax on " 色表示
"set ruler " 右下に行列番号表示
set title " タイトル表示
highlight SpecialKey term=bold ctermfg=255 ctermbg=22
set list " 不可視文字を表示
set listchars=tab:>-,trail:-,eol:$,extends:>,precedes:<,nbsp:%
set colorcolumn=80,100 " 80行目に色を付ける
set showcmd " 入力中のコマンドをステータスに表示
set laststatus=2 " ステータスライン常に表示
set showmatch " 括弧入力時の対応する括弧を表示
set hlsearch " 検索文字列のハイライト有効
set smartcase " 検索に大文字を含んでいたら区別する
set wildmenu "コマンドモードの補完
" ステータスラインに表示する情報の指定-----------------------
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [ENC=%{&fileencoding}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v,%L][%p%%]
" ステータスラインの色
highlight StatusLine term=NONE cterm=NONE ctermfg=black ctermbg=white
"----------------------------
"インデント------------------
set tabstop=2 " 1つのタブに対応する空白の数
set softtabstop=2
set shiftwidth=2 " インデント1つに使われる空白の数(smartindentにも対応)
set noexpandtab " タブを挿入時、代わりに空白を使わない
set autoindent " 改行時に前の行のインデント継続
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減
"----------------------------
set backspace=indent,eol,start " バックスペース有効化
set ambiwidth=double " 全角記号の位置ズレに対応
"カーソル--------------------
set cursorline " カーソル行を強調表示$
set cursorcolumn " カーソル列を強調表示
highlight CursorLine cterm=NONE ctermbg=235
highlight CursorColumn cterm=NONE ctermbg=235
set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行移動が可能
" 行が折り返し表示の場合、表示単位でカーソルを移動する__
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
" 全角スペースの背景変更-----
highlight DoubleByteSpace term=underline ctermbg=red
match DoubleByteSpace /　/
"----------------------------
" 不可視文字色、文字列の設定
highlight SpecialKey term=bold ctermfg=255 ctermbg=239
set list " 不可視文字を表示↲
" set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

"---------------------------
highlight Type ctermfg=cyan
highlight Comment ctermfg=darkgreen
highlight Statement ctermfg=magenta
highlight String ctermfg=darkyellow
highlight Constant ctermfg=lightcyan
highlight SpecialChar ctermfg=yellow

"括弧補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>



