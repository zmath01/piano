%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc
tieShapeB = \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) \etc

moveMMRestA = \once {
  \override MultiMeasureRest.staff-position = 6
  \override MultiMeasureRest.X-offset = -0.5
}
moveMMRestB = \once \override MultiMeasureRest.staff-position = 7
moveMMRestC = \override MultiMeasureRest.staff-position = 6
moveMMRestD = \once \override MultiMeasureRest.staff-position = 6.5
moveMMRestOff = \revert MultiMeasureRest.staff-position

moveNoteA = \once \override NoteColumn.force-hshift = 0.4

moveRestA = \once \override Rest.X-offset = -1.1
moveRestB = \once \override Rest.X-offset = -0.3
moveRestC = \offset Rest.Y-offset 1 \etc
moveRestD = \offset Rest.Y-offset 1.5 \etc
moveRestE = \offset Rest.Y-offset 1.5 \etc

stemLengthA = \once \override Stem.length = 4.5

%%% Music %%%

global = {
  \time 3/2
  \key bf \minor
}

rightHandUpper = \relative {
  \voiceOne
  R1. * 4 |
  f'2 g r4 af |
  bf4 e, f2 r4 g |
  af8 f g af  bf g af bf  c af bf c |
  df8 bf  c4 r df! g,  a8 bf |
  
  \barNumberCheck 9
  a4 f' r bf, f  g8 af |
  g4 ef'2 a,  bf8 c |
  f,4 bf2  a8 g  a4 bf |
  c8 df  ef2 df4  c8 ef gf!4 |
  f4 r c r df r |
  ef2~ ef8 df c df  ef4 c |
  f4 d  bf8 af bf c  df4 bf |
  ef4 c af df c e, |
  
  \barNumberCheck 17
  f2~ f4  e8 d  e4 c' |
  df4 c2 b4 c2~ |
  c4 r e r f r |
  g1.~ |
  g4 f8 e f1~ |
  f1.~ |
  f4 gf8 f ef1~ |
  ef1.~ |
  
  \barNumberCheck 25
  ef4 df8 c  df4 f bf, df~ |
  df4 c8 df  ef4 c a c~ |
  c4 bf r gf'~  gf8 f ef df |
  c8 df  ef4 r bf' c ef,~ |
  ef4 df gf r f r |
  bf4 r a1 |
  bf2 r r |
  R1. |
  
  \barNumberCheck 33
  df,2 ef r4 f |
  gf4 c, df2 r4 ef |
  f8 df ef f  gf ef f gf  af f gf af |
  bf8 gf  af4 r bf ef,  f8 gf |
  f4 r gf r af r |
  r4 gf f ff2  ef8 df |
  ef4 f!8 gf f4  g8 af g2 |
  af4 c\rest r2 \moveRestD r |
  
  \barNumberCheck 41
  r4 f, e ef2  df8 c |
  df4 bf' a af  gf!8 ef f4 |
  gf4 c, df d ef c |
  df!4 r a r bf r |
  ef4 df~  df8 c df ef a,2 |
  bf2 r r |
  \moveMMRestB R1. |
  \moveMMRestC R1. |
  
  \barNumberCheck 49
  R1. * 3 |
  \moveMMRestOff df2 c r4 bf |
  a4 ef' df2 r4 cf |
  bf8 df cf bf  af cf bf af  gf bf af gf |
  \oneVoice f8 af  gf4 r f cf'  bf8 af |
  bf4 ef2  df8 cf  df4 gf!~ |
  
  \barNumberCheck 57
  gf4 ff8 ef \voiceOne df cf bf af bf2~ |
  bf4 af2 g4 af2~ |
  af4 af' g gf f ff |
  ef1.-\tieShapeA ~ |
  ef4 df8 cf  df ff ef df  cf bf af g |
  af1.~ |
  af8 bf af gf  af bf cf2  bf8 af |
  bf1.~ |
  
  \barNumberCheck 65
  bf8 c bf a  bf c df!2  c8 bf |
  c8 df c bf  c df ef2  df8 c |
  df4 r gf!2 f |
  r4 ef d af'! gf2 |
  r4 f  ef8 gf f ef  df f ef df |
  c8 ef df c  bf df  c4 r bf |
  f'4 ef8 df  ef2. df8 c |
  df8 ef df c  bf4 bf'2  af8 g |
  
  \barNumberCheck 73
  af2~ af4 g2 f4 |
  e2 ef4 a bf e, |
  f4 r e r f r |
  bf,4 c8 bf  af4 bf8 af  g4 r |
  r4 g df'  c8 bf c2~ |
  c4 bf8 af  df!2. c8 bf |
  ef2. df8 c  f4 r |
  ef2 df r4 c |
  
  \barNumberCheck 81
  bf4 f' ef2 r4 df |
  c8 ef df c  bf df c bf  af c bf af |
  g8 bf  af4 r g df'  c8 bf |
  c4 df gf,!2. gf4 |
  ef'4 df8 c  df4 ef af,2~ |
  af4 af f'  ef8 d  ef4 f |
  bf,2. a8 g  a4 bf |
  ef,1~ ef4  df8 c |
  
  \barNumberCheck 89
  df4 bf'2 a4 bf4. af8 |
  gf2 f4 d' ef  df8 c |
  f4 r gf, r f r |
  ef4 r r2 r |
  r2 r4 bf' ef2~ |
  ef4 df8 c df1~ |
  df4 c8 bf c2 r |
  bf2 c r4 df |
  
  \barNumberCheck 97
  ef4 a, bf2 r4 c |
  df!8 bf c df  ef c df ef  f df ef f |
  gf8 ef f4 r gf! c, df8 ef |
  df4 c bf2( a4.)\prall bf8 |
  bf1.\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour bf2 c r4 df |
  ef4 a, bf2 r4 c |
  df8 bf c df  ef c df ef  f df ef f |
  gf8 ef  f4 r gf c,  df8 ef |
  df4 a bf b c2 |
  r4 c df d ef e |
  f1.-\tieShapeB ~ |
  f4 e8 d  e2 r4 ef~ |
  
  \barNumberCheck 9
  ef4 d8 c  d2 r4 df4~ |
  df c8 bf  c4 gf'! f ef~ |
  ef4 d ef e f2 |
  r4 f gf! g af a |
  bf1.~ |
  bf4 a8 g  a2 r4 af~ |
  af4 g8 f  g2 r4 gf~ |
  gf f8 ef  f2. bf,4 |
  
  \barNumberCheck 17
  c4 df8 ef!  df4 r r2 |
  r4 af'2  g8 f  g af bf4 |
  af4 r g r af r |
  bf4 r g r c r |
  c,4 r c' r f, r |
  bf8 c  df4 r bf f  gf!8 af! |
  gf4 ef bf' r ef, r |
  af8 bf  c4 r af ef  f8 gf! |
  
  \barNumberCheck 25
  f4 gf af2.  gf8 f |
  gf4 ef r gf2  f8 ef |
  df4 r a'2 bf |
  r4 c df g, a2 |
  r4 bf4  c8 a bf c  df bf c df |
  ef8 c df ef  f df  ef4 r f |
  bf,4 c8 df  c4 bf a  bf8 c |
  bf4 af! g  af8 bf  af4 gf |
  
  \barNumberCheck 33
  f4 ef8 f  gf4 f8 ef  df4 df' |
  c8 bf af gf  f ef  df4 af'2~ |
  af1 df2~ |
  df1 c2 |
  r4 df c cf2  bf8 af |
  bf4 r cf r df bf |
  gf4 r af r bf r |
  r4 \voiceThree af g gf2  f8 ef |
  
  \barNumberCheck 41
  \voiceFour f4 g8 af  f4 a8 bf c4 a |
  bf4 df c cf bf2 |
  r4 bf a af g gf |
  f1.~ |
  f2 r r |
  bf2 \voiceThree af! b4\rest gf |
  f!4 cf' bf2 r4 af |
  gf!8 bf af gf  f af gf f  ef gf f ef |
  
  \barNumberCheck 49
  d8 f  ef4 g\rest d af'  gf8 f |
  gf8 af bf2 a8 bf c4 ef,~ |
  ef4 df bf'2. af!4_~ |
  \voiceFour af8 f  bf4 a af g2 |
  r4 gf! f ff ef eff |
  df1~ df4 \voiceDown cf~ |
  cf4 bf8 af  gf bf af gf  f af g f |
  g2 af bf |
  
  \barNumberCheck 57
  cf2 bf2. \voiceUp ff'4 |
  ef1. |
  \moveRestA e4\rest d' ef8 bf  ef4~ ef8 df cf bf |
  cf4 d\rest df d\rest cf d\rest |
  bf4 e,\rest e2\rest \stemLengthA ff2~ |
  ff4 ef8 df  ef f gf!2  f8 ef |
  f1.~ |
  f8 gf f ef  f gf af2  gf8 f |
  
  \barNumberCheck 65
  gf1.~ |
  gf2 f2. a4 |
  bf8 c  df2 c4 df f, |
  ef4 c' bf d ef c~ |
  c8 a bf2 a4 bf r |
  R1. * 2 |
  s1. |
  
  \barNumberCheck 73
  c2 bf r4 af |
  g4 df' c2 r4 bf |
  af!8 c bf af  g bf af g  f af g f |
  e8 g  f4 r e bf'  af8 g |
  af8 f  g4 r g2  f8 e |
  af2. g8 f bf2~ |
  bf4 af8 g  c2. bf8 af |
  g4 af bf bf, c af'~ |
  
  \barNumberCheck 81
  af4 g af r bf r |
  ef,4 af g gf f ff |
  ef4 r r2 r |
  s1. * 5 |
  
  \barNumberCheck 89
  r2 gf! f |
  r4 ef d af' gf2 |
  r4 f  ef8 gf f ef  df f ef df |
  c8 ef df c  bf df  c4 r bf |
  f'4 ef8 d  ef2 r4 ef |
  c'2. bf8 a bf2~ |
  bf2. a8 g a2 |
  df,2 ef r4 f |
  
  \barNumberCheck 97
  gf4 c, d2 r4 a'! |
  bf8 g a bf  c a bf c  df bf c df |
  ef8 c  df4 r ef a,  bf8 c |
  <f, bf>4 <ef gf> f1 |
  f1. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1. * 8 |
  
  \barNumberCheck 9
  s1. * 7 |
  \voiceThree R1. |
  
  \barNumberCheck 17
  f2 g r4 af! |
  bf!4 e, f2 r4 g |
  af8 f g af  bf g af bf  c af bf c |
  df8 bf  c4 r df! g,  af8 bf |
  af4 r r f' c  df8 ef! |
  df4 f, bf r cf r |
  bf4 r r ef bf  c!8 df! |
  c4 ef, af r c, r |
  
  \barNumberCheck 25
  df4 ef f df gf bf |
  ef,4 gf c, ef f a |
  bf2 c r4 df |
  \oneVoice ef4 a, bf 2 r4 c |
  df8 bf c df  ef c df ef  f df ef f |
  gf8 ef  f4 r gf c,  df8 ef |
  df4 bf ef  f8 gf  f4 ef |
  d4 ef8 f  ef4 df c  df8 ef |
  
  \barNumberCheck 33
  \voiceThree df4 c8 bf af1~ |
  af1~ af8 gf f ef |
  df4 df' c r af r |
  ef'4 r f  ef8 df af'2~ |
  af2 \moveRestC r r |
  \moveMMRestA R1. |
  r4 ef d df2  c8 bf |
  c4 bf8 af \voiceUp df4 c8 bf ef4 df8 c |
  
  \barNumberCheck 41
  \voiceTwo df4 \voiceDown r4 \moveRestE r2 r |
  f2 ef r4 df |
  c!4 gf' f2 r4 ef |
  df8 f ef df  c ef df c  bf df c bf |
  a8 c  bf4 r a \voiceUp ef'  df8 c |
  \moveNoteA df4 gf f ff ef2 |
  r4 ef d df c \voiceDown cf |
  bf1.~ |
  
  \barNumberCheck 49
  bf4 bf  af8 bf  cf4 f, \voiceUp d' |
  ef4 f gf  c,8 df  ef4 \voiceDown a, |
  \voiceUp bf8 c df4~ df c8 df  ef4 \voiceDown gf, |
  f4 g2 f e4 |
  f4 a bf  af8 g  af4 gf8 f |
  \oneVoice  gf4 r f! r \voiceTwo ef! r |
  df1.~ |
  df4 cf8 bf  cf4 ff2  ef8 df |
  
  \barNumberCheck 57
  ef4 af2  g8 f  g4 af8 bf |
  \voiceThree cf2 bf af4 \voiceUp bf8 cf |
  df4 a\rest \voiceDown r ef' f! g |
  \staffUp \voiceTwo af4 r g r af r |
  ef4 f,\rest f2\rest f\rest |
  \voiceDown s1. * 3 |
  
  \barNumberCheck 65
  s1. |
  \moveMMRestD R1. |
  f'2 ef r4 df |
  c4 gf' f2 r4 c |
  df!8 f ef df  c ef df c  bf df c bf |
  a8 c  bf4 r a ef'  df8 c |
  df2. c8 bf c4 \voiceUp f~ |
  f4 e f \voiceDown af,!  g8 af bf4 |
  
  \barNumberCheck 73
  af8 bf af g  f e f g  af g af bf |
  c4 r r gf! f g |
  af8 bf c4 r2 r |
  r4 c df bf e, f~ |
  f4 df' e,2.  d8 c |
  f2. ef!8 df! g2~ |
  g4 f8 ef  af2. g8 f |
  bf4 c g2 af |
  
  \barNumberCheck 81
  r4 bf c f, g2 |
  r4 af  bf8 g af bf  c af bf c |
  df8 bf c df  ef c  df4 r ef |
  af,4 bf8 c  bf4 \voiceUp c8 df ef2~ |
  ef4 gf2 f8 ef  f4 af |
  d,4 r b\rest bf af'  gf!8 f |
  gf8 f  gf4 c,2. bf4~ |
  bf4 a8 g  a4 c \voiceDown f,2~ |
  
  \barNumberCheck 89
  f4 ef8 df  ef4 ef'2 df4~ |
  df4 c2 cf4 bf a |
  bf1.~ |
  bf4 a bf2 af~ |
  af2 g gf |
  f1~ f8 gf f e |
  f2. c'4 \staffUp \voiceTwo f2 |
  \voiceDown \moveRestB r2 gf, f |
  
  \barNumberCheck 97
  r4 ef d af'! gf2 |
  r4 f  ef8 gf! f ef  df f ef df |
  c8 ef df c  bf df  c4 r f |
  s2 \voiceUp df'2 c |
  d1. |
}

leftHandLower = \relative {
  R1. * 8 |
  
  \barNumberCheck 9
  R1. * 2 |
  bf,2 c r4 df! |
  ef!4 a, bf2 r4 c |
  df8 bf c df  ef c df ef  f df ef f |
  gf8 ef  f4 r gf! c,  d8 ef |
  d4 bf' r ef, bf  c8 df |
  \voiceTwo c4 af df  c8 bf  af4 g |
  
  \barNumberCheck 17
  af4 a bf b c2 |
  r4 c df! d ef e |
  f1.~ |
  f4 e8 d e1 |
  f8 e f g  af4 r a r |
  bf4 bf,8  c df4 r d r |
  ef8 d ef f  gf4 r g r |
  af4 af,8 bf  c4 r af r |
  
  \barNumberCheck 25
  df,4 r r2 r |
  R1. * 2 |
  s1. * 5 |
  
  \barNumberCheck 33
  r2 c' df |
  r4 ef f bf, c2 |
  r4 df  ef8 c df ef  f df ef f |
  gf8 ef f gf  af f  gf4 r af |
  df,4 ef8 f  ef4 f8 gf  f4 ef |
  gf4 af8 bf  af4 bf8 cf  bf4 gf |
  cf4 r cf r bf ef, |
  af4 f bf, ef c af |
  
  \barNumberCheck 41
  df4 df'2  c8 bf  a4 f |
  bf1~ bf4 bf |
  ef,8 df  ef4 f f, g a |
  bf4 r ef r df r |
  c4 df8 ef  f2 f, |
  \oneVoice bf2 r4 bf cf c |
  \voiceTwo d8 f af2 g4 af d,! |
  ef4 r f r gf r |
  
  \barNumberCheck 49
  af4 gf  f8 gf  af4 d, bf |
  ef4 df!  c!8 df ef4  a,8 c f ef |
  df8 f bf af!  gf f ef df  c df ef c |
  df4 bf c1 |
  f,4 r r2 r |
  s1. * 3 |
  
  \barNumberCheck 57
  R1. |
  ef'2 df r4 cf |
  bf4 ff' ef2 r4 df |
  \oneVoice cf8 ef df cf  bf df cf bf  af cf bf af |
  g8 bf  af4 r g df'  cf8 bf |
  cf4 cf'8 bf  cf4 ef c af |
  df4 af f df f af |
  d,4 d'8 c!  d4 f d bf |
  
  \barNumberCheck 65
  ef4 ef, gf bf ef, gf |
  \voiceTwo a,4 a'~  a8 bf a g  a4 f |
  bf2~ bf8 c bf a bf2~ |
  bf8 c bf a  bf2~ bf8 c bf a |
  bf2 r4 f gf2~ |
  gf4 f8 ef f1~ |
  f4 f gf g af a |
  bf4 bf,8 c  df4 d ef! e |
  
  \barNumberCheck 73
  f4 ef! df!2 c |
  r4 bf a ef' df2 |
  r4 c  bf8 df c bf  af c bf af |
  g8 bf af g  f af g4  r f |
  c'4 bf8 af  bf4 g af2~ |
  af4 g8 f  bf2. af8 g |
  c2. bf8 af df2~ |
  df4 c bf ef2 d4 |
  
  \barNumberCheck 81
  ef4 df!  c8 ef df c  bf df c bf |
  af4 r r2 af'~ |
  af4 af g8 af bf4 ef, gf~ |
  gf4 f2 ef4 bf  c8 df |
  \oneVoice c4 af bf c df cf |
  bf4 af8 g?  af4 bf c! d |
  ef8 d ef f  gf4 f ef df |
  \voiceTwo c4 df c bf a f |
  
  \barNumberCheck 89
  bf2 c r4 df |
  ef4 a, bf2 r4 c! |
  df8 bf c df  ef c df ef  f df ef f |
  gf8 ef  f4 r gf c,  d8 ef |
  d4 bf ef df c bf |
  a4 f bf c df bf |
  f'4 f, f'2~  f8 gf! ef! f |
  gf8 af! gf f  ef2 df |
  
  \barNumberCheck 97
  r4 c bf f' ef2 |
  r4 df  c8 ef df c  bf df c bf |
  a8 c bf a  g bf  a4 r f |
  \oneVoice bf4 ef f2 f, |
  bf1._\fermata |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 2 = 50
  s1. * 99 |
  \tempo 2 = 46 s2 \tempo 2 = 42 s \tempo 2 = 38 s |
  s1. |
}

forceBreaks = {
  % page 1
  s1. * 5 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \pageBreak
  
  % page 2
  s1. * 5 \break
  s1. * 5 \break
  s1. * 5 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \pageBreak
  
  % page 3
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \pageBreak
  
  % page 4
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
}

fugueTwentyTwoNotes =
\score {
  \header {
    title = "Fugue 22"
    subtitle = "for 4 voices"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

fugueTwentyTwoMidi =
\book {
  \bookOutputName "fugue-22-bwv-891"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
