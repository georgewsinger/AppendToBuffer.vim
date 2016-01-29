let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let CoVim_default_port =  0 
let Taboo_tabs = ""
let Tex_DefaultTargetFormat = "pdf"
let UltiSnipsEnableSnipMate =  1 
let UltiSnipsUsePythonVersion = "<tab>"
let UltiSnipsEditSplit = "vertical"
let UltiSnipsExpandTrigger = "<tab>"
let UltiSnipsJumpBackwardTrigger = "<s-tab>"
let UltiSnipsJumpForwardTrigger = "<tab>"
let CoVim_default_name =  0 
let Tex_CompileRule_dvi = "latex -interaction=nonstopmode -file-line-error-style $*"
let UltiSnipsRemoveSelectModeMappings =  1 
let UltiSnipsListSnippets = "<c-tab>"
let Tex_CompileRule_pdf = "pdflatex -interaction=nonstopmode -file-line-error-style $*"
let UltiSnipsPythonPath = "/home/george/Dropbox/george/.vim/bundle/ultisnips/pythonx"
silent only
cd ~/Dropbox/AppendToBuffer/test
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 buffer1
badd +1 buffer2
argglobal
silent! argdel *
argadd buffer1
argadd buffer2
edit buffer1
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 39 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 40 + 40) / 80)
argglobal
edit buffer1
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
2argu
let s:l = 3 - ((2 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 39 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 40 + 40) / 80)
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
