 " Vim compiler file
 " Compiler:>helm
 " Maintainer:>  Sergey Bulavintsev <bulavintsev.sergey@gmail.com>
 " Last Change:> 2019 Dec 23

if exists("current_compiler") || v:version < 703
    finish
else
    let current_compiler = "helm"
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=helm\ lint
" Ignore lines beginning with '#'
CompilerSet errorformat =%-G#\ %.%#
" First match lines containing both line and column number
CompilerSet errorformat+=[ERROR]%.%#template:\ %*[a-zA-Z-]/%f:%l:%c:\ %m
" Match lines containing only column
CompilerSet errorformat+=[ERROR]%.%#template:\ %*[a-zA-Z-]/%f:%l:\ %m
" Match lines with filename only
CompilerSet errorformat+=[ERROR]\ %f:\ %m
" All lines not matching any of the above patterns are ignored
CompilerSet errorformat+=%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2:
