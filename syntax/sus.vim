" Vim syntax file
" Language: Sus
" Maintainer: mizucoffee
" Credits: Ritsuki Goto
" Filenames: *.sus

if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'sus'
endif

syntax match main /^#ARTIST/
syntax match main /^#BACKGROUND/
syntax match main /^#BASEBPM/
syntax match main /^#DESIGNER/
syntax match main /^#DIFFICULTY/
syntax match main /^#JACKET/
syntax match main /^#MOVIE/
syntax match main /^#MOVIEOFFSET/
syntax match main /^#PLAYLEVEL/
syntax match main /^#REQUEST/
syntax match main /^#SONGID/
syntax match main /^#TITLE/
syntax match main /^#WAVE/
syntax match main /^#WAVEOFFSET/

syntax match comment /^[^#].*/

syntax match atrtil /^#ATR[0-9A-Z]\{2}:/
syntax match atrtil /^#TIL[0-9A-Z]\{2}:/

syntax match sub /^#ATTRIBUTE/
syntax match sub /^#HISPEED/
syntax match sub /^#MEASUREBS/
syntax match sub /^#MEASUREHS/
syntax match sub /^#NOATTRIBUTE/
syntax match sub /^#NOSPEED/

syntax match five /^#BPM[0-9A-Z]\{2}:/
syntax match five /^#\d\{3}[015][0-9A-F]:/

syntax match six /^#\d\{3}[2-4][0-9A-F][0-9A-Z]:/

syntax match body /".*"/

hi link comment Comment
hi link atrtil Constant
hi link main Special
hi link sub Error
hi link five Title
hi link six Type
hi link body String

hi link txtString Special
hi link txtStrin Type
hi link txtStri Error
hi link txtStr String
hi link txtSt Constant

try
  ColorClear
catch
endtry

let b:current_syntax = "sus"

