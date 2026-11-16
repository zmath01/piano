%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0.25) (0 . 0.25) (0 . 0) (0 . 0)) \etc

moveMMRestA = \once \override MultiMeasureRest.staff-position = 4.5

%%% Music %%%

global = {
  \time 2/2
  \key d \major
}

rightHandUpper = \relative {
  s1 * 4 |
  \voiceOne r8 d'' d d  g,4 b~ |
  b8 e, a g fs2 |
  gs2 a4 r8 e |
  a8 g fs4~  fs e8 d |
  
  \barNumberCheck 9
  cs4 d4~  d8 b'16 a b8 d, |
  cs4 r  r8 e a g |
  fs2 r8 b b b |
  e,4 g~  g8 cs, fs e |
  d8 fs b a  gs b e d |
  cs4 r r8 d d d |
  g,4 b~  b8 e, a g |
  fs4 r8 a  d c b d |
  
  \barNumberCheck 17
  g4 fs8 e  a g fs e |
  d4 cs8 b  e d cs b |
  a8 cs b a  gs e a4~ |
  a4. gs8 a2~ |
  a8 fs b a  g!4 r |
  r8 fs' fs fs  b,4 d4~ |
  d8 gs, cs b  as4 b8 cs |
  d2~ d4 cs~ |
  
  \barNumberCheck 25
  cs2~ cs8 b16 a  gs8[ fs] |
  es2~ es8 cs fs4~ |
  fs4 es  fs r8 a' |
  a8 a d,4  fs4. b,8 |
  e8 d cs4  r8 a d c |
  b4 r8 b  e d c4~ |
  c2 b~ |
  b8 a4 g8~  g8 fs16 e fs4 |
  
  \barNumberCheck 33
  g8 r r4  r8 g' g g |
  cs,4 e~  e8 a, d c |
  b2~ b8 e, a g! |
  fs4 cs'~  cs8 fs, b a! |
  g2~ g4. e8 |
  a8 g fs a  d cs b d |
  g2~ g8 e a g |
  fs8 g a4~  a8 d, g fs |
  
  \barNumberCheck 41
  e2~ e4 d8 c |
  b2~ b8 e, a g |
  fs4 e  fs8 gs a4~ |
  a4 gs  a8 a' a a |
  d,4 fs~  fs8 b, e d |
  cs2 c~ |
  c8 a d c b2~ |
  b4 a2.~ |
  
  \barNumberCheck 49
  a4 g~  g8 e a g |
  fs4 e d2 | \fermataOverBarline
  \bar "|."
}

rightHandLower = \relative {
  R1 |
  r2 r8 a' a a |
  d,4 fs~  fs8 b, e d |
  cs8 e a g!  fs4 a~ |
  \voiceFour a8 d, g fs  e fs g4~ |
  g4 fs8 e  d4 r |
  r4 r8 b  e d cs4~ |
  cs4 r8 a  d cs b4 |
  
  \barNumberCheck 9
  % a4 \voiceDown gs8 fs e2 |
  a4 gs8 fs e2 |
  r8 e' e e  a,4 c~ |
  c8 fs, b a  g b e d |
  cs8 b as b  cs e d cs |
  b4 r r2 |
  r8 a' a a d,4 fs~ |
  fs8 b, e d cs2 |
  r8 a d c  b d g fs |
  
  \barNumberCheck 17
  e8 d cs!4  d8 e fs4~ |
  fs4 gs4~  gs a8 e |
  a8 gs fs4  e d8 cs |
  b8 cs d4~  d8 cs fs e |
  ds4 r  r8 b e d |
  cs8 r r4  r8 b' b b |
  e,!4 g~  g8 cs, fs e |
  d8 fs b a! gs2~ |
  
  \barNumberCheck 25
  gs8 cs, fs e!  d4. cs8 |
  b2~ b8 a16 b  cs8[ d] |
  cs4. b8  a8 r r4 |
  r8 a' a a  d, r r4 |
  r8 e a g  fs4 r8 d |
  g8 fs e4  r r8 e |
  a8 g fs d  g fs e d |
  c4 b  e d~ |
  
  \barNumberCheck 33
  d8 r r b'  b b e,4 |
  g4. cs,8  fs e d4~ |
  d4 r8 b  e d cs!4~ |
  cs4 r8 cs  fs e d4~ |
  d4 r8 b  e d cs4~ |
  cs8 cs fs e  d fs b a |
  g b e d cs2 |
  d8 e fs4~  fs8 b, e d |
  
  \barNumberCheck 41
  cs4 r8 e,  a g fs e |
  d4 cs!8 d  e d cs e~ |
  e8 d4 cs8  c b a c |
  d!8 e16 f e4~  e8 r r fs'! |
  fs8 fs b,4  d4. gs,8 |
  cs8 b a4~  a8 g fs e |
  fs2 r8 d g fs |
  e8 d cs!4  r8 a d c |
  
  \barNumberCheck 49
  b4. b8  e d cs! e~ |
  e8 d4 cs8 a2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  r8 d' d d  g,4 b~ |
  b8 e, a g  fs4 d |
  r8 fs b a gs2 |
  a4 cs  r8 a d cs |
  b2 r8 b e d |
  \voiceThree cs2 r8 a d cs |
  b2 r8 e, a g! |
  fs8 e d4  r8 d g fs |
  
  \barNumberCheck 9
  % \voiceFour e4 s2. |
  e4 d8 cs b2 |
  e2~ e8 g fs e |
  ds2 e8 d g4~ |
  g4 cs,8 d  e g fs4~ |
  fs8 a! gs fs e2~ |
  e8 e a g!  fs e d4 |
  e8 fs g4~  g8 g fs e |
  d4 r r2 |
  
  \barNumberCheck 17
  r8 e a g  fs a d cs |
  b4 r  r8 b cs4~ |
  cs8 a d cs  b4 a8 gs |
  fs4 e~  e r |
  r8 b' b b  e,4 g~ |
  g8 cs, fs e  ds es16 fs es4 |
  r8 b' as cs~  cs e d! cs |
  b2~ b8 gs cs b |
  
  \barNumberCheck 25
  a2~ a8 fs b a |
  gs2~ gs8 fs16 gs a4 |
  gs8 fs gs4  fs8 r r4 |
  r2 r8 d g! fs |
  e4 r8 a  d c b4~ |
  b8 a g4  r8 e a g |
  fs8 e d fs  b a g4~ |
  g8 a b e a,2 |
  
  \barNumberCheck 33
  g8 d' d d  g,4 b~ |
  b8 e, a g fs2~ |
  fs8 b, e d  cs! d e4~ |
  e8 cs fs e  d r r fs |
  b8 a g4 r2 |
  s1 |
  R1 |
  r8 d' d d  g,4 b~ |
  
  \barNumberCheck 41
  b8 e, a g  fs g a4~ |
  a8 d, g fs  e4 r |
  \moveMMRestA R1 |
  r8 b' b b  e,8 r r4 |
  r8 d' d d  gs,?4 b~ |
  b8 e, a g  fs4. a8 |
  d8 c b a g2-\tieShapeA ~ |
  g8 e a g fs2~ |
  
  \barNumberCheck 49
  fs8 b, e d  cs! d e4 |
  r8 d a' g fs2 |
}

leftHandLower = \relative { 
  s1 * 5 |
  \voiceTwo r8 a a a  d,4 fs~ |
  fs8 b, e d  cs b a4 |
  r8 a d cs  b a g4~ |
  
  \barNumberCheck 9
  g8 fs b a gs2 |
  a4 g! fs2 |
  b1~ |
  b2. as4 |
  b4 r r8 d cs b |
  a4 r8 a b4 r8 b |
  e,4 r8 e'  a,4 r8 a |
  d,4 r r2 |
  
  \barNumberCheck 17
  R1 |
  r8 b' e d  cs e a gs |
  fs8 e d4~  d8 cs fs e |
  d4 e  a, r8 fs |
  b4 r  r8 d cs b |
  as4 r8 as  a4 r8 gs |
  cs4 r8 e  fs, fs' gs as |
  b8 a! gs fs es2 |
  
  \barNumberCheck 25
  r8 fs fs fs  b,4 d~ |
  d8 gs, cs b  a4. b8 |
  cs2 fs,8\noBeam a' a a |
  d,4 fs~  fs8 b, e! d |
  cs8 b a4 r2 |
  r8 b e d  c b a4~ |
  a4 b~  b8 d g fs |
  e fs g e  c a d c |
  
  \barNumberCheck 33
  b8 d g fs e2~ |
  e8 d cs a  d c b a |
  g4 gs a2 |
  as2 b~ |
  b8 b e d  cs e a g |
  fs8 a d cs  b a g fs |
  e8 d cs b  a g fs e |
  d8 r r d'  e4 r8 e |
  
  \barNumberCheck 41
  a8 g fs e  d e fs4~ |
  fs8 b, e d  cs b a4~ |
  a8 a' a a  ds, e f4~ |
  f8 b, e d!  cs! a d cs |
  b8 r r b'  b b e,4 |
  g!4. cs,8  fs8 e d4~ |
  d4 r8 d  g fs e d |
  cs!4 r8 a  d c b a |
  
  \barNumberCheck 49
  g2 a~ |
  a2 d, | \fermataUnderBarline
}

leftHand =  {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 4 = 66
  s1 * 48 |
  s2 \tempo 4 = 60 s4 \tempo 4 = 63 s |
  \tempo 4 = 60 s4 \tempo 4 = 54 s \tempo 4 = 40 s2 |
}

forceBreaks = {
  % page 1
  s1 * 5 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \pageBreak
  
  % page 2
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
}

fugueFiveNotes =
\score {
  \header {
    title = "Fugue 5"
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

fugueFiveMidi =
\book {
  \bookOutputName "fugue-5-bwv-874"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
