%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(2.75 . 3)
beamPositionsB = \once \override Beam.positions = #'(5.75 . 6.25)
beamPositionsC = \once \override Beam.positions = #'(6.55 . 7)

moveNoteA = \once \override NoteColumn.force-hshift = 1.3

stemLengthA = \once \override Stem.length = 7.5
stemLengthB = \once \override Stem.length = 6.5

%%% Music %%%

global = {
  \time 4/4
  \key af \major
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  s1 * 2 |
  \voiceOne r8 af'' g c  f, g16 af  bf8 bf, |
  ef8 f16 g af4~  af16 bf g af  f g af bf |
  g16 f g af  bf af g bf  af g f ef  df! c df ef |
  c8 ef af4  g gf |
  f4 ff  ef8 af4 g8 |
  af8 r d4\rest r2 |
  
  \barNumberCheck 9
  g,,16 af g f  ef gf f ef  d8 bf' af f |
  g8 bf ef2 d8 df~ |
  df8 bf'16 af  g f ef df  c4 r8 c |
  df8 f bf, ef  af, r r4 |
  r8 f'16 ef  df c bf af  g! af f g  af g af8~ |
  af16 g af bf  g f gf8~  gf16 f gf ef  f g af f |
  g8 af4 g8~  g e f4~ |
  f4 e  f8 af g c |
  
  \barNumberCheck 17
  f,8 g16 af  bf8 bf,  ef f16 g af4~ |
  af16 bf g af  f g af bf  g4 af |
  g4 gf f ff |
  ef8 af4 gf8~  gf16 af f! gf  ef f gf af |
  f8 bf4 af8~  af16 bf g! af  f g af bf |
  r8 ef c f  bf, c16 df  ef8 ef, |
  af8 bf16 c df4~  df16 ef c! df  bf c df ef |
  c8 e f4  e ef |
  
  \barNumberCheck 25
  d4 df  c8 f4 ef8~ |
  ef8 ef, d d'~  d d, c c'~ |
  c8 c, b b'  c16 b c d  ef d c ef |
  \oneVoice d16 c d ef  f ef d f  e d e f  g f e g |
  \voiceOne f8 c f2 e8 ef~ |
  ef8 c'16 bf  a g f ef  df4 r8 df |
  ef8 gf c, f  bf, r r4 |
  r4 bf~  bf16 bf af gf!  f gf af f |
  
  \barNumberCheck 33
  gf16 af gf f  ef f gf ef  f8 gf af f |
  bf8[ d ef8. f16]  df8 c bf ef |
  c8 f df gf  c, df16 ef f8 f, |
  bf8 c16 df ef4~  ef16 f df ef  c df ef f |
  bf,4 c df2 |
  c4 cf bf bff~ |
  bff8 af~ <ff af>4~  q8 g! af bf |
  c!8 d  ef16 ff df ef  cf df ef ff!  df ef cf df |
  
  \barNumberCheck 41
  bf16 ef f g af4~  af16 af g f  g8 gf~ |
  gf16 gf f ef  f8 ff ef2~ |
  ef16 ef d c  d8 df~  df16 df c bf  c8 cf |
  bf8 c! df4~  df4. c8 |
  <bff df>4 r ff' r |
  g4 r  bf\fermata r16 df, c bf |
  c16 af bf c  df ef f g  af ef f df  c f d ef |
  af,8. f32 g  g8.\trill f32 g  af8. bf16  c8. d16 |
  
  \barNumberCheck 49
  ef2~ ef8 df16 c  bf g! af8 |
  bf8 af4 g8 af2 |
  \bar "|."
}

rightHandLower = \relative {
  r8 ef'' c f  bf, c16 df  ef8 ef, |
  af8 bf16 c df4~  df16 ef c df bf c df ef |
  \voiceFour c16 bf c d ef4  d df |
  c4 cf  bf8 ef4 d8 |
  ef8 bf g c!  f, g16 af bf4~ |
  bf16 bf af g  af ef' df c  df ef df c  bf df c bf |
  c16 df c bf  af cf bf af  g!8 ef' df bf |
  ef16 f ef df  \voiceOne c bf af g  af bf af g  f g ef f |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 |
  \voiceFour r2 r8 ef c f |
  bf,8 c16 df  ef8 \voiceDown ef,  \voiceUp af bf16 c df4~ |
  df16 ef c df  bf c df ef  c8 df4 c8~ |
  c16 ef df ef  c df ef f  d8 ef4 s8 |
  g4 r8 f  g r r \moveNoteA af |
  af8 r r bf~  bf af f ef~ |
  ef8 c' af df  g, af16 bf  c8 \voiceDown c, |
  
  \barNumberCheck 25
  \voiceUp f8 g16 af bf4~  bf16 c af bf  g af bf c |
  af16 bf g af  f g af bf  g af f g  ef f g af |
  f16 g ef f  d ef f g  ef4 \voiceDown r8 ef |
  f8 af d, g  c, r r4 |
  \voiceUp r16 e f g  af g f af  g f g af  bf af g bf |
  a16 g a bf  c bf a c  bf8 f bf4~ |
  bf4 a8 af~  af f'16 ef  d c bf af |
  gf16 af gf f  ef f gf ef  f gf f ef  d ef f d |
  
  \barNumberCheck 33
  ef16 f ef df!  c! d ef c  d8 ef4 d8 |
  ef8 af gf c  f, r r gf |
  f8 r bf4 a af |
  g!4 gf  f8 bf4 af!8 |
  gf4. ef8  af16 gf f af  gf af gf f |
  ef16 f gf ef  f gf f ef  df ef f df  ef ff ef df |
  \voiceThree c!4 s4 s8 ef4 ef8 |
  \voiceFour af8 f! gf g  af16 bf gf af  f! g af bf |
  
  \barNumberCheck 41
  g!4 r16 ef' d c  d8 bf~  bf16 df c bf |
  c8 af~  af16 cf bf af  g!8 af bf g |
  af8 f~  f16 af g f  g8 ef~  ef16 bf' af gf |
  <d f>8 <ef bff'> <ff af> <df ff>  <ef bff'> <ff af> <gf bff> <ef af> |
  f4 r <bff df> r |
  <df ff>4 r <bf df ef> r |
  r2 r4 r8 \staffDown \voiceFive \stemLengthB bf, |
  \voiceOne c8 cf \beamPositionsC bf[ df!]  c16 \voiceUp f8.~  \voiceThree
    \beamPositionsA f16 ef! af8 |
  
  \barNumberCheck 49
  bf4 bff af \voiceFour r8 \voiceDown af, |
  \staffUp \voiceThree ef'2 \voiceFour <c ef> |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  R1 * 5 |
  r8 ef' c f  bf, c16 df  ef8 ef, |
  af8 bf16 c df4~  df16 ef c! df  bf c df ef |
  \voiceThree c16 bf c df ef4 \voiceUp d df |
  
  \barNumberCheck 9
  c4 cf  bf8 ef4 d8 |
  ef4 r8 g  af c f, bf |
  ef,8 r r4  r8 ef af4~ |
  af4 g8 gf~  gf8 ef'16 df  c bf af gf |
  f8 r r4 r ef |
  d4 df c cf |
  bf8 ef df bf  c16 df bf c  af bf c df |
  g,2 af8 r r4 |
  
  \barNumberCheck 17
  s1 * 4 
  s2. s8 \voiceDown df!~ |
  df!16 df c bf  af bf c d  ef f ef df  c ef df c |
  df16 ef df c  bf cf af bf  g!8 af4 g8~ |
  g8 r  r16 f g af  bf8 r r4 |
  
  \barNumberCheck 25
  s1 * 7 |
  r8 bf gf cf  f, gf16 af  bf8 bf, |
  
  \barNumberCheck 33
  \oneVoice ef8 f16 gf af4~  af16 bf gf af  f gf af bf |
  gf16 af f gf  ef f g a  bf c af bf  g a bf c |
  a16 f g a  bf c df ef  f gf f ef  d bf c d |
  ef16 f ef df!  c a bf c  df8 bf f'4~ |
  \voiceThree f16 f ef df  ef df c bf  af8[ df] bf r |
  c8 r af r bf r r4 |
  \voiceUp r8 ef~ ef[ af,]  df[ bf!] cf r |
  s1 |
  
  \barNumberCheck 41
  \voiceDown r8 ef c! f  bf, c16 d  ef8 ef, |
  af8 bf16 c df4~  df16 ef c! df  bf c df ef |
  c4 bf~ bf  af16 gf' f ef |
  s1 * 3 |
  r2 r4 r8 \stemLengthA af, |
  af4 \beamPositionsB g8 bf  af[ df] c \voiceUp f |
  
  \barNumberCheck 49
  << 
    { \voiceDown g,4 gf \voiceFive f ff | ef2 ef | } 
    \new Voice { 
      \staffDown \voiceOne bf'8 c16 df  \voiceUp ef8 \voiceDown ef,  af8 bf!16
        c \voiceUp df4~ | df16 ef c! df  bf c df ef s2 |
    }
  >>
}

leftHandLower = \relative {
  s1 * 7 |
  \voiceTwo r8 af g c  f, g16 af  bf8 bf, |
  
  \barNumberCheck 9
  \oneVoice ef8 f16 g af4~  af16 bf g! af  f g af bf |
  ef,16 d ef f  g f ef g  f ef f g  af g f af |
  g16 f g af  bf af g bf  af g af bf  c bf af c |
  bf16 af bf c  df c bf df  c bf c df  ef df c ef |
  df16 c df ef  f ef df f  ef8 ef, c f |
  bf,8 c16 d  ef8 ef,  af bf16 c df4~ |
  df16 ef c! df  bf c df ef  af,8 c df af |
  bf16 c af bf  g af bf c  f, c' f8~  f16 ef! df c |
  
  \barNumberCheck 17
  df16 c' bf af  g f ef df  c bf' af g  f ef d c |
  bf8 ef4 df!8~  df16 c df ef  f ef df c |
  \voiceTwo df16 f ef df  c df ef8~  ef16 ef df c  \oneVoice bf cf af bf |
  g!8 af df ef  af bf gf af |
  \voiceTwo df,8 gf ef f  bf c af bf |
  ef,4 af g gf |
  f4 ff  ef8 f df ef |
  af,16 c bf af  df4~  df16 df' c bf  a bf c a |
  
  \barNumberCheck 25
  \oneVoice bf16 c bf af!  g af bf g  af8 df bf c |
  f,4 r8 bf  ef,4 r8 af |
  \voiceTwo d,8 f g g,  c g' c4~ |
  c4 b8 bf~  bf g'16 f  e d c bf |
  \oneVoice af4 r8 af  bf df! g, c |
  f,8 r r4  r16 a, bf c  df c bf df |
  c16 bf c df  ef df c ef  d c d ef  f ef d f |
  \voiceTwo ef4 r r2 |
  
  \barNumberCheck 33
  s1 * 4 |
  r4 r8 af  f bf ef, f16 gf |
  af8 af, df ef16 f  gf4~ gf16 af ff? gf |
  \oneVoice ef16 ff? gf af  df, ef cf df  bf cf df ef  af, bf gf af |
  f!16 gf af bf  ef,8 r r2 |
  
  \barNumberCheck 41
  \voiceTwo R1 |
  r2 r8 af' g c |
  f,!8 g16 af   bf8 bf,  ef8 f16 g af4~ |
  \oneVoice af16 bf gf af  ff gf af bff  gf af ff gf  ef ff gf af |
  df,16 df' cf df  bff df ff, bff  df, bff' af bff  ff bff df, ff |
  bf,!16 ff' ef ff df ff bf, df  g,4\fermata r16 ef' f! g |
  af16 c bf af  g f ef df  c8 df ef f |
  ef d ef e  f8. g16  af8 f |
  
  \barNumberCheck 49
  \voiceTwo ef4 r8 c  df4 r16 bf cf df |
  g,8 af  ef4 af2 |
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
  \tempo 4 = 52
  s1 * 45
  \tempo 4 = 48 s4 \tempo 4 = 44 s \tempo 4 = 20 s4 \tempo 4 = 52 s |
  s1 * 2 |
  \tempo 4 = 48 s2 \tempo 4 = 44 s |
  \tempo 4 = 40 s4 \tempo 4 = 32 s2. |
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak 
  
  % page 3
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 3 \break
}

fugueSeventeenNotes =
\score {
  \header {
    title = "Fugue 17"
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

fugueSeventeenMidi =
\book {
  \bookOutputName "fugue-17-bwv-886"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
