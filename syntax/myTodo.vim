" Vim syntax file
" Language:     My Todo Lists
" Maintainer:   Jordan Eldredge
" Latest Revision:  May 4th, 2012

if exists("b:current_syntax")
  finish
endif

"-----------------------------------------------------------------/
"   My Todo comments
"-----------------------------------------------------------------/

" Actuall comments (first vim command)
syn match Comment "^#.*$"

" Contexts
syn match Constant "^\s*@.*$"
" Projects
syn match Identifier "^\s*+.*$"
" Completed statuses (c = cancled, x = complete)
syn match Comment "^\s*[cx] .*$"
" Waiting status (w = waiting)
syn match Ignore "^\s*w .*$"

" Map Leader+c to mark an action as cancled
nnoremap <leader>c 0wic <C-R>=strftime("%Y-%m-%d %T")<CR> <ESC>0

" Map Leader+x to mark an action as complete
nnoremap <leader>x 0wix <C-R>=strftime("%Y-%m-%d %T")<CR> <ESC>0


let b:current_syntax = "myTodo"
