%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . -0.2) (0 . -0.4) (0 . -0.4) (0 . 0)) \etc
tieShapeB = \shape #'((0 . -0.5) (0 . -0.5) (-1 . -0.5) (-1 . -0.5)) \etc
tieShapeC = 
  \shape #'((0.8 . -0.8) (0.8 . -0.9) (-0.6 . -0.9) (-0.6 . -0.8)) \etc
tieShapeD = \shape #'((0 . -0.5) (0 . -0.5) (-1 . -0.5) (-1 . -0.5)) \etc
tieShapeE = \shape #'((0 . -0.2) (0 . -0.4) (0 . -0.4) (0 . 0)) \etc

beamPositionsA = \once \override Beam.positions = #'(3.75 . 3.75)
beamPositionsB = \once \override Beam.positions = #'(4 . 4)

moveRestA = \once \override Rest.X-offset = 1.25
moveRestB = \once \override Rest.X-offset = 1.25
moveRestC = \once \override Rest.X-offset = 1.25
moveRestD = \once \override Rest.X-offset = 1.25

moveNoteA = \once \override NoteColumn.X-offset = -1
moveNoteB = \once \override NoteColumn.X-offset = -1
moveNoteC = \once \override NoteColumn.X-offset = -1
moveNoteD = \once \override NoteColumn.X-offset = -1

%%% Music %%%

global = {
  \time 3/4
  \key af \major
}

rightHandUpper = \relative {
  \voiceOne 
  \beamPositionsA c''8 c~ \beamPositionsB c[ c]~ \beamPositionsB c c |
  \oneVoice r16 af gf f  gf c ef df  c bf af gf |
  \voiceOne df'8 df~  df16 c df8~  df16 c df8 |
  \oneVoice r16 ef df c  df af f' ef  df c bf af |
  g!16 f ef d  ef8. g32 bf  df!8.-. af16 |
  g16 c bf af  bf8. df32 f  bf8.-. df,16 |
  c16 f ef df  ef af ef df  c ef c bf |
  af16 df c bf  c f c bf  af c af g |
  
  \barNumberCheck 9
  f16 bf af g  af c af g  f af f ef |
  \voiceOne d16 f af8~  af16 g af8~  af16 f' bf, af |
  \oneVoice g32 af bf16 ef,8~  ef16 c f af  g f ef d |
  ef32 d c16 af'8~  af16 ef af c  bf! af g f |
  g32 f ef16 c'8~  c16 g c ef  d c bf af |
  bf32 af g16 ef'8~  ef16 bf ef g  f ef d c |
  d32 ef f16 bf, c  d ef f g  af f ef d |
  bf'16 g32 f ef f g16  af, f' d ef  g, ef' f, d' |
  
  \barNumberCheck 17
  \voiceOne ef8 ef~  ef16 d ef8~  ef16 d ef8 |
  \oneVoice r16 ef df! c  df g bf af  g f ef df |
  \voiceOne \beamPositionsA c8 c~ \beamPositionsB c[ c]~ \beamPositionsB c c |
  \oneVoice r16 bf af g  af ef c' bf  af g f ef |
  d16 ef d c  d f bf, c  d ef f g |
  af16 bf af g  af c f, g  af bf c d |
  ef16 af, g f  g bf g f  ef df'! c bf |
  \voiceOne c8. ef16  ef8. af16 af4~ |
  
  \barNumberCheck 25
  af16 g, f e  f af f ef  df c' bf af |
  bf8. df16  df8. g16 g4~ |
  g16 f, e d  e g e d  c bf'! af g |
  af8. c16  c8. f16 f4~ |
  f16 gf f e  \oneVoice f bf f ef  df f df c |
  bf16 ef df c  df f df c  bf df bf af! |
  gf16 cf bf a  bf df bf af  gf bf gf f |
  e8~ e32 d e f  g!8~ g32 f g af  bf8 r |
  
  \barNumberCheck 33
  r32 c d e f8~  f32 c bf af bf16 df  \voiceOne g,16 bf8.~ |
  bf8 af~  af[ af]~  af af |
  \oneVoice r16 g f e  f af c bf  af g f ef |
  \voiceOne bf'8 bf~  bf16 a bf8~  bf16 a bf8 |
  \oneVoice r16 f, g a  bf c df c  ef df c bf |
  e16 df! c bf  g' df! c bf  bf' af g f |
  df'! af g f  e8~ e32 g bf e  g8. bf,16 |
  af16 df! c bf  c f c bf  af c af g |
  
  \barNumberCheck 41
  f16 bf a g  a c a g  f c' f, ef |
  df16 c' bf a  bf df bf af  gf bf gf f |
  ef16 af gf f  gf bf gf f  ef bf' ef, df |
  c32 df ef16 a,8~  a16 c ef gf  f ef df c |
  df32 ef f16 bf,8~  bf16 df gf bf  af gf f ef |
  f32 gf af16 df,8~  df16 f bf df  c bf af gf |
  af32 gf f16 df'8~  df16 af df f  ef df c bf |
  c32 df ef16 af, bf  c df ef f  gf ef df c |
  
  \barNumberCheck 49
  af'16 f32 ef df ef f16  gf,16 ef' c df  f, df' ef, c' |
  \voiceOne df8 df~  df16 c df8~  df16 c df8 |
  \oneVoice r16 df cf bf  cf f af gf  f ef df cf |
  \voiceOne bf16 f'32 gf af8~  af16 gf af8~  af16 gf af8 |
  \oneVoice r16 af gf f  gf bf ef, f  gf ef a bf |
  \voiceOne s8 ef,~  ef16 df ef8~  ef16 df ef8 |
  \oneVoice r16 ef df c  df f bf, c  df bf e f |
  \voiceOne s8 bf,~  bf16 af bf8~  bf16 af bf8 |
  
  \barNumberCheck 57
  \oneVoice r32 bf af g af8~  af32 g f e f16 af  df af g f |
  \voiceOne ef!16 bf'32 c df8~  df16 c df8~  df16 c df8 |
  df32 c bf af <ef' gf>8~  q[ q]~  q q |
  \oneVoice r16 gf f ef  f af df, ef  f df bf c |
  df16 bf ef, f  g af bf c  df c bf df |
  c32 ef f g af16 c,  ef( d) g( f)  ef( d c bf) |
  af32 g f16 g bf  ef,8 r r4 |
  r16 df c bf  c ef c bf  af gf' f ef |
  
  \barNumberCheck 65
  f8~ f32 af bf c  df8~ df32 af df ef f4~ |
  f16 ef,d c  d f d c  bf af' g f |
  g8~ g32 bf ef f  g8~ g32 ef g af  bf8~ bf32 ef, bf' c |
  df16 c bf af  g bf g f  ef bf' ef, df! |
  c8~ c32 df ef f  gf8. af,16  \voiceOne gf'4~ |
  gf16 gf f ef  \oneVoice df f df c  bf f' bf, af |
  g!16 f' ef df  c ef c bf  af ef' af, g |
  f16 ef' df c  bf df bf af  g df' g, f |
  
  \barNumberCheck 73
  ef16 df' cf bf  af cf af gf  ff cf' ff, ef |
  df16 cf' bff af  bff32 ff gf af bff cf df eff  ff16 df bff af |
  \voiceOne \appoggiatura { af8 } g!4  r8. f'!16  \appoggiatura { f8 } ef4 |
  b8.\rest f16 af4( g8.)\prall af16 |
  af4 \oneVoice r r |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  << 
    { \voiceThree af'8 af-\tieShapeB ~ af16 g af8-\tieShapeB ~ af16 g af8 | }
    \\ 
    { r16 ef8.~ ef8 ef~ ef[ ef] | }
  >>
  s2. |
  <<
    { 
      \moveRestA b'16\rest \moveNoteA af8.-\tieShapeA ~ \hideNoteHead af8 s4. |
    }
    \\
    { f8 f~ <f af>[ q]~  q q | }
  >> 
  s2. * 5 |
  
  \barNumberCheck 9
  s2. |
  \set tieWaitForNote = ##t
  \voiceFour d4*1/4~ f8.~  <d f>8 q~  q16 r r8 |
  s2. * 6 |
  
  \barNumberCheck 17
  <<
    { 
      \moveRestB c'16\rest \moveNoteB bf8.-\tieShapeC ~ \hideNoteHead bf8 s4. |
    }
    \\
    { g8 g~  <g bf>[ q]~  q q | }
  >> 
  s2. |
  << 
    { \voiceThree af8 af-\tieShapeB ~ af16 g af8-\tieShapeB ~ af16 g af8 | } 
    \\ 
    { r16 ef8.~ ef8 ef~ ef[ ef] | }
  >>
  s2. * 4 |
  \voiceFour r8. c'16  c8. <c ef>16 q4~ |
  
  \barNumberCheck 25
  q16 s8. s2 |
  r8. bf16  bf8. <bf df>16 q4~ |
  q16 s8. s2 |
  r8. af16  af8. <af c>16 q4~ |
  q16 s8. s2 |
  s2. * 3 |
  
  \barNumberCheck 33
  s2 r8 f16 e |
  <<
    { \voiceThree f8 f-\tieShapeD ~ f16 e f8-\tieShapeD ~ f16 e f8 | }
    \\
    { r16 c8.~  c8 c~  c[ c] | }
  >> 
  s2. |
  <<
    { \moveRestC g'16\rest \moveNoteC f8.-\tieShapeE ~ \hideNoteHead f8 s4. | }
    \\
    { df8 df~  <df f>[ q]~  q q | }
  >> 
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. |
  <<
    { 
      \moveRestD b'16\rest \moveNoteD af8.-\tieShapeA ~ \hideNoteHead af8 s4. |
    }
    \\
    { f8 f~  <f af>[ q]~ q q | }
  >> 
  s2. |
  bf4*1/4~ f'8.~  <bf, f'>8 <d f>~  q q |
  s2. |
  c'32 f, ef df c8~  c[ <a c>]~  q q |
  s2. |
  g'32 c, bf af g8~  g[ <e g>]~  q q |
  
  \barNumberCheck 57
  s2. |
  ef4*1/4~ bf'8.~  <ef, bf'>8 <g bf>~  q q~ |
  q16 s32 \hideNoteHead af~ af8~  af16 bf c8~  c16 bf c8 |
  s2. * 5 |
  
  \barNumberCheck 65
  s2. * 4 |
  s4 s8. \hideNoteHead af16~ <af c ef>4~ |
  q16 s8. s2 |
  s2. * 2 |
  
  \barNumberCheck 73
  s2. * 2 |
  <bf,! ef!>4 r8. <g' df'>16 <af c!>4 |
  s8. f16 ef2 |
  ef4 s2 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \voiceTwo af8. bf32 c  ef,8. g32 af  c,8. df32 ef |
  \oneVoice af,8 r r4 r |
  \voiceTwo af'8. c32 df  f,8. gf32 af  df,8. ef32 f |
  \oneVoice af,8 r r4 r |
  r16 af' g f  g bf ef, f  g af bf c |
  \clef treble df16 ef df c  df f bf, c  df ef f g |
  af8~ af32 g af bf  c8. bf16  af8. g16 |
  f8~ f32 e f g  af8. g16  f8. ef16 |
  
  \barNumberCheck 9
  d8~ d32 c d ef  f8. ef16  d8. c16 |
  \clef bass bf8~ bf32 g f ef  d8. ef32 f  bf,8. c32 d |
  ef8~ ef32 d c bf  af8. f16  bf8. b16 |
  c8~ c32 ef f g  af8. f16  d8. bf'16 |
  ef,8~ ef32 g af bf  c8. af16  f8. d'16 |
  g,8~ g32 bf c d  ef8. c16  af8. f'16 |
  <af, bf f'>4 r8 r32 ef' d c  bf8~ bf32 c bf af |
  g8. ef16  c'8. af16  bf8. bf,16 |
  
  \barNumberCheck 17
  ef8. f32 g  bf,8. d32 ef  g,8. af32 bf |
  ef,8 r r4 r |
  ef'8. g32 af  c,8. df32 ef  af,8. bf32 c |
  ef,8 r r4 r |
  r16 g' f ef  f8. af32 g  af8. ef16 |
  d8~ d32 c d ef  f16 ef d c  bf af g f |
  ef8~ ef32 bf' c d  ef8~ ef32 d ef f  g8~ g32 ef f g |
  af,16 df' c bf  af c af g  f af f ef |
  
  \barNumberCheck 25
  df8~ df32 af bf c  df8~ df32 c df ef  f8~ f32 df ef f |
  g,16 c' bf af  g bf g f  e g e d |
  c8~ c32 g af bf  c8~ c32 b c d  e8~ e32 c d e |
  f,16 bf' af g  f af f ef!  df! f df c |
  bf8~ bf32 a' bf c  df8~ df32 c df ef  f8 r |
  r8 r32 f, g a  bf8~ bf32 a bf c  df8 r |
  r8 r32 df, ef f  gf8~ gf32 f gf af  bf8 r |
  r16 af g! f  e bf' e, d  c! g' c, bf |
  
  \barNumberCheck 33
  af8~ af32 af' bf c  df!8. bf16  c8. c,16 |
  f8. g32 af  c,8. e32 f  af,8. bf32 c |
  f,8 r r4 r |
  f'8. a32 bf  df,8. ef32 f  bf,8. c32 df |
  f,8 r8 r4 r |
  r16 f' e d  e g c, d!  e f g af |
  bf16 c bf af  bf df g, af  bf c d e |
  \clef treble f8~ f32 e f g  af8. g16  f8. ef16 |
  
  \barNumberCheck 41
  df8~ df32 c df ef  f8. ef16  df8. c16 |
  \clef bass bf8~ bf32 a bf c  df8. c16  bf8. af16 |
  gf8~ gf32 f gf af  bf8. af16  gf8. f16 |
  ef8~ ef32 f ef df  c8~ c32 df c bf  a8. f'16 |
  bf,8~ bf32 df ef f  gf8~ gf32 f ef df  c8. af'16 |
  df,8~ df32 f gf af  bf8~ bf32 af gf f  ef8. c'16 |
  f,8~ f32 af bf c  df8~ df32 c bf af  gf8. ef'16 |
  <gf, af ef'>4 r8  r32 df' c bf  af8~ af32 bf af gf |
  
  \barNumberCheck 49
  f8. df16 bf'8. gf16 af8. af,16 |
  df8. ef32 f  af,8. c32 df  f,8. gf32 af |
  df,8 r r4 r |
  d'8~ d32 f gf af  bf8. af16  gf8.\prall f16 |
  ef8~ ef32 bf' c d  ef8. df16  c8.\prall bf16 |
  a8~ a32 c, df ef  f8. ef16  df8.\prall c16 |
  bf8~ bf32 f' g a  bf8. af16  g8.\parenthesize \prall f16 |
  e8~ e32 g, af bf  c8. bf16  af8.\prall g16 |
  
  \barNumberCheck 57
  f8~ f32 af bf c  df8. c16  bf8.\prall af16 |
  g8~ g32 bf c df  ef8. df16 c8.\prall bf16 |
  af8~ af32 ef' f gf  af8. gf16  f8.\prall ef16 |
  df8~ df32 af' bf c  df8~ df32 ef df c  bf8~ bf32 c bf af |
  g!8~ g32 af g f  ef8 r r  r32 ef f g |
  af8~ af32 f g af  bf8. af16  bf8. bf,16 |
  ef8. f16  g32 af g f g16 bf  ef, df! c bf |
  af8~ af32 ef'f g  af8. ef16  c8. af'16 |
  
  \barNumberCheck 65
  df,16 bf' af gf  f af f ef  df f df c |
  bf8~ bf32 f' g! af  bf8. f16  d8. bf'16 |
  ef,16 ef' df! c  bf df bf af  g bf g f |
  ef8~ ef32 bf' c df \clef treble ef8~ ef32 d ef f  g8~ g32 ef f g |
  af16 f ef df  c ef c bf \clef bass af32 bf c bf af gf f ef |
  df8~ df32 f gf? af  bf8~ bf32 af bf c  df8. c16 |
  bf8~ bf32 ef, f g  af8~ af32 g af bf  c8. bf16 |
  af8~ af32 af, bf c  df8~ df32  c df ef  ff8. af,16 |
  
  \barNumberCheck 73
  g8~ g32 ef g bf  cf8~ cf32 bf af gf  af8~ af32 gf ff ef |
  ff8~ ff32 af bff cf  df8. df,16  df'8.\mordent df16 |
  df4 r8. bf16 c4 |
  <<
    { r8. cf'16  bf8. df!32 c! df4 | c }
    \\
    { r8. d,16  ef2 | af,4 }
  >> r r |
}

tempi = {
  \tempo 4 = 58
  s2. * 73 |
  s4 \tempo 4 = 54 s \tempo 4 = 50 s |
  \tempo 4 = 40 s2. |
  s2 \tempo 4 = 36 s4 |
  \tempo 4 = 15 s4 \tempo 4 = 58 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
}

preludeSeventeenNotes =
\score {
  \header {
    title = "Prelude 17"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 9
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

preludeSeventeenMidi =
\book {
  \bookOutputName "prelude-17-bwv-886"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
