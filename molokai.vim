hi clear
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="molokai"
" Support for 256-color terminal
"
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=210
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81
   hi MatchParen      ctermfg=233  ctermbg=238
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=51  ctermbg=25
   hi PmenuSel        ctermfg=25  ctermbg=51
   hi PmenuSbar                   ctermbg=27
   hi PmenuThumb      ctermfg=48

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=232
   hi SpecialKey      ctermfg=245

   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=DarkGrey ctermbg=None
   hi StatusLineNC    ctermfg=Black ctermbg=None
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=240
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Normal          cterm=none
   hi Comment         ctermfg=59
   hi CursorLine                  ctermbg=234 cterm=none
   hi CursorColumn                ctermbg=234
   hi LineNr          ctermfg=Black ctermbg=None
   hi NonText         ctermfg=239
  hi TabLine    cterm=none ctermfg=250 ctermbg=242
  hi TabLineSel cterm=none  ctermbg=235 ctermfg=250
  hi TabLineFill cterm=none ctermbg=244



 hi CtrlPNoEntries ctermfg=238 "the message when no match is found (Error)
 hi CtrlPMatch     ctermfg=166 " the matched pattern (Identifier)
 hi CtrlPLinePre   ctermfg=236" the line prefix '>' in the match window
 "hi CtrlPPrtBase   " the prompt’s base (Comment)
 "hi CtrlPPrtText   " the prompt’s text (|hl-Normal|)
 "hi CtrlPPrtCursor " the prompt’s cursor when moving over the text (Constant)

" hi CtrlPTabExtra  " the part of each line that’s not matched against (Comment)
" hi CtrlPqfLineCol " the line and column numbers in quickfix mode (|hl-Search|)
" hi CtrlPUndoT     " the elapsed time in undo mode (|hl-Directory|)
" hi CtrlPUndoBr    " the square brackets [] in undo mode (Comment)
" hi CtrlPUndoNr    " the undo number inside [] in undo mode (String)
 
 "hi CtrlPMode1 " 'prt' or 'win', also for 'regex' (Character)
 hi CtrlPMode2 ctermfg=247 " 'file' or 'path', also for the local working dir (|hl-LineNr|)
 "hi CtrlPStats " the scanning status (Function)

