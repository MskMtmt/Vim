"Vim設定ファイル(mac)

"-------------------------------------------------------------------------------
" 基本設定
"-------------------------------------------------------------------------------
" 起動時のメッセージを表示しない
set shortmess+=I

"neocomplecache設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
 
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
 
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
   let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

NeoComplCacheEnable

set showtabline=2	" タブを常に表示
set transparency=15	" 透明度を指定

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
 
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
 
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
   let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

"ビープ音を鳴らさない
set visualbell

"カラーを設定
colorscheme twilight

"メニューバーを非表示
set guioptions-=T

"ステータスラインにエンコーディングを表示
set statusline+=[%{&fileencoding}]	

"行番号を表示する
set number

"水平スクロールバーを表示
if has('gui')      
    set guioptions+=b
endif

"日本語入力時にカーソルの色を変更
if has('multi_byte_ime') || has('xim')
    highlight CursorIM guibg=White guifg=NONE
endif

"同時に開くタブ数の最大値を設定
set tabpagemax=30

"ウィンドウの端で折り返さない
set nowrap

"ヤンクした文字は、システムのクリップボードに入れる
set clipboard=unnamed

"クリップボードをWindowsと連携
set clipboard=unnamed

"検索時に大文字を含んでいたら大/小を区別
set smartcase

"自動的にインデントする
set autoindent

"シフト移動幅
set shiftwidth=2

"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

"ファイル内の <Tab> が対応する空白の数
set tabstop=4

"ファイル保存の初期ディレクトリを編集中のディレクトリに変更
set browsedir=buffer

"他で書き換えられたら自動で読み直す
set autoread

"バックアップを取らない
set nobackup

"スワップファイルを作らない
set noswapfile

"ファイルタイプ判定をon
filetype plugin on

"ファイルブラウザは前回終了時のディレクトリを開く
set browsedir=last

"-------------------------------------------------------------------------------
" キーマップ変更
"-------------------------------------------------------------------------------
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

"<C-TAB>でomni補完(vim-ruby)
imap <C-TAB> <C-x><C-o>

"検索結果ハイライトをESCの連打でリセット
nnoremap <ESC><ESC> :nohlsearch<CR>

"矢印キーでWindow を移動できる
nnoremap <silent> <Left>  :wincmd h<CR>
nnoremap <silent> <Right> :wincmd l<CR>
nnoremap <silent> <Up>    :wincmd k<CR>
nnoremap <silent> <Down>  :wincmd j<CR>

"C-lで右のWindowに移動。同様にして、C-hljk でWindowを移動出来る
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>

"Shift+矢印でWindowのサイズ変更
<S-Left>  "縦に縮小
<S-Right> "縦に拡大
<S-Up>    "横に拡大
<S-Down>  "横に縮小


"Rubyコマンド実行
nnoremap ,r :!ruby %<CR>
"Rubyファイル保存時構文チェック
augroup rbsyntaxcheck
  autocmd!
  autocmd BufWrite *.rb w !ruby -c
augroup END


"NERDTreeを起動
nnoremap ,n :NERDTree<CR>

"Ctrl+Tabでタブを切り替える
nnoremap <C-Tab>   gt
nnoremap <C-S-Tab> gT

"挿入モードでCtrl+kを押すとクリップボードの内容を貼り付けられるようにする
inoremap <C-k> <ESC>"*pa

"Ctrl+上下で5行ずつ移動
map <C-Up> <Up><Up><Up><Up><Up>
imap <C-Up> <Up><Up><Up><Up><Up>
map <C-Down> <Down><Down><Down><Down><Down>
imap <C-Down> <Down><Down><Down><Down><Down>

"スペースキーでスクロール
nnoremap <Space> <C-d>
nnoremap <S-Space> <C-u>

"バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"ノーマルモードでもエンターキーで改行を挿入
noremap <CR> o<ESC>

"「,vim」で_gvimrcを開く
nnoremap ,vim :e $VIM/gvimrc<CR>

"「,_」で_.snippetsを開く
nnoremap ,_ :e $VIM/vimfiles/snippets/_.snippets<CR>

"「,t」で新規タブを開く
nnoremap ,t :tabnew<CR>

"「,feu」でファイルエンコーディングをUTF-8に設定
nnoremap ,feu :set fileencoding=utf-8<CR>

"「,fec」でファイルエンコーディングをShift_JISに設定
nnoremap ,fec :set fileencoding=cp932<CR>

"「,fth」でコマンドラインに「:set filetype=html」を入力（Enterで確定）
nnoremap ,fth :set filetype=html

"-------------------------------------------------------------------------------
" オートコマンド
"-------------------------------------------------------------------------------

"vimgrepコマンド実行時に自動的にQuickFixを開く
au QuickfixCmdPost vimgrep cw

"日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0

"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"-------------------------------------------------------------------------------
" 前回終了時のウィンドウ位置を保存、復元
"-------------------------------------------------------------------------------

et g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
  autocmd!
  autocmd VimLeavePre * call s:save_window()
  function! s:save_window()
    let options = [
      \ 'set columns=' . &columns,
      \ 'set lines=' . &lines,
      \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
      \ ]
    call writefile(options, g:save_window_file)
  endfunction
augroup END

if filereadable(g:save_window_file)
  execute 'source' g:save_window_file
endif

"-------------------------------------------------------------------------------
" タブに番号と分かりやすいファイル名を表示する
"-------------------------------------------------------------------------------

function! GuiTabLabel()
  let l:label = ''

  let l:bufnrlist = tabpagebuflist(v:lnum)

  let l:bufname = fnamemodify(bufname(l:bufnrlist[tabpagewinnr(v:lnum) - 1]), ':t')
  let l:label .= l:bufname == '' ? 'No title' : l:bufname

  let l:wincount = tabpagewinnr(v:lnum, '$')
  if l:wincount > 1
    let l:label .= '[' . l:wincount . ']'
  endif

  for bufnr in l:bufnrlist
    if getbufvar(bufnr, "&modified")
      let l:label .= '[+]'
      break
    endif
  endfor

  return l:label
endfunction

set guitablabel=%N:\ %{GuiTabLabel()}

"-------------------------------------------------------------------------------
" プラグイン autocomplpop
" http://www.vim.org/scripts/script.php?script_id=1879
"-------------------------------------------------------------------------------

"Tabで補完候補を巡回可能にする
function! InsertTabWrapper()
        let col = col('.') - 1
        if !col || getline('.')[col - 1] !~ '\k'
                return "\<TAB>"
        else
                if pumvisible()
                        return "\<C-N>"
                else
                        return "\<C-N>\<C-P>"
                end
        endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"-------------------------------------------------------------------------------
" プラグイン zencoding-vim
" http://mattn.github.com/zencoding-vim/
"-------------------------------------------------------------------------------

"展開キーを設定
let g:user_zen_expandabbr_key = '<c-z>'

"-------------------------------------------------------------------------------
" プラグイン HTML文字実体参照の変換を行うスクリプト
" http://www.serendip.ws/archives/335
"-------------------------------------------------------------------------------

vmap <silent> sx :Str2HtmlEntity<cr>
vmap <silent> sr :Entity2HtmlString<cr>


"-------------------------------------------------------------------------------
" プラグイン vimfilter
"
"-------------------------------------------------------------------------------
"セーフモードを無効化する
let g:vimfiler_safe_mode_by_default = 0


"-------------------------------------------------------------------------------
" プラグイン qfixhowm
" メモ機能
"-------------------------------------------------------------------------------

"qfixappにruntimepathを通す(パスは環境に合わせてください)
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/plugins/qfixapp
"キーマップリーダー
let QFixHowm_Key = 'g'
"howm_dirはファイルを保存したいディレクトリを設定。
let howm_dir             = '/Users/masaki/Dropbox/Public/howm'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'
