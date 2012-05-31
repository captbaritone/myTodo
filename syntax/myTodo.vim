" Vim syntax file
" Language:     My Todo Lists
" Maintainer:   Jordan Eldredge
" Latest Revision:  April 27th, 2012

if exists("b:current_syntax")
  finish
endif

"-----------------------------------------------------------------/
"   My Todo comments
"-----------------------------------------------------------------/

syn match Constant "^\s*@.*$"
syn match Identifier "^\s*+.*$"
syn match Comment "^\s*x .*$"
syn match Comment "^#.*$"




"----------------------------------------------------------------------------/
"   My Todo keyword highlighting rules
"----------------------------------------------------------------------------/


" hi def link context     Statement
"hi def link todoProject Comment

let b:current_syntax = "myTodo"
