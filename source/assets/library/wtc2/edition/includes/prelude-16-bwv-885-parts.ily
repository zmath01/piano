%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . -0.5) (0 . -0.5) (-1 . -0.5) (-1 . -0.5)) \etc
tieShapeB = \shape #'((0.75 . -1) (0 . -1) (0 . -1) (-0.75 . -1)) \etc
tieShapeC = \shape #'((0.75 . -1) (0 . -1) (0 . -1) (-0.75 . -1)) \etc
tieShapeD = \shape #'((0.5 . -0.5) (0 . -0.5) (0 . -0.5) (-0.5 . -0.5)) \etc

moveAccidentalA = \once \override Accidental.extra-offset = #'(0.4 . 0)
moveAccidentalB = \once \override Accidental.extra-offset = #'(0.2 . 0)

%%% Music %%%

global = {
  \time 4/4
  \key g \minor
  \mergeDifferentlyDottedOn
}

rightHandUpper = \relative {
  \tempo "Largo"
  \voiceOne 
  r16. g'32 d16. f32 ef4~  ef16. ef32 d16.\prall c32  a'16. c,32 bf16.\prall
    a32 |
  r16. d'32 a16. c32 bf4~  bf16. bf32 a16.\prall g32  e'16. g,32 fs16.\prall
    e32 |
  fs16. g32 a8~  a16. d,32 g16. bf32  c4~ c16. d32 a16. c32 |
  b16. c32 d8~  d16. g,32 c16. ef32  f4~ f16. g32 d16. f32 |
  ef4 a\rest r d, |
  r16. g32 d16. f32 ef4~  ef16. ef32 d16. c32 a'4~ |
  a16. g32 d16. f!32 ef8 g  \moveAccidentalB cs,4 d~ |
  d2~ d16. d32 e16. g32  cs,16. d32 e8~ |
  
  \barNumberCheck 9
  e16. d32 a16. c!32 bf4~  bf16. bf32 a16. g32  \once \omit Accidental e'16.
    g,32 fs16. e32 |
  fs16. g32 a8~  a16. d,32 g16. bf32  c4~ c16. d32 a16. c32 |
  bf4~ bf16. bf32 ef16. g32 af,2~ |
  af16. d,32 f16. af32  g8. g16  f4~ f16. f32 g16. d32 |
  ef4~ ef16. ef'32 a,16. c32  fs,16. d32 fs16. a32 d4~ |
  d4~ d16. g32 c,16. ef32  a,16. f32 a16. c32 f4~ |
  f16. bf32 g16. d32  e8.\prall e16  f4~ f16. ef32 d!16. f32 |
  b,4 c~  c16. d32 ef16. bf32 c4~ |
  
  \barNumberCheck 17
  c16. c32 d16. a32 bf4~  bf16. ef32 g,16. bf32  af8 c |
  fs,4 g~  g16. fs32 g16. bf32~  bf16. bf32 a16. g32 |
  fs8. fs16 g4~  g16. bf32 a16. c32 fs,4 |
  g8. f!16  ef8. ef16  d8 r16 g  f'8. d16 |
  ef8. d16  ef16. c32 g'16. fs32 g2\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  r4 r16. bf32 a16. c32 \voiceDown fs,2 |
  bf8 c  d16. \voiceUp f!32 e16. g32 \voiceDown cs,2 |
  s4. \voiceUp g'8~  g16. g32 fs16. e32 fs4 |
  g4 r8 c~  c16. c32 b16. a!32 b4 |
  r16. c32 g16. bf!32 \voiceThree af4~  \voiceFour af16. af32 g16. f32  
    << 
      { d'16. f,32 ef16. d32 | \tag layout { d'8 } \tag midi { s8 } } 
      \new Voice { \hideNoteHead d4~ | \hideNoteHead d8 } 
    >> b \voiceThree c4-\tieShapeA ~  c4_~ \voiceFour c16. c32 bf16. a32 |
  bf2 a-\tieShapeB ^~ |
  a16. e32 f16. d32  gs8.\prall gs16  a8 bf!~  bf16. a32 e16. g32 |
  
  \barNumberCheck 9
  f4 r16. f32 e16. g32 \staffDown \voiceOne cs,2 |
  \voiceUp d4 r8 g~  g16. g32 fs16. e32 fs4 |
  r16. g32 d16. f!32  ef!8 \voiceDown bf  c16. \voiceUp d32 ef16. c32
    f8.\mordent f16 |
  bf,4~ bf16. bf32 ef8~  ef16. ef32 d16. c32 d4~ |
  d16. b32 c16. \voiceDown g32  ef16. g32 c,16. ef32 s4 \voiceUp r16. a'32
    bf16. fs32 |
  g2 f!16 r r8  r16. f32 g16. a32 |
  bf2~ bf16. bf32 af16. g32 af4 |
  g2-\tieShapeC ^~ g8 r r16. g32 fs16. a32 |
  
  \barNumberCheck 17
  d,4~ d16. fs32 g16. d32 ef2 |
  d2-\tieShapeD ^~ d4 cs |
  d16. cs32 d8~  d16. cs32 d8~  d8 c~  c16. ef!32 d16. c32~ |
  c16. a32 b8~  b16. b32 c8~  c16. c32 b8  r16. c'32 b8~ |
  b16. g32 c8~  c16. c32~ c8~ 
    << 
      {  c16. c32 d16. a32 b4 } 
      \new Voice { s8 \voiceOne d8~ d4\fermata } 
    >> |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 2 |
  \voiceThree d'8. c!16 bf4  a4. d8~ |
  d8. b16 g8 ef'  af, f g4~ |
  g4 \voiceUp r16. ef'32 d16. f32 \voiceDown b,2 |
  ef8 f \voiceUp g fs16. g32  a8 \voiceDown a,4 d8~ |
  d8 g~  g16. g32 d16. f32  \staffUp \voiceTwo \moveAccidentalA e4 f~ |
  f8 \voiceDown r r16. cs,32 d16. e32  f8 g! a[ cs,] |
  
  \barNumberCheck 9
  d8 f~  f16. a32 g16. f32  e8 f g[ bf] |
  a8. fs16 d8 bf'  ef,! c d4~ |
  d8 s8 s2. |
  r8 bf ef g  c,4 g'~ |
  g8 r s4  d16. fs32 a8~  a16. fs32 g16. a32 |
  bf4~ bf16. bf32 a16. bf32  c16. a32 f!16. a32 d4~ |
  d4~ d16. df32 c16. bf32  c4~ c16. c32 f16. ef32 |
  \staffUp \voiceTwo d4 ef~ ef8 \voiceDown g, fs[ a]~ |
  
  \barNumberCheck 17
  a8 g16. fs32 g4~  g8 c~  c16. c32 g16. bf32 |
  \staffUp \voiceTwo a!4 bf \voiceDown r r16. fs32 g16. a32 |
  bf4~ bf16. bf32 a16. g32 a2 |
  g4~ g8. fs16  g8. f32 ef  d16. g,32 g'8~ |
  g16. f32 ef16. g32  c,16. ef64 d ef8 d2\fermata |
}

leftHandLower = \relative {
  g,1 |
  g'1 |
  \voiceTwo d2.~ d8. ef!16 |
  f!4 ef d g8 g, |
  c1 |
  c'4~ c16. bf!32 a!16. c32 fs,2 |
  g2~ g16. a32 e16. g32  f16. d32 a16. c!32 |
  bf4 b a2 |
  
  \barNumberCheck 9
  d1 |
  c!4 bf a d8 d, |
  g8 bf16. d32 g4~  g16. f32 c16. ef32  d16. bf32 f16. af!32 |
  g2 a!4 b |
  c4 r8 c~  c8. c16 bf!4~ |
  bf16. bf32 c16. d32 ef4~  ef4 r16. d32 ef16. f32 |
  g2 f~ |
  f16. g32 d16. f32  ef16. c32 g16. bf!32 a!2 |
  
  \barNumberCheck 17
  bf2 c~ |
  c16. d32 a16. c32  bf16. g32 d16. f!32  ef8 ef'16. d32  ef8 e |
  d1 |
  g,1~ |
  g1 |
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
  \tempo 8 = 60
  s1 * 20 |
  \tempo 8 = 56 s4 \tempo 8 = 52 s \tempo 8 = 48 s \tempo 8 = 30 s |
}

forceBreaks = {
  % page 1
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 s1\pageBreak
  
  % page 2
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 s1\break
}

preludeSixteenNotes =
\score {
  \header {
    title = "Prelude 16"
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

preludeSixteenMidi =
\book {
  \bookOutputName "prelude-16-bwv-885"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
