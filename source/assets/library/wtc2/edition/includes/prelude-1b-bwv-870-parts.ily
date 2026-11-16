%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc
tieShapeB = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 2) (0 . 3) (0.5 . 3) (0.5 . 2)) \etc
tieShapeD = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
tieShapeE = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
tieShapeF = \shape #'((0.75 . 0.5) (0 . 0.5) (0 . 0.5) (-0.75 . .50)) \etc

moveNoteA = \once \override NoteColumn.X-offset = 0.75
moveNoteB = \once \override NoteColumn.X-offset = 0.75
moveNoteC = \once \override NoteColumn.X-offset = 0.5

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}

beamPositionsA = \once \override Beam.positions = #'(-4.5 . -4.5)

%%% Music %%%

global = {
  \time 4/4
  \key c \major
}

rightHandUpper = \relative {
  r16 c'' d e  g, e' f, d'  e, c' g bf  e, g c, bf' |
  a16 g f e  d f a, c  b! d e f  g, f' e d |
  << { \voiceOne e1~ } \new Voice { \voiceThree s16 c8.~ c2. } >> |
  e4~ e16 d8 c16  b! d g8~  g16 g f e |
  f4~ f16 f e d  e2 |
  d4~ d16 d e g  c,4~ c16 a'32 g a16 c, |
  b4-\tieShapeA ~ b16 d e f!  g4~ g8. g16 |
  f2 e4~ e16 e f g |
  
  \barNumberCheck 9
  a16 e f a~  a c b a  gs4~ gs16 e a8~ |
  a8 a g f  e4~ e16 e d cs |
  d16 a' b cs  r16 f8.~  f16 f ef d  ef g cs, d |
  cs4~ cs8 d~  d16 d cs b  cs d e8~ |
  e16 a, d cs  d8. e16  f4~ f8. f16 |
  e4~ e16 e a gs  a4~ a16 g a f |
  d4~ d16 f! e g  c,4~ c8. ef16 |
  d4~  d16 f8 e16  f8. c16  f a d, f |  
  
  \barNumberCheck 17
  b,!16 d g8~  g16 g f e  f4~ f16 d f8~ |
  f16 f e8~  e16 ef d cs  d4~ d8. d16 |
  cs8 c~ c8. c16  b?8 bf~ bf8. bf16 |
  a2 g4~  g16 g a c |
  f,4~ f16 d'32 c d16 f,  e4~ e16 g a b |
  c4~ c8. c16  b4. cs32 d e16 |
  a,4~  a16 a bf c  d a bf d~  d f e d |
  cs4~  cs16 a d8~  d d c bf |
  
  \barNumberCheck 25
  \moveDottedNoteA a8. a16~  a a g fs  g d' e fs  r bf8.~ |
  bf16 \once \omit Accidental bf af g  af c fs, g  fs4~ fs8 g~ |
  g16 g fs e  fs g a!8~  a16 d, g fs  g8. a16 |
  bf2  a4~ a8. af16 |
  g4~ g8. g16  fs4~ fs16 ef f8~ |
  <d f>8 <c e!>16 <b d>  <c e>4~  e16 e d c  d f a c, |
  c8 b! c4~  c4~ c8. b16 |
  c2  r16 c d e  f a d, f |
  
  \barNumberCheck 33
  bf,4~  bf16 bf8 g16~  g16 e f g  a8. b16 |
  c1 |
  \bar "|."
}

rightHandLower = \relative {
  s1 * 2 |
  \voiceFour r16 c' b a  g2. |
  a2 g8. b16 c4~ |
  c16 c d a  b4 c2~ |
  c16 c b a  b4 a2~ |
  a16 a g fs  g8 r  r16 e' b d  cs e a,8~ |
  a4. d8~  d16 d c b  c4~ |
  
  \barNumberCheck 9
  c4 d~  d16 f e d  c8. c16 |
  b4. d8~  d16 d cs8 a4~ |
  a16 r r8 d'8 a16 c  bf2~ |
  bf16 \once \omit Accidental bf a8~  a16 a8 gs16  a4~ a8. g16 |
  f4~ f16 f bf8  a8. a16 d4~ |
  d16 \moveNoteA d c b c4~  c16 cs d e a,4~ |
  a16 fs g a bf4  r8 bf~  bf16 g a c |
  bf4. bf8~  bf16 g a8~ a f |
  
  \barNumberCheck 17
  g8. b16 cs4  d8. c16 bf8. a16 |
  gs8. gs16 a4~  a16 c bf a  bf fs gs8 |
  g!8. bf16  a g fs ef  d e f8  g16 f e d |
  c4. f8~  f16 f e d  e4 |
  d2~  d16 d c b  c8 r |
  r16 a' e g  fs a d,8~  d4. g8~ |
  g16 g f e  f4~  f g~ |
  g16 bf a g  f8. f16  e4. g8~ |
  
  \barNumberCheck 25
  g16 g fs8 d4~  d16 r r8  g'16 bf d, f |
  ef2~  ef16 ef d8~ d16 d8 cs16 |
  d4~ d8. c16  bf8 c~  c16 bf ef8 |
  d4 g~  g16 \moveNoteB g f e  f4 |
  f16 \moveNoteC f e d  e4~  e16 ef d c
    << 
      { r8 g~ | g4~ } 
      \new Voice { \voiceTwo d'4-\tieShapeB ~ | \hideNoteHead d8 s } 
    >>
  g,8 bf  a4~ a8. a16 |
  g4 g~  g16 g f e  d e f8~ |
  f16 f e d  e g c, e  a,2 |
  r16 a' g f  g8 e  c4  r16 f d8 |
  <e g>1 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 3 |
  \voiceThree r16 c d e  f8 e  d4 e |
  d2 c16 s8. s4 |
  s2. r8 d~ |
  d4~ d8 r  r e4.~ |
  e16 a, b cs  s2. |
  
  \barNumberCheck 9
  s1 |
  s2 s8 r16 g'~ g g f e |
  f2 g~ |
  g8. g16 fs8 f  e d e a~ |
  a8 bf a g  f16 g a8~  a16 gs a8 |
  r16 e fs gs a4~  a16 a b cs d4~ |
  d16 d e fs  g8. f16  e4~ e16 c! f8~ |
  f4 bf,8 c~  c c d4~ |
  
  \barNumberCheck 17
  d4 g,8 a~  a16 e f a  d8. c16 |
  b!8 r r4  r16 d, e fs  g a bf8~ |
  bf16 a e g  fs g a8~  a16 g d f  e f g8~ |
  g16 c, d e  s2. |
  s4 r8 g~  g4. r8 |
  r8 a4.~  a16 d, e fs  s4 |
  s1 * 2 |
  
  \barNumberCheck 25
  r8 r16 c'~  c c bf a  bf2 |
  c2~  c8. c16 b!8 bf |
  a!8 g a d~  d ef d c |
  bf16 c d8~  d16 cs d8  r16 a b? cs  d8 r |
  r16 g, a b c r r8  r a~  a16 g d f |
  e16 f g8~  g16 r r8  r4 r16 a d8~ |
  d4 e~  e16 e, d c  g'4~ |
  g2~  g8 f16 e  d e f8-\tieShapeF _~ |
  
  \barNumberCheck 33
  << 
    { f8 e16 d  \voiceFour e4 \voiceThree <f a>8 <e g> <d f>4 } 
    \new Voice { \voiceOne g4-\tieShapeC ~  g16 f g8  s4 r8 af } 
  >> |
  <e g>1 |
}

leftHandLower = \relative {
  <c, c'>1~ |
  q1~ |
  q4  r16 f'e d  c e g, bf  a c e g, |
  \voiceTwo f2. e8 a |
  d,4 g c,16 g' a b  c e a, c |
  \oneVoice fs,8 d g4~  g16 a c e \voiceTwo fs,4 |
  g4. f!8  e g a cs |
  d,4 \oneVoice d'16 f b, d  gs,8 e a g |
  
  \barNumberCheck 9
  f8 e f d  e2~ |
  e16 b' c d  e g! b, d \voiceTwo cs e a,8  d4~ |
  d8 a bf d  g,2 |
  a2. a4 |
  d2~  d8. c16  b!8. a16 |
  gs8 r  r16 g' f e  f4~ f16 e f d |
  bf'2~  bf16 a g bf a4~ |
  a16 g f a  g8 <c, g'> f2~ |
  
  \barNumberCheck 17
  f16 f e d  e8 a, d2~ |
  d16 d c b  c8 f  bf,4~ bf8 ef |
  a,4~ a8 d  g,4 c |
  f,8 s  \oneVoice f'16 a d, f  b,!8 g c4~ |
  c16 d f a \voiceTwo b,4  c4. b8 |
  a8 c d fs  g,8 r  \oneVoice g'16 b e, g |
  cs,8 a d c  bf a bf g |
  a2~  a16 e' f g  a c e, g |
  
  \barNumberCheck 25
  \voiceTwo fs16 a d,8 g4~  g8 d ef g |
  c,2 d~ |
  d4 d g2~ |
  g8. f16  e!8. d16  cs8 r  r16 a' d, f |
  b,8 r  r16 g' c, e  a,4 b |
  c4~  \beamPositionsA c16 e a, c  f, c' d e  f4~ |
  f16 a g f  e g c, e  g,2 |
  c1-\tieShapeD ~ |
  
  \barNumberCheck 33
  c1-\tieShapeE ~ |
  c1 |
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
  \tempo 4 = 60
  s1 * 32 |
  \tempo 4 = 56 s4 \tempo 4 = 52 s \tempo 4 = 48 s \tempo 4 = 44 s |
  s1 |
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
}

preludeOneBNotes =
\score {
  \header {
    title = "Prelude 1"
    subtitle = "in the autograph version"
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

preludeOneBMidi =
\book {
  \bookOutputName "prelude-1b-bwv-870"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
