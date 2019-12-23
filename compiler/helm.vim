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

CompilerSet errorformat=[ERROR]%.%#template:\ %*[a-zA-Z-]/%f:%l:\ %m,%-G%.%

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2:
