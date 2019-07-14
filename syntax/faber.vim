" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match fabIdent "\<[a-zA-Z][a-zA-Z0-9_]*\>"
syn match fabPatCtor "\<#[a-zA-Z][a-zA-Z0-9_]*\>"

" and constants
syn match   fabNumber		"\<\d+\>"

" Keyword definitions
syn keyword fabNamedef name
syn keyword fabTypedef type
syn keyword fabQantifier forall
syn keyword fabStatement match with let in where
syn keyword fabConditional if then else

" Comments
syn match   fabLineComment      "//*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$" contains=@Spell
syn region  fabBlockComment     start="/\*"  end="\*/" contains=fabBlockComment,@Spell

" Define the default highlighting.
" Only when an item doesn't have highlighting yet
hi def link fabIdent Identifier
hi def link fabPatCtor Identifier
hi def link fabQuantifier			  Keyword
hi def link fabStatement			  Statement
hi def link fabConditional			  Conditional
hi def link fabNamedef			  Structure
hi def link fabTypedef			  Typedef
hi def link fabNumber			  Number
hi def link fabConditional			  Conditional
hi def link fabComment		  Comment
hi def link fabBlockComment		  fabComment
hi def link fabLineComment			  fabComment
