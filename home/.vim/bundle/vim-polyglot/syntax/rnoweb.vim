if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'r-lang') == -1

" Vim syntax file
" Language:    R noweb Files
" Maintainer:  Johannes Ranke <jranke@uni-bremen.de>
" Last Change: 2007 M?r 30
" Version:     0.8
" SVN:	       $Id: rnoweb.vim 69 2007-03-30 08:55:36Z ranke $
" Remarks:     - This file is inspired by the proposal of 
"				 Fernando Henrique Ferraz Pereira da Rosa <feferraz@ime.usp.br>
"			     http://www.ime.usp.br/~feferraz/en/sweavevim.html
"

" Version Clears: {{{1
" For version 5.x: Clear all syntax items
" For version 6.x and 7.x: Quit when a syntax file was already loaded
if version < 600 
  syntax clear
elseif exists("b:current_syntax")
  finish
endif 

syn case match

" Extension of Tex clusters {{{1
runtime syntax/tex.vim
unlet b:current_syntax

syn cluster texMatchGroup add=@rnoweb
syn cluster texEnvGroup add=@rnoweb
syn cluster texFoldGroup add=@rnoweb
syn cluster texDocGroup		add=@rnoweb
syn cluster texPartGroup		add=@rnoweb
syn cluster texChapterGroup		add=@rnoweb
syn cluster texSectionGroup		add=@rnoweb
syn cluster texSubSectionGroup		add=@rnoweb
syn cluster texSubSubSectionGroup	add=@rnoweb
syn cluster texParaGroup		add=@rnoweb

" Highlighting of R code using an existing r.vim syntax file if available {{{1
syn include @rnowebR syntax/r.vim
syn region rnowebChunk matchgroup=rnowebDelimiter start="^<<.*>>=" matchgroup=rnowebDelimiter end="^@" contains=@rnowebR,rnowebChunkReference,rnowebChunk fold keepend
syn match rnowebChunkReference "^<<.*>>$" contained
syn region rnowebSexpr matchgroup=Delimiter start="\\Sexpr{" matchgroup=Delimiter end="}" contains=@rnowebR

" Sweave options command {{{1
syn region rnowebSweaveopts matchgroup=Delimiter start="\\SweaveOpts{" matchgroup=Delimiter end="}"

" rnoweb Cluster {{{1
syn cluster rnoweb contains=rnowebChunk,rnowebChunkReference,rnowebDelimiter,rnowebSexpr,rnowebSweaveopts

" Highlighting {{{1
hi def link rnowebDelimiter	Delimiter
hi def link rnowebSweaveOpts Statement
hi def link rnowebChunkReference Delimiter

let   b:current_syntax = "rnoweb"
" vim: foldmethod=marker:

endif
