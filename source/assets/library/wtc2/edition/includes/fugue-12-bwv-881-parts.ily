%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(-5 . -4)

%%% Music %%%

global = {
  \time 2/4
  \key f \minor
}

rightHandUpper = \relative {
  \partial 8 c''8 |
  f,8\parenthesize \mordent f  f df'16 bf |
  e,8 e  e16 f g af |
  bf16 af g af  bf df c bf |
  \voiceOne af16 g f g  af bf c d |
  ef16 d c d  ef g f ef |
  d16 c b a   g a b c |
  d8 f af! b, |
  c8 ef g c |
  
  \barNumberCheck 9
  df,!8 c' bf df, |
  c8 ef af c, |
  bf8 af' g bf, |
  af16 c f ef! df!4~ |
  df16 c bf af g4~ |
  g8 df'! c4~ |
  c8 df c4~ |
  c8 df c4~ |
  
  \barNumberCheck 17
  c8 c c af' |
  bf,16 c df c  bf c df c |
  bf8 bf bf g' |
  af,16 bf c bf  af bf c bf |
  af8 af af df~ |
  df16 f, g af  bf c df bf |
  c df bf c  df c bf af |
  \oneVoice g16 af bf g  ef8 ef' |
  
  \barNumberCheck 25
  af,8\parenthesize \mordent af af f'16 df |
  g,8 g  g16 af bf c |
  df16 c bf c  df f ef df |
  \voiceOne c16 bf af g  af bf c d |
  ef4. ef8 |
  \oneVoice af16 g af bf  af g f ef |
  \voiceOne d2~ |
  d16 c b c  d f ef d |
  
  \barNumberCheck 33
  ef8 ef ef4~ |
  ef2
  d8 d d4~ |
  d2 |
  c8 c c f |
  b,16 c d8~ d4 |
  r16 g, c8~  c16 c8 b16 |
  c4 r8 c16 bf! |
  
  \barNumberCheck 41
  af4 r16 af bf df~ |
  df16 df c bf g'4~ |
  g4. e8 |
  f8 r r4 |
  r4 r8 a |
  bf8 ef, df bf'~ |
  bf8 c16 bf  af g f e |
  f2~ |
  
  \barNumberCheck 49
  f8 bf16 af  g f e d |
  \oneVoice e16 f e d  c bf af g |
  af f af c  f c bf af |
  bf16 g bf e  g f e d |
  e16 c e g  c bf af g |
  f16 gf f ef!  df c bf a |
  \voiceOne bf8 f df'4~ |
  df16 df8.~ df16 df8.~ |
  
  \barNumberCheck 57
  df16 c8.~  c16 c8.~ |
  c16 bf a g  a bf c8~ |
  c8 bf16 a  bf8 df |
  g,8 c16 d  e8 f |
  g8 f e f |
  g4~ g16 f e f |
  g4~ g16 f e f |
  % first beat, bf according to the transcription
  bf16 f e d  e f g8~ |
  
  \barNumberCheck 65
  g8 f16 e  f8 g |
  af8 af af4~ |
  af2 |
  g8 g g4~ |
  g2 |
  f4 r8 f |
  ef4 r8 f |
  bf,8 bf  bf gf'16 ef |
  
  \barNumberCheck 73
  a,8 a  a16 bf c df |
  ef16 df c df  ef gf f ef |
  df8[ df df] r |
  df8[ df df] r |
  e, r r e' |
  f8 c c af' |
  bf,16 c df c  bf c df c |
  bf8 bf bf g' |
  
  \barNumberCheck 81
  af,16 bf c bf  af bf c bf |
  af8 af af f' |
  g,16 af bf af  g df' c bf |
  af8. g16 g8.\parenthesize \prall f16 |
  f4.\fermata
  \bar "|."
}

rightHandLower = \relative {
  \partial 8 s8 |
  s2 * 3 |
  \voiceFour r4 r8 f'
  c8 c c af'16 f |
  b,8 b  b16 c d ef |
  f16 ef d ef  f af g f |
  ef16 d c d  ef f g a |
  
  \barNumberCheck 9
  bf16 af! g f  g bf af g |
  af16 bf c bf  af g f ef |
  d16 f e d  e g f e |
  f8 r  r16 c' bf af |
  g4 r16 f e d |
  e4. e8 |
  f4~ f16 af g f |
  e16 g bf8~  bf16 g f e |
  
  \barNumberCheck 17
  af8 af af4~ |
  af2 |
  g8 g g4~ |
  g2 |
  f8 f f4 |
  ef8 r r4 |
  R2 |
  s2 |
  
  \barNumberCheck 25
  s2 * 3 |
  r4 r8 af |
  ef8 ef ef c'16 af |
  \voiceDown d,8 d  d16 ef f g |
  \voiceUp af16 g f g  af c bf af |
  g2~ |
  
  \barNumberCheck 33
  g8 g g ef' |
  f,16 g af g  f g af g |
  f8 f f d' |
  ef,16 f g f  ef f g f |
  ef8 ef ef af~ |
  af8. af16  g f ef d |
  ef8. ef16  d8 f~ |
  f16 f e d  e g8.~ |
  
  \barNumberCheck 41
  g16 g f e f4 |
  g4 r8 e' |
  df8 bf g4 |
  r16 bf af g  f g af bf |
  c8 ef gf4~ |
  gf8 a, bf df |
  c8 r r4 |
  r8 af df c |
  
  \barNumberCheck 49
  bf8 r r4 |
  \voiceDown r8 g,16 af  bf!8 c |
  f,8 f f df'16 bf |
  e,8 e  e16 f g af |
  bf16 af g f  bf df! c bf |
  af8 a bf c |
  \voiceUp df8 r r bf'16 af |
  gf8 gf16 f  gf8 gf16 f |
  
  \barNumberCheck 57
  gf8 ef16 df  ef8 ef16 df |
  ef2~ |
  \beamPositionsA ef16 \voiceDown c df f  ef df c bf |
  \voiceUp e8 f g af |
  bf8 bf16 af bf4~ |
  bf16 e df! c bf4~ |
  bf16 e df c bf4 |
  r4 r8 d16 bf~ |
  
  \barNumberCheck 65
  % first beat, bf g af according to the transcription
  bf16 \voiceDown g af df!  c bf af g |
  f8 \voiceUp c' c af' |
  bf,16 c df c  bf c df c |
  bf8 bf bf g' |
  af,16 bf c bf  af bf c bf |
  af8 af df4~ |
  df8 c16 bf  a8 r |
  \voiceDown r16 f, g a  bf8 r |
  
  \barNumberCheck 73
  r16 c ef df  c bf a g |
  f16 r r8 \voiceUp r8 c'' |
  f,8 f  f df'16 bf |
  e,8 e  e16 f g af |
  bf16 af g af  bf df c bf |
  af8 af af4~ |
  af2 |
  g8 g g4~ |
  
  \barNumberCheck 81
  g2 |
  f8 f f4~ |
  f8 e r e |
  f4 e |
  f4.
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \partial 8 r8 |
  R2 * 8 |
  
  \barNumberCheck 9
  R2 * 2 |
  r4 r8 c' |
  f,8 f f df'16 bf |
  e,8 e e16 f g af |
  bf af g af  bf df c bf |
  af g f g  af c bf af |
  g16 f e f  g bf af g |
  
  \barNumberCheck 17
  f af c f  c af f af |
  df,8 f df bf |
  ef16 g bf ef  bf g ef g |
  c,8 ef c af |
  df16 ef f ef  df c bf af |
  g8 bf g ef |
  af8 g f d' |
  ef8 ef,  r16 df''! c bf |
  
  \barNumberCheck 25
  c16 ef c af  f ef' df c |
  bf16 df bf g  ef c' bf af |
  g16 af g f  ef df c bf |
  af8 af' g f |
  c'16 bf c df!  c bf af g |
  \voiceTwo f4 bf4~ |
  \oneVoice bf8 af16 g  f ef d c |
  b8 d b g |
  
  \barNumberCheck 33
  c16 ef g c  g ef c ef |
  af,8 c af f |
  bf16 d f bf  f d bf d |
  g,8 bf g ef |
  af16 bf c bf  af g f ef |
  d8 c' b g |
  c8 af f g |
  c,4 r8 c'' |
  
  \barNumberCheck 41
  f,8 f f df'16 bf |
  e,8 e  e16 f g af |
  bf16 af g af  bf df c bf |
  af16 g f g  af bf c df |
  \clef treble ef16 df c df  ef gf f ef |
  df16 c bf c  df ef f g! |
  af!16 bf af g  f ef df c |
  df ef! df c  \clef bass bf af g f |
  
  \barNumberCheck 49
  g16 af g f  e d c b |
  \voiceTwo c8[ c c] r |
  c8[ c c] r |
  c8[ c c] r |
  R2 |
  df2~ |
  \oneVoice df16 ef df c  bf af! gf f |
  ef8 ef  ef ef'16 c |
  
  \barNumberCheck 57
  a8 a  a gf'16 ef |
  c8 c  c bf'16 a |
  \voiceTwo bf2~ |
  \oneVoice bf16 g af! c  bf af g f |
  e16 f g af  g f e d |
  c8 c c bf'16 g |
  e8 e  e df'16 bf |
  g8 g  g \clef treble f'16 e |
  
  \barNumberCheck 65
  \voiceTwo f2~ |
  f16 e f g  f ef df c |
  \oneVoice df8 f df bf |
  ef16 df ef f  ef df c bf |
  \clef bass c8 ef c af |
  df16 ef df c  bf af g f |
  g16 bf a g  f ef df c |
  \voiceTwo df4 r16 df ef f |
  
  \barNumberCheck 73
  gf8 r r4 |
  r16 bf a g  f ef df c |
  \oneVoice bf16 c df c  bf af! g! f |
  g16 af bf af  g f e d |
  c8 e g c~ |
  c16 f, af c  f af g f |
  df'8 bf g f |
  c,16 e g c  e g f e |
  
  \barNumberCheck 81
  c'8 af f e |
  c,16 f af c  f af g f |
  bf8 g e c |
  df8 bf c c, |
  f4._\fermata
}

tempi = {
  \tempo 4 = 76
  \partial 8 s8 |
  s2 * 82 |
  s4 \tempo 4 = 69 s |
  \tempo 4 = 63 s4 \tempo 4 = 54 s |
  \tempo 4 = 40 s4.
}

forceBreaks = {
  % page 1
  \partial 8 s8 s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \pageBreak
  
  % page 2
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \pageBreak
  
  % page 3
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
}

fugueTwelveNotes =
\score {
  \header {
    title = "Fugue 12"
    subtitle = "for 3 voices"
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

fugueTwelveMidi =
\book {
  \bookOutputName "fugue-12-bwv-881"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
