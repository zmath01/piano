%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc
tieShapeB = \shape #'((0 . 0.25) (0 . 0) (0 . 0) (0.25 . 0.25)) \etc
tieShapeC = \shape #'((0 . 0.25) (0 . 0) (0 . 0) (0.25 . 0.25)) \etc
tieShapeD = \shape #'((0 . 0.25) (0 . -0.1) (0 . -0.1) (0 . 0.25)) \etc
tieShapeE = \shape #'((0 . 0) (0 . -1) (0 . -4) (0 . -1)) \etc
tieShapeF = \shape #'((0 . -1) (0 . -4) (0 . -2) (0 . 0)) \etc
tieShapeG = \shape #'((0.5 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc
tieShapeH = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc

forceHShiftA = \once \override NoteColumn.force-hshift = 1.1

moveNoteA = \once \override NoteColumn.X-offset = 0.5
moveNoteB = \once \override NoteColumn.X-offset = 0.5
moveNoteC = \once \override NoteColumn.X-offset = 0.5
moveNoteD = \once \override NoteColumn.X-offset = 0.5

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}


%%% Music %%%

global = {
  \time 4/4
  \key c \major
}

rightHandUpper = \relative {
  r16 c'' d e  g, e' f, d'  e,32 c' b a g16 bf  e, g c, bf' |
  a32 g f e f16 a  d, f a, c  b! d e f  g, f' e d |
  << { \voiceOne e1~ } \new Voice { \voiceThree s16 c8.~ c2. } >> |
  e4~ e16 d8 c16  b! d g8~  g16 g f e |
  f4~ f16 f e d  e2 |
  d4-\tieShapeB ~ d16 d e g  c,4~ c16 a'32 g a16 c, |
  b4-\tieShapeC ~ b16 d e f!  g4~ g8. g16 |
  f2 e4~  e16 e f g |
  
  \barNumberCheck 9
  a32 g f e f16 a  d,16 c' b a  gs4~ gs16 e a8~ |
  a8 a g! f  e8. e16~  e16 e d cs |
  d16 a' b cs  d f8.~  f16 f ef d  ef g cs, d |
  cs4~ cs8 d~  d16 d cs b  cs d e8~ |
  e16 a, d cs  d8. e16  f4~ f16 e f8 |
  e4~ e16 e a gs  a4~ a16 g a f |
  d4~ d16 f! e g  c,!4~ c8. ef16 |
  d4~ d16 f8 e!16  f8. c16  f16 a d, f |
  
  \barNumberCheck 17
  b,!16 d g8~  g16 g f e  f4~ f16 d f8~ |
  f16 f e8~  e16 ef d cs  d4~ d8. d16 |
  cs8 c~ c8. c16  b8 bf~ bf8. bf16 |
  a2 g4~ g16 g a c |
  f,4~ f16 d'32 c d16 f,  e4~ e16 g a b |
  c4~ c8. c16  b4~ b8 cs32 d e16 |
  a,4~ a16 a bf c  d32 c bf a bf16 d  g, f' e d |
  cs4~ cs16 a d8~  d8 d c bf |
  
  \barNumberCheck 25
  \moveDottedNoteA a8. a16~  a a g fs  g d' e fs  g bf8.~ |
  bf16 \once \omit Accidental bf af g  af c fs, g  fs4~ fs8 g~ |
  g16 g fs e  fs g a!8~  a16 d, g fs  g8. a16 |
  bf4~ bf16 a bf8  a4~ a8. af16 |
  g4~ g8. g16  fs4~ fs16 e f8~ |
  <d f>8 <c e>16 <b d>  <c e>4~  e16 e d c  d f a c, |
  b!4 c2-\tieShapeA ~ c8. b16 |
  c2  r16 c d e  f a d, f |
  
  \barNumberCheck 33
  <<
    { bf,4~ bf16 bf8 g16~  g e f g  a8. b16 }
    \\
    { r16 a g f  g8 e  c4 r16 f d8 }
  >> |
  <c e g c>1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s1 * 2 |
  \voiceFour r16 c' b a  g2. |
  a2 g8. b16 c4~ |
  c16 c d a  b4 c2~ |
  c16 c b a  b4 a2~ |
  a16 a g fs  g8 r  r16 e' b d  cs e a,8~ |
  a4. d8~  d16 d c! b  c4~ |
  
  \barNumberCheck 9
  c4 d~  d16 f e d  c8. c16 |
  b4. d8~  d16 d cs8 a4~ |
  a16 r r8  r a'16 c  bf2~ |
  bf16 \once \omit Accidental bf a8~  a16 a8 gs16  a4~ a8. g16 |
  f4~ f16 f bf8  a8. a16 d8. d16~ |
  d16 \moveNoteD d c b! c4~  c16 cs d e a,4~ |
  a16 fs g a  bf8 r  r bf~ bf16 a32 g a16 c |
  bf4. bf8~  bf16 g a8~ a f |
  
  \barNumberCheck 17
  g8. b16 cs4  d8~ d32 c bf a  bf8. a16 |
  gs8. gs16 a4~  a16 c bf a  bf fs g8~ |
  g8. bf16  a g fs ef  d e f a  g f e df |
  c4. f8~  f16 f e d  e4 |
  d2~ d16 d c b c8 r |
  r16 a' e g  fs a d,8~  d4~ d8 g~ |
  g16 g f! e  f2 g4~ |
  g16 bf a g  f8. f16  e4. g8~ |
  
  \barNumberCheck 25
  g16 g fs8 d4~  d16 r r8  r d'16 f |
  ef2~  ef16 ef d8~  d16 d8 cs16 | 
  d4~ d8. c!16  bf8 c~  c16 bf ef8 |
  d8. d16 g8. g16~  g \moveNoteA g f e  f4~ |
  f16 \moveNoteB f e d  e4~  e16 ef d c  
    << 
      { r8 g~ | g4~ } 
      \new Voice { \voiceTwo d'4-\tieShapeH ~ | \hideNoteHead d8 s } 
    >>
  g,8 bf  a4~ a8. a16 |
  g4 \voiceThree g~  g16 \moveNoteC g f e \voiceFour d e f8~ |
  f16 f e d  e g c, e  \voiceDown a,2 |
  
  \barNumberCheck 33
  g4~ g16 f g8 s4 r8 af |
  g1\fermata |
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
  d2 c16 r r8 r4 |
  r2 r4 r8 d8~ |
  d4. r8  r e4.~ |
  e16 a, b cs  d r r8 s2 |
  
  \barNumberCheck 9
  s1 |
  r2 r8 r16 g16~  g g f e |
  f2 g~ |
  g8. g16 fs8 f  e d e a~ |
  a8 bf a g  f16 g a8~  a16 gs a8 |
  r16 e fs gs a4~  a16 a b cs d4~ |
  d16 d e fs  g8. f16  e4~ e16 c f8~ |
  f4 bf,8 c~  c8. a16 d4~ |
  
  \barNumberCheck 17
  d4 g,8 a~  a16 e f a  d8. c16 |
  b!8 r r4 r16 d, e fs  g a bf8~ |
  bf16 a e! g  fs g a8~  a16 g d f!  e f g8~ |
  g16 c, d! e  f r r8 r2 |
  r4 r8 g~  g4. r8 |
  r8 a4.~  a16 d, e fs  g16 r r8 |
  s1 * 2 |
  
  \barNumberCheck 25
  r8 r16 c~  c c bf a  bf2 |
  c2~  c8. c16 b!8 bf |
  a8 g a d~  d ef d c |
  bf16 c d8~  d16 cs d8  r16 a b! cs  d r r8 |
  r16 g, a! b  c r r8  r a~ a16 g d f |
  e16 f g8  ~ g16 r r8  r4 r16 a d8~ |
  d4 \voiceUp e~  e16 \voiceDown e, d c  g'4~ |
  g2-\tieShapeD _~ \voiceTwo g8 f16 e  d e f8-\tieShapeG ~ |
  
  \barNumberCheck 33
  \forceHShiftA f8 e16 d  e4  <f a>8 <e g> <d f>4 |
  e1 |
}

leftHandLower = \relative {
  <c, c'>1~ |
  q1~ |
  q4  r16 f'e d  c32 d c b c16 e  g, bf a g |
  \voiceTwo f2. e8 a |
  d,4 g  c,16 g' a b  c e a, c |
  fs,8 d g4~  g16 a32 b c d e16  fs,4 |
  g4. f!8  e g a cs |
  d,4~ d16 f' b, d  \oneVoice gs,8 e a g |
  
  \barNumberCheck 9
  f8 e f d  e2~ |
  \voiceTwo e16 b' c d  e g b, d  cs e a,8  d4~ |
  d8 a bf d  g,2 |
  a2. a4 |
  d2~  d8. c!16 b!8. a16 |
  gs8 r r16 c f e  f4~ f16 e f d |
  bf'2~  bf16 a g bf a4~ |
  a16 g f g  g8 <c, g'> f2~ |
  
  \barNumberCheck 17
  f16 f e d  e8 a,  d2~ |
  d16 d c b  c8 f  bf,4~ bf8. ef16 |
  a,4~ a8. fs'16  g,4~ g8. e'16 |
  f,4~ f16 a' d, f  b,!8 g c4~ |
  c16 d32 e f g a16  b,4 c4. b8 |
  a8 c d fs  g,4~ g16 b' e, g |
  \oneVoice cs,8 a d c  bf a bf g |
  a2~  a16 e' f g  a c e, g |
  
  \barNumberCheck 25
  \voiceTwo fs16 a d,8 g4~  g8 d ef g |
  c,2 d~ |
  d4 d g2~ |
  g8. f16 e!8. d16  cs8 r  r16 a' d, f |
  b,8 r  r16 g' c, e  a,4 b |
  c4~  c16 e a, c  f, c' d e  f4~ |
  f16 a g f  e g c, e  g,2 |
  c1-\tieShapeE ~ |
  
  \barNumberCheck 33
  c1-\tieShapeF ~ |
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

preludeOneANotes =
\score {
  \header {
    title = "Prelude 1"
    subtitle = "according to the transcription by Altnikol"
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

preludeOneAMidi =
\book {
  \bookOutputName "prelude-1a-bwv-870"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
