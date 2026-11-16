%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 2/2
  \key ef \major
}

rightHandUpper = \relative {
  R1 * 8 |
  
  \barNumberCheck 9
  R1 * 5 |
  \voiceOne ef'1
  bf'2 r4 af |
  g4 c2 bf4 |
  
  \barNumberCheck 17
  af4 af8 g af4 c |
  f,4 bf2 af4 |
  g4 g8 f g4 bf |
  R1 |
  bf1 |
  ef2 r4 ef | 
  d4 g2 f4 |
  ef4 ef8 d ef4 g |
  
  \barNumberCheck 25
  c,4 f2 ef4 |
  d4 d8 c d4 f |
  bf,4 bf8 a bf4 d |
  g,4 a bf2~ |
  bf2 a |
  bf4 d8 ef f4 d |
  bf4 ef8 f g4 ef |
  f4 ef8 d c4 d |
  
  \barNumberCheck 33
  ef4 \oneVoice r r2 |
  R1 * 3 |
  \voiceOne R1 |
  ef1 |
  bf'2 b4\rest af |
  g4 c2 bf4 |
  
  \barNumberCheck 41
  af4 af8( g af4) c |
  f,4 bf2 af!4 |
  g4 g8 f g4 bf4 |
  ef,4 ef8 d ef4 g |
  c,4 d8 ef f2~ |
  f2 ef8 d ef f |
  d4 g2 f4 |
  e4 c f2~ |
  
  \barNumberCheck 49
  f2 ef!~ |
  ef2 d8 c d ef |
  c4 f2 ef4 |
  d4 bf ef2~ |
  ef2 df~ |
  df4 c bf2 |
  af2 r |
  R1 |
  
  \barNumberCheck 57
  R1 * 2 |
  bf1 |
  ef2 r4 ef |
  d4 g2 f4 |
  ef4 ef8 d ef4 g |
  c,4 f2 ef4 |
  d4 d8 c d4 f |
  
  \barNumberCheck 65
  bf,4 ef df2~ |
  df4 c bf2~ |
  bf4 af8 g af2~ |
  af2 gf |
  f1 |
  ef1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s1 * 6 |
  \voiceFour bf1 |
  ef2 r4 ef |
  
  \barNumberCheck 9
  d4 g2 f4 |
  ef4 ef8 d ef4 g |
  c,4 f2 ef4 |
  d4 d8 c d4 f |
  bf,4 bf8 af bf4 d |
  g,4 af8 bf c4 bf8 c |
  d4 f bf, d |
  ef1~ |
  
  \barNumberCheck 17
  ef2 d4 c |
  d4. ef16 d c4 d |
  ef4 s2. |
  ef4 f8 ef f4 af |
  d,4 ef2 d4 |
  c4 g' c2~ | 
  c4 bf8 a bf2~ |
  bf2 a4 g |
  
  \barNumberCheck 25
  a4. bf16 a g4 a |
  bf2 r4 f |
  g2 r4 d |
  ef4 f g2 |
  f2. ef4 |
  d4 f8 g af!2~ |
  af4 g8 af bf4 g |
  d4 bf' af bf |
  
  \barNumberCheck 33
  bf,4 s2. |
  s1 * 3 |
  bf'1 |
  ef2 r4 ef |
  d4 g2 f4 |
  ef4 ef8 d ef4 g |
  
  \barNumberCheck 41
  c,4 f2 ef!4 |
  d4 d8 c d4 f |
  bf,4 bf8 af bf4 d |
  g,4 a8 b c4 b |
  c2~ c8 b c d |
  b4 g c2~ |
  c2 bf!~ |
  bf af8 g af bf |
  
  \barNumberCheck 49
  g4 c2 bf4 |
  a4 f bf2~ |
  bf2 af!~ |
  af2 g8 f g af |
  f4 bf2 af4 |
  bf4 af2 g4~ |
  g4 f8 g af2~ |
  af4 f bf af |
  
  \barNumberCheck 57
  g4 g8 f g4 bf |
  ef,4 af2 g4 |
  f4 f8 ef  f4 g8 f |
  ef4 g8 f g4 a8 g |
  f4 bf8 af! bf4 d |
  ef4 c g2 |
  af4 af2 g4 |
  af4 f bf2~ |
  
  \barNumberCheck 65
  bf4 r r af |
  g2 r4 f |
  ef2. d8 c |
  d4 bf ef2~ |
  ef2 d |
  bf1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 2 |
  s4 \voiceThree bf8 af bf2~ |
  bf4 af8 g af2~ |
  af4 g f bf |
  g2 f2~ |
  f4 d g2~ |
  g4 c8 bf c2~ |
  
  \barNumberCheck 25
  c4. d16 c bf4 c |
  d2 r4 c |
  d2 r4 af! |
  bf4 c df2 |
  c4 bf c2 |
  bf2 bf |
  ef r4 ef |
  d4 g2 f4 |
  
  \barNumberCheck 33
  ef4 ef8 d ef4 g |
  c, f2 ef4 |
  d4 d8 c d4 f |
  bf,4 bf8 af bf4 d |
  g,2 g'~ |
  g4 g8 f g4 a |
  bf4 d,8 c d4 f |
  g4 g8 f g2~ |
  
  \barNumberCheck 41
  g4 c, f2~ |
  f4 f8 ef f2~ |
  f4 bf, ef r |
  s1 * 5 |
  
  \barNumberCheck 49
  s1 * 4 |
  r2 bf |
  ef2 r4 df |
  c4 f2 ef4 |
  df4 df8 c df4 f |
  
  \barNumberCheck 57
  bf,4 ef2 df4 | 
  c c8 bf c4 ef |
  af,4 af8 g  af4 bf8 af |
  g4 bf8 af  bf4 c |
  d4 d8 c d4 f |
  bf4 g ef2~ |
  ef4 c8 bf  c4 ef |
  f4 d g d |
  
  \barNumberCheck 65
  ef4 r r f |
  ef2 r4 d |
  c2. af4 |
  f2 r4 c' |
  f,4 f8 ef f4 bf |
  g1 |
}

leftHandLower = \relative {
  ef1 |
  bf'2 r4 af |
  g4 c2 bf4 |
  af4 af8 g af4 c |
  f,4 bf2 af4 |
  g4 g8 f g4 bf |
  ef,4 ef8 d ef4 g |
  c,4 d8 ef f2 |
  
  \barNumberCheck 9
  bf,2 bf'~ |
  bf2 a4 g |
  a4. bf16 a g4 a |
  bf4 bf, bf' af! |
  g4 g, g' f |
  ef4 f8 g af2~ |
  af4 g8 f g4 bf |
  ef,4 af8 g af4 c |
  
  \barNumberCheck 17
  f,2. g8 af |
  bf1 |
  \voiceTwo ef,2. d4 |
  c2 r4 f |
  bf,1~ |
  bf2 a |
  bf2 r4 g |
  c2 r4 ef |
  
  \barNumberCheck 25
  f2 r4 f |
  bf4 f bf a |
  g4 d g f |
  ef2. e4 |
  f1 |
  bf,2 r |
  r2 ef |
  bf'2 r4 af |
  
  \barNumberCheck 33
  g4 c2 bf4 |
  af4 af8 g af4 c |
  f,4 bf2 af4 |
  g4 g8 f g4 bf4 |
  ef,4 ef8 d ef4 g |
  c,2 c' |
  bf4 bf8 af! bf4 d |
  ef2 b,4\rest e' |
  
  \barNumberCheck 41
  f4 f,8 e f4 a |
  bf2 b,4\rest d' |
  ef4 ef, ef'8 d c bf |
  \oneVoice c4 c, c'8 bf! af! g |
  af4 af, af' g8 f |
  g1~ |
  g8 f g af  g f e d |
  c1~ |
  
  \barNumberCheck 49
  c8 bf c d  c bf a g |
  f1~ |
  f8 ef' f g  f ef d c |
  bf1_~ |
  \voiceTwo bf8 af' bf c  bf af g f |
  g4 af d,! e |
  f2~ f8 ef! df c |
  bf2~ bf8 bf c df |
  
  \barNumberCheck 57
  ef2~ ef8 ef, f g |
  af8 bf c df ef2~ |
  ef2 d |
  ef1 |
  bf'2 r4 af |
  g4 c2 bf4 |
  af4 af8 g af4 c |
  f,4 bf2 af4 |
  
  \barNumberCheck 65
  g4 g8 f g4 bf |
  ef,4 ef8 d!  ef4 g |
  c,4 d8 ef f2 |
  bf,2 a |
  bf1 |
  ef,1\fermata |
}

leftHand =  {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 2 = 66
  s1 * 67 |
  s2 \tempo 2 = 60 s |
  \tempo 2 = 56 s2 \tempo 2 = 48 s |
  \tempo 2 = 36 s1 |
}

forceBreaks = {
  % page 1
  s1 * 7 \break
  s1 * 6 \break
  s1 * 6 \break
  s1 * 6 \break
  s1 * 6 \break
  s1 * 6 \pageBreak
  
  % page 2
  s1 * 6 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
}

fugueSevenNotes =
\score {
  \header {
    title = "Fugue 7"
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

fugueSevenMidi =
\book {
  \bookOutputName "fugue-7-bwv-876"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
