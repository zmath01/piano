%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 2/2
  \key bf \minor
}

rightHandUpper = \relative {
  s1 * 2 |
  \voiceOne r2 bf''8 af gf f |
  gf8 f ef df  c f ef f |
  df4 f,  r8 df' c df |
  ef4 bf c2 |
  df4 r r2 |
  af'!8 g f e  f4 c |
  
  \barNumberCheck 9
  df4 bf g c |
  af4 f f' f |
  f4 e8 f  g4 g |
  g4 f8 g  af4 af
  af4 f g bf |
  bf4 e, f2~ |
  f2 e |
  f4 c  af8 ef'! d ef |
  
  \barNumberCheck 17
  f4 bf, af f'~ |
  f4 ef8 f gf4 bf, |
  af8 bf c df  ef f gf ef |
  f4 gf, f df' |
  bf2. ef8 df |
  c2. bf4~ |
  \oneVoice bf8 c df ef a, gf'! f ef |
  df8 f ef df  c bf a c |
  
  \barNumberCheck 25
  \voiceOne bf4 df8 c  df4 df |
  df4 c8 df  ef4 ef |
  ef4 df8 ef  f af! gf! f |
  ef8 df c ef af,2 |
  df2 r |
  r8 bf c df  ef f gf ef |
  f8 ef df c  df4 af |
  bf4 gf ef af |
  
  \barNumberCheck 33
  f4 df df' df |
  df4 c8 df  ef4 ef |
  ef4 df8 ef  f4 f |
  f4 ef8 f  g af bf g |
  af1~ |
  af1~ |
  af4 g8 af bf4 df,~ |
  df4 c8 df  ef4 gf,!~ |
  
  \barNumberCheck 41
  gf8 f g af  bf c df bf |
  c2 r |
  c'8\rest ef,8 df c  bf af g bf |
  ef,2 d'4\rest gf,! |
  f4 bf r af |
  gf4 cf r bf |
  af4 df f\rest cf |
  bf2 r |
  
  \barNumberCheck 49
  R1 |
  r4 df gf gf |
  gf4 f8 gf  af4 af |
  af4 gf8 f gf2~ |
  gf4 cf8 bf  af gf f af |
  d,8 c! d ef  f gf af f |
  gf8 f ef d  ef4 bf |
  cf4 af f bf |
  
  \barNumberCheck 57
  gf4 ef ef' ef |
  ef4 d8 ef  f4 f |
  f4 ef8 d ef2~ |
  ef8 df! cf bf  cf af bf cf~ |
  cf8 bf c! d  ef f gf ef |
  f4 f, bf2~ |
  bf2 a |
  bf8 a bf c  df ef f df |
  
  \barNumberCheck 65
  ef8 df c df  ef f gf ef |
  f2 r4  bf8 f |
  gf8 af gf f  ef df c ef |
  a,4 c f df |
  ef8 f gf ef  c gf'f ef |
  df2 c4 f |
  bf,2 af4 df |
  gf,1~ |
  
  \barNumberCheck 73
  \oneVoice gf8 f ef df  c df ef c |
  df8 ef f g  a bf c a |
  \voiceOne bf8 c df bf  c df ef c |
  df8 ef f g  a bf c a |
  bf1~ |
  bf1~ |
  bf1~ |
  bf4 a8 bf  c4 ef,~ |
  
  \barNumberCheck 81
  ef4 df8 ef  f ef16 df  ef8[ a,] |
  bf4. c8  a4. bf8 |
  bf1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour df''8 c bf a  bf4 f |
  gf4 ef c f |
  df bf bf' bf |
  bf4 a8 bf  c4 c |
  c4 bf8 a bf2~ |
  bf8 af! gf f  gf ef f gf~ |
  gf8 f g a  bf c df bf |
  c4 c, f2~ |
  
  \barNumberCheck 9
  f2 e |
  f8 e f g  af bf c af |
  bf8 af g af  bf c df bf |
  c2 r4  f8 c |
  df8 ef df c  bf af g bf |
  e,4 g c, c' |
  bf8 c df bf  g df' c bf |
  af2 r4 \voiceDown cf, |
  
  \barNumberCheck 17
  bf8 c! \voiceUp d ef  f gf af f |
  gf2 r4 gf~ |
  gf4 \voiceDown bff, af \voiceUp c' |
  df4 ef, df r |
  r4 df gf2~ |
  gf4 f8 ef df2 |
  \voiceDown c2 r |
  r8 bf c df  ef f gf ef |
  
  \barNumberCheck 25
  \voiceUp f4 r  df'8 c bf a |
  bf2~ bf8 a g a |
  bf4 f \voiceDown df ef8 f |
  gf2~ gf8 \voiceUp f ef gf |
  f8 ef df ef  f gf af f |
  gf2 r4 df |
  c8 gf' f ef f2~ |
  f4 ef8 df  c df bf c |
  
  \barNumberCheck 33
  df4 f,\rest  bf'8 af gf f |
  gf4 ef  af8 gf \voiceDown f ef |
  f8 ef f gf  \voiceUp af bf c af |
  df1~ |
  df4 ef8 df  c4 ef |
  af,4 f'8 ef  df4 c |
  bf2 r4 bf~ |
  bf4 af r ef~ |
  
  \barNumberCheck 41
  ef4 df8 c  \voiceDown bf af g bf |
  af8 \voiceUp ef' f g  af bf c af |
  f'4 r r2 |
  r4 af,, ef' ef |
  ef4 d8 ef  f4 f |
  f4 ef8 f  gf4 gf |
  gf4 f8 gf  af4 af~ |
  af8 af gf f  gf4 df |
  
  \barNumberCheck 49
  ef4 cf af df |
  \voiceDown bf2 \voiceUp r4 bf' |
  cf2. cf4 |
  bf2. ef4 |
  af,4 r r af~ |
  af8 bf af gf  f ef d f |
  ef4 r r2 |
  R1 |
  
  \barNumberCheck 57
  r2 ef'8 df cf bf |
  cf8 bf af gf  f4 bf |
  gf4 bf  r8 gf f gf |
  af4 ef f2 |
  gf2 r4 c |
  df!8 c bf a  bf4 f |
  gf4 ef c f |
  df4 bf bf' bf |
  
  \barNumberCheck 65
  bf4 a8 bf  c4 c |
  c4 bf8 c  df4 df |
  df4 bf, c ef |
  ef4 \voiceDown a, bf \voiceUp bf' |
  bf2 a |
  bf8 f bf2 af!4~ |
  af8 df, gf2 f4~ |
  f4 ef8 df  c4 bf |
  
  \barNumberCheck 73
  \voiceDown a4 bf2 a4 |
  bf8 c df bf  c df ef c |
  df8 ef f \voiceUp g  a bf c a |
  bf8 c df bf  c df ef c |
  d8 c d ef  f gf af! f |
  gf4 f8 ef  d4 f |
  bf,4 gf'8 f  ef4 df! |
  c2 r4 c~ |
  
  \barNumberCheck 81
  c4 bf r gf |
  f4. gf8 c,2 |
  d1 |
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
  bf,2 bf'~ |
  bf2 a |
  bf8 af! gf f  gf f ef df |
  ef8 df c bf  a f g a |
  bf8 c df ef  df4 gf! |
  c,8 df ef f  ef4 af |
  df,4 c df bf |
  f'4 af  df8 c bf af |
  
  \barNumberCheck 9
  bf8 g af bf  c bf af g |
  f2~ f8 g af f |
  g8 af bf4  e, f8 g |
  af8 bf af g  f ef! df f |
  bf,2 r |
  r8 df' c bf  af g f af |
  df,4 bf c c, |
  f8 c' d e  \voiceTwo f gf! af f |
  
  \barNumberCheck 17
  d2 \oneVoice r4 bf |
  ef,8 bf' c d  ef f gf ef |
  \voiceTwo c4 ef c af |
  \oneVoice df,8 af' bf! c  df ef f df |
  gf8 af gf f  ef df c ef |
  a,8 f g a  bf c df bf |
  \voiceTwo ef4 c f f, |
  bf4 r r c' |
  
  \barNumberCheck 25
  \oneVoice df8 c bf a  bf4 f |
  gf4 ef c f |
  df4 bf \voiceTwo bf' bf |
  bf4 af8 bf  c4 c |
  \oneVoice c4 bf8 c  df4 df |
  df4 c8 bf  c4 ef |
  af,2 r8 df, ef f |
  gf8 af bf gf af2 |
  
  \barNumberCheck 33
  df,8 f gf af  bf c df bf |
  ef8 f ef df  c4 \voiceTwo af |
  df2 \oneVoice r4 af |
  bf8 af g f  ef df c bf |
  af8 bf c df  ef f gf! ef |
  f8 ef df ef  f g af f |
  df'8 c bf af  g f ef g |
  c,8 f ef df  c bf af c |
  
  \barNumberCheck 41
  df,4 f'  \voiceTwo df ef |
  af8 g f ef  \oneVoice f4 c |
  df4 bf g ef' |
  c8 bf af bf  c d ef c |
  d8 c bf c  d ef f d |
  ef8 f gf f  ef df! cf bf |
  cf8 ef df cf  bf af gf f |
  gf4 af  bf8 gf af bf |
  
  \barNumberCheck 49
  cf8 df ef cf  df ef f df |
  \voiceTwo gf8 af gf f  \oneVoice ef f gf ef |
  af8 bf af gf  f gf af f |
  d8 bf c! d  ef f gf ef |
  cf'8 bf af bf cf2 |
  bf1 |
  r4 ef,8 f  gf ef gf bf |
  ef8 d ef2 d4 |
  
  \barNumberCheck 57
  ef8 df! cf bf  cf bf af gf |
  af8 gf f ef  d bf c! d |
  ef8 f gf af  gf4 cf |
  f,8 gf af bf  af4 df |
  gf,4 f gf ef |
  bf' df  gf,8 f ef df |
  ef8 c df ef  f ef df c |
  bf2~ bf8 c df bf |
  
  \barNumberCheck 65
  c8 df ef4  a, bf8 c |
  df8 ef df c  bf af! gf bf |
  ef,4 r r2 |
  r8 gf' \voiceTwo f ef  df c bf df |
  \oneVoice gf,4 ef f f' |
  bf,8 c df ef  f gf af f |
  gf8 af bf c  df ef df c |
  bf8 af gf f  ef f gf ef |
  
  \barNumberCheck 73
  \voiceTwo f1~ |
  f1~ |
  f2 \oneVoice f'~ |
  f1~ |
  f8 gf! f ef  d c bf d |
  ef,8 f gf af  bf c d bf |
  \clef treble gf'8 f ef f  gf af bf gf |
  ef8 df c bf  \clef bass a g f a |
  
  \barNumberCheck 81
  df, gf! f ef  df c bf c |
  df8 c df ef  f ef f f, |
  bf1_\fermata |
}

tempi = {
  \tempo 4 = 126
  s1 * 80 |
  s2 \tempo 4 = 116 s |
  \tempo 4 = 108 s2 \tempo 4 = 96 s4 \tempo 4 = 84 s |
  \tempo 4 = 60 s1 |
}

forceBreaks = {
  % page 1
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 2
  s1 * 6 \break
  s1 * 6 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 3
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
}

preludeTwentyTwoNotes =
\score {
  \header {
    title = "Prelude 22"
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

preludeTwentyTwoMidi =
\book {
  \bookOutputName "prelude-22-bwv-891"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
