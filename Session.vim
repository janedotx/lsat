let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <D-BS> 
imap <M-BS> 
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
imap <F5> :GundoToggle
imap <D-t> :CtrlP
imap <D-/> <Plug>NERDCommenterTogglei
inoremap <silent> <S-Tab> =snipMate#BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <Plug>ClojureReplDownHistory. :call b:vimclojure_repl.downHistory()
inoremap <Plug>ClojureReplUpHistory. :call b:vimclojure_repl.upHistory()
inoremap <Plug>ClojureReplEvaluate. G$:call b:vimclojure_repl.enterHook()
inoremap <Plug>ClojureReplEnterHook. :call b:vimclojure_repl.enterHook()
imap <D-9> 9gt
imap <D-8> 8gt
imap <D-7> 7gt
imap <D-6> 6gt
imap <D-5> 5gt
imap <D-4> 4gt
imap <D-3> 3gt
imap <D-2> 2gt
imap <D-1> 1gt
imap <D-0> 0gt
imap <D-[> <<i
imap <D-]> >>i
imap <silent> <F4> :set invpaste:set paste?
xnoremap 	 s:let g:snipmate_content_visual=getreg( 1 )
snoremap <silent> 	 i<Right>=snipMate#TriggerSnippet()
nnoremap <silent>  :CtrlP
nmap ! <Plug>Kwbd
nmap o <Plug>ZoomWin
snoremap  b<BS>
snoremap % b<BS>%
snoremap ' b<BS>'
nmap :ssess :source ~/lsat/Session.vim
nmap ;t :tabnew
nmap < :tabp
nmap > :tabn
inoremap ï o
nnoremap K :NERDTree .
xmap S <Plug>VSurround
snoremap U b<BS>U
nmap [YY <Plug>unimpairedLineBase64Encode
xmap [Y <Plug>unimpairedBase64Encode
nmap [Y <Plug>unimpairedBase64Encode
nmap [xx <Plug>unimpairedLineXmlEncode
xmap [x <Plug>unimpairedXmlEncode
nmap [x <Plug>unimpairedXmlEncode
nmap [uu <Plug>unimpairedLineUrlEncode
xmap [u <Plug>unimpairedUrlEncode
nmap [u <Plug>unimpairedUrlEncode
nmap [yy <Plug>unimpairedLineStringEncode
xmap [y <Plug>unimpairedStringEncode
nmap [y <Plug>unimpairedStringEncode
xmap [e <Plug>unimpairedMoveUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
snoremap \ b<BS>\
map \zw :ZoomWin
map \rt :TagbarToggle
map \n :NERDTreeToggle
nmap \gp :Git push
nmap \gc :Gcommit
nmap \gl :Glog
nmap \gd :Gdiff
nmap \gs :Gstatus
nmap \gb :Gblame
map \R :VroomRunNearestTest
map \r :VroomRunTestFile
nmap <silent> \w\t <Plug>VimwikiTabMakeDiaryNote
nmap <silent> \w\w <Plug>VimwikiMakeDiaryNote
nmap <silent> \w\i <Plug>VimwikiDiaryGenerateLinks
nmap <silent> \wi <Plug>VimwikiDiaryIndex
nmap <silent> \ws <Plug>VimwikiUISelect
nmap <silent> \wt <Plug>VimwikiTabIndex
nmap <silent> \ww <Plug>VimwikiIndex
nmap \ca <Plug>NERDCommenterAltDelims
xmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
nmap \cA <Plug>NERDCommenterAppend
xmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
xmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
xmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
nmap \c$ <Plug>NERDCommenterToEOL
xmap \cn <Plug>NERDCommenterNested
nmap \cn <Plug>NERDCommenterNested
xmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
xmap \c  <Plug>NERDCommenterToggle
nmap \c  <Plug>NERDCommenterToggle
xmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
xmap \Nr <Plug>NrrwrgnBangDo
xmap \nr <Plug>NrrwrgnDo
vnoremap <silent> \\w :call EasyMotion#WB(1, 0)
onoremap <silent> \\w :call EasyMotion#WB(0, 0)
nnoremap <silent> \\w :call EasyMotion#WB(0, 0)
vnoremap <silent> \\t :call EasyMotion#T(1, 0)
onoremap <silent> \\t :call EasyMotion#T(0, 0)
nnoremap <silent> \\t :call EasyMotion#T(0, 0)
vnoremap <silent> \\n :call EasyMotion#Search(1, 0)
onoremap <silent> \\n :call EasyMotion#Search(0, 0)
nnoremap <silent> \\n :call EasyMotion#Search(0, 0)
vnoremap <silent> \\k :call EasyMotion#JK(1, 1)
onoremap <silent> \\k :call EasyMotion#JK(0, 1)
nnoremap <silent> \\k :call EasyMotion#JK(0, 1)
vnoremap <silent> \\j :call EasyMotion#JK(1, 0)
onoremap <silent> \\j :call EasyMotion#JK(0, 0)
nnoremap <silent> \\j :call EasyMotion#JK(0, 0)
vnoremap <silent> \\gE :call EasyMotion#EW(1, 1)
onoremap <silent> \\gE :call EasyMotion#EW(0, 1)
nnoremap <silent> \\gE :call EasyMotion#EW(0, 1)
vnoremap <silent> \\f :call EasyMotion#F(1, 0)
onoremap <silent> \\f :call EasyMotion#F(0, 0)
nnoremap <silent> \\f :call EasyMotion#F(0, 0)
vnoremap <silent> \\e :call EasyMotion#E(1, 0)
onoremap <silent> \\e :call EasyMotion#E(0, 0)
nnoremap <silent> \\e :call EasyMotion#E(0, 0)
vnoremap <silent> \\b :call EasyMotion#WB(1, 1)
onoremap <silent> \\b :call EasyMotion#WB(0, 1)
nnoremap <silent> \\b :call EasyMotion#WB(0, 1)
vnoremap <silent> \\W :call EasyMotion#WBW(1, 0)
onoremap <silent> \\W :call EasyMotion#WBW(0, 0)
nnoremap <silent> \\W :call EasyMotion#WBW(0, 0)
vnoremap <silent> \\T :call EasyMotion#T(1, 1)
onoremap <silent> \\T :call EasyMotion#T(0, 1)
nnoremap <silent> \\T :call EasyMotion#T(0, 1)
vnoremap <silent> \\N :call EasyMotion#Search(1, 1)
onoremap <silent> \\N :call EasyMotion#Search(0, 1)
nnoremap <silent> \\N :call EasyMotion#Search(0, 1)
vnoremap <silent> \\ge :call EasyMotion#E(1, 1)
onoremap <silent> \\ge :call EasyMotion#E(0, 1)
nnoremap <silent> \\ge :call EasyMotion#E(0, 1)
vnoremap <silent> \\F :call EasyMotion#F(1, 1)
onoremap <silent> \\F :call EasyMotion#F(0, 1)
nnoremap <silent> \\F :call EasyMotion#F(0, 1)
vnoremap <silent> \\E :call EasyMotion#EW(1, 0)
onoremap <silent> \\E :call EasyMotion#EW(0, 0)
nnoremap <silent> \\E :call EasyMotion#EW(0, 0)
vnoremap <silent> \\B :call EasyMotion#WBW(1, 1)
onoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nnoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nnoremap <silent> \T :BuffergatorTabsClose
nnoremap <silent> \t :BuffergatorTabsOpen
nnoremap <silent> \B :BuffergatorClose
nnoremap <silent> \b :BuffergatorOpen
map \= =
nmap \hs :set hlsearch! hlsearch?
nmap <silent> \fc /\v^[<=>]{7}( .*|$)
nmap <silent> \tw :set invwrap:set wrap?
nmap <silent> \ul :t.|s/./=/g|:nohls
map \et :tabe %%
map \ev :vsp %%
map \es :sp %%
map \ew :e %%
nmap <silent> \md :!mkdir -p %:p:h
nmap <silent> \cd :lcd %:h
nmap \L mQgewvu`Q
nmap \U mQgewvU`Q
nmap \l mQviwu`Q
nmap \u mQviwU`Q
nmap \fef ggVG=
nmap ]YY <Plug>unimpairedLineBase64Decode
xmap ]Y <Plug>unimpairedBase64Decode
nmap ]Y <Plug>unimpairedBase64Decode
nmap ]xx <Plug>unimpairedLineXmlDecode
xmap ]x <Plug>unimpairedXmlDecode
nmap ]x <Plug>unimpairedXmlDecode
nmap ]uu <Plug>unimpairedLineUrlDecode
xmap ]u <Plug>unimpairedUrlDecode
nmap ]u <Plug>unimpairedUrlDecode
nmap ]yy <Plug>unimpairedLineStringDecode
xmap ]y <Plug>unimpairedStringDecode
nmap ]y <Plug>unimpairedStringDecode
xmap ]e <Plug>unimpairedMoveDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/`'
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map <M-Down> }
map <M-Up> {
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=snipMate#BackwardsSnippet()
vmap <C-Down> ]egv
vmap <C-Up> [egv
nmap <C-Down> ]e
nmap <C-Up> [e
nmap <F5> :GundoToggle
map <D-t> :CtrlP
map <D-F> :Ack 
map <D-/> <Plug>NERDCommenterToggle
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
xnoremap <silent> <Plug>unimpairedMoveDown :exe 'normal! m`'|exe '''<,''>move''>+'.v:count1``
xnoremap <silent> <Plug>unimpairedMoveUp :exe 'normal! m`'|exe '''<,''>move--'.v:count1``
nmap <silent> <Plug>unimpairedTLast :exe "tlast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedTFirst :exe "tfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedTNext :exe "tnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedTPrevious :exe "tprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQLast :exe "clast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQFirst :exe "cfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQNext :exe "cnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQPrevious :exe "cprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLLast :exe "llast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLFirst :exe "lfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLNext :exe "lnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLPrevious :exe "lprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBLast :exe "blast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBFirst :exe "bfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBNext :exe "bnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBPrevious :exe "bprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedALast :exe "last ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAFirst :exe "first ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedANext :exe "next ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAPrevious :exe "previous ".(v:count ? v:count : "")
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
xnoremap <SNR>60_VisualNrrwBang :call nrrwrgn#VisualNrrwRgn(visualmode(),'!')
xnoremap <SNR>60_VisualNrrwRgn :call nrrwrgn#VisualNrrwRgn(visualmode(),'')
nnoremap <silent> <Plug>Kwbd :Kwbd
nmap <D-E> :RerunSpec
nmap <D-L> :RunSpecLine
nmap <D-R> :RunSpec
nnoremap <Plug>ClojureCloseResultBuffer. :call vimclojure#ResultWindow.CloseWindow()
nnoremap <Plug>ClojureReplHatHook. :call b:vimclojure_repl.hatHook()
nnoremap <Plug>ClojureStartLocalRepl. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#StartRepl"), [ b:vimclojure_namespace ]])
nnoremap <Plug>ClojureStartRepl. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#StartRepl"), [  ]])
nnoremap <Plug>ClojureEvalParagraph. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalParagraph"), [  ]])
nnoremap <Plug>ClojureEvalToplevel. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalToplevel"), [  ]])
vnoremap <Plug>ClojureEvalBlock. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalBlock"), [  ]])
nnoremap <Plug>ClojureEvalLine. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalLine"), [  ]])
nnoremap <Plug>ClojureEvalFile. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalFile"), [  ]])
nnoremap <Plug>ClojureMacroExpand1. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MacroExpand"), [ 1 ]])
nnoremap <Plug>ClojureMacroExpand. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MacroExpand"), [ 0 ]])
nnoremap <Plug>ClojureRunTests. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#RunTests"), [ 0 ]])
nnoremap <Plug>ClojureRequireFileAll. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#RequireFile"), [ 1 ]])
nnoremap <Plug>ClojureRequireFile. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#RequireFile"), [ 0 ]])
nnoremap <Plug>ClojureGotoSourceInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#GotoSource"), [ input("Symbol to go to: ") ]])
nnoremap <Plug>ClojureGotoSourceWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#GotoSource"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureSourceLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#SourceLookup"), [ input("Symbol to look up: ") ]])
nnoremap <Plug>ClojureSourceLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#SourceLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureMetaLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MetaLookup"), [ input("Symbol to look up: ") ]])
nnoremap <Plug>ClojureMetaLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MetaLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureFindDoc. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#FindDoc"), [  ]])
nnoremap <Plug>ClojureJavadocLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#JavadocLookup"), [ input("Class to lookup: ") ]])
nnoremap <Plug>ClojureJavadocLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#JavadocLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureDocLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#DocLookup"), [ input("Symbol to look up: ") ]])
nnoremap <Plug>ClojureDocLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#DocLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureToggleParenRainbow. :call vimclojure#ProtectedPlug(function("vimclojure#ToggleParenRainbow"), [  ])
nnoremap <Plug>ClojureAddToLispWords. :call vimclojure#ProtectedPlug(function("vimclojure#AddToLispWords"), [ expand("<cword>") ])
map <D-9> 9gt
map <D-8> 8gt
map <D-7> 7gt
map <D-6> 6gt
map <D-5> 5gt
map <D-4> 4gt
map <D-3> 3gt
map <D-2> 2gt
map <D-1> 1gt
map <D-0> 0gt
vmap <D-j> ]egv
vmap <D-k> [egv
noremap <D-Down> <C-End>
noremap <D-Up> <C-Home>
nmap <D-j> ]e
nmap <D-k> [e
omap <D-[> <<
omap <D-]> >>
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
map <Up> gk
map <Down> gj
nmap <silent> <F4> :set invpaste:set paste?
xmap <BS> "-d
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 u=snipMate#TriggerSnippet()
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
cmap  =expand("%:p:h") . "/"
inoremap <silent> 	 =snipMate#ShowAvailableSnips()
imap  <Plug>Isurround
imap  <Plug>AlwaysEnd
cnoremap %% =expand('%:h').'/'
cmap w!! %!sudo tee > /dev/null %
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=l
set guifont=Monaco:h14
set guitablabel=%M%t
set helplang=en
set hlsearch
set ignorecase
set incsearch
set isident=@,48-57,_,192-255,$
set langmenu=none
set laststatus=2
set listchars=tab:\ \ ,trail:.,extends:>,precedes:<
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set runtimepath=~/.vim/janus/vim/core/before,~/.vim/janus/vim/core/janus,~/.vim/janus/vim/core/pathogen,~/.vim/janus/vim/colors/getafe,~/.vim/janus/vim/colors/github,~/.vim/janus/vim/colors/irblack,~/.vim/janus/vim/colors/janus-colors,~/.vim/janus/vim/colors/molokai,~/.vim/janus/vim/colors/pyte,~/.vim/janus/vim/colors/sampler-pack,~/.vim/janus/vim/colors/solarized,~/.vim/janus/vim/colors/vividchalk,~/.vim/janus/vim/langs/arduino,~/.vim/janus/vim/langs/clojure,~/.vim/janus/vim/langs/coffeescript,~/.vim/janus/vim/langs/csv,~/.vim/janus/vim/langs/cucumber,~/.vim/janus/vim/langs/git,~/.vim/janus/vim/langs/haml,~/.vim/janus/vim/langs/handlebars,~/.vim/janus/vim/langs/haskell,~/.vim/janus/vim/langs/javascript,~/.vim/janus/vim/langs/less,~/.vim/janus/vim/langs/markdown,~/.vim/janus/vim/langs/mustache,~/.vim/janus/vim/langs/nodejs,~/.vim/janus/vim/langs/puppet,~/.vim/janus/vim/langs/rails,~/.vim/janus/vim/langs/rspec,~/.vim/janus/vim/langs/ruby,~/.vim/janus/vim/langs/scala,~/.vim/janus/vim/langs/scss,~/.vim/janus/vim/langs/tasks,~/
set shiftwidth=2
set smartcase
set statusline=%f\ %m\ %rLine:%l/%L[%p%%]Col:%vBuf:#%n[%b][0x%B]
set tabstop=2
set termencoding=utf-8
set wildignore=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*.swp,*~,._*
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/lsat/app/controllers/lsat_test_controller.rb
badd +0 ~/lsat/db/schema.rb
silent! argdel *
edit ~/lsat/db/schema.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=\\|^\\s*create_table\\s\\+[:'\"]
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$,-
setlocal keywordprg=ri\ -T
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/lsat,~/lsat/app,~/lsat/app/models,~/lsat/app/controllers,~/lsat/app/helpers,~/lsat/config,~/lsat/lib,~/lsat/app/views,~/lsat/test,~/lsat/test/unit,~/lsat/test/functional,~/lsat/test/integration,~/lsat/app/*,~/lsat/vendor,~/lsat/vendor/plugins/*/lib,~/lsat/vendor/plugins/*/test,~/lsat/vendor/rails/*/lib,~/lsat/vendor/rails/*/test,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/1.9.1/x86_64-darwin12.2.0
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/lsat/tmp/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p327/lib/ruby/1.9.1/x86_64-darwin12.2.0/tags,~/lsat/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
