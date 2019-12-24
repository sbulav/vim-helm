vim-helm
===================

`vim-helm` is a syntax plugin for helm templates (yaml + gotmpl + sprig + custom).
It also adds helm compiler, letting you populate quickfix window with results
of `helm lint` command.



# Installation
------------

### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

```vim
Plugin 'sbulav/vim-helm'
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'sbulav/vim-helm'
```


# Usage

While editing any of the {Chart.yaml, values.yaml, templates/*.yaml} you should be able to
run
```vim
:make
```
which will populate your quickfix with results of `helm lint` and will focus on first
error.

To make it more convenient, you can use mapping, e.g.
```vim
" Simply run a make command
nnoremap <leader>m :make<cr>
```
