%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.5)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key c \minor
}

rightHandUpper = \relative {
  \voiceOne 
  R1 |
  r8 c'' bf c  d g,  c bf16 a |
  bf4 af! g8 c f,4~ |
  f8 ef16 d g8 f  ef4 d\prall |
  c8 g' c4~  c8 bf16 c  d16 e f! g |
  af16 f c' bf  af g f ef!  d bf f' ef  d c bf af |
  g8 r r4 r2 |
  r8 r16 g' ef8. f16  g8 c, f ef16 d |
  
  \barNumberCheck 9
  ef8 af, df c16 bf  c8 f, bf af16 g |
  af8. af16 d,!8 ef!  f ef4 f8~ |
  f8 ef af8. af16 g8. g16 c8. bf!16~ |
  bf16 bf af8~  af16 g! af bf  e,8 r16 af  df8. c16~ |
  c16 c bf8~  bf16 a bf c  fs,8 g~ g16 g8 fs16 |
  g8\noBeam g' ef f!  g c, f ef16 d |
  ef16 d c b  \oneVoice c ef f g  af c, b a  b g' f g |
  \voiceOne ef8 r r4  r8 g e fs |
  
  \barNumberCheck 17
  g8 c, f! ef16 d  ef8. ef16 f8 e |
  f8 bf, ef! d16 c  d8 g, ef'4~ |
  ef16 ef d8~  d16 c8 b16  c8 g' d ef16 f |
  ef8 d r16 c8 bf!16  af8. af16 g4~ |
  g4 c2~  c16 b c d |
  g,8 af! g8. a16  bf8 b  r16 g c fs, |
  g8 ef d4  c8 r r c' |
  b8 c d g,  c bf16 af bf8 c |
  
  \barNumberCheck 25
  af8 bf c f,  bf af16 g af8 g~ |
  g8 a16 bf32 c  f,8 c'  d c16 b c4 |
  r16 d ef b  c4-\tieShapeA ~  <fs, a c>4 r8 <g b> |
  <c, ef g c>1\arpeggio |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  r8 g' ef f  g c,  f ef16 d |
  ef4 d8 c  bf4 a\prall |
  g8 g'4 f ef d16 c |
  b4 c2 b4 |
  c4 r8 ef  d16 fs g8 r4 |
  r2 r8 \voiceDown d bf d |
  ef16 \voiceUp c af' g  f ef d c  b f' ef d  ef af g f |
  d'16 c d8~ d16 b c8~  c16 b c8~ c16 b8. |
  
  \barNumberCheck 9
  c16 g af8~ af16 g8.~  g16 e f8~ f16 e8. |
  f8 c b c  d g, c b!16 a |
  g16 b c8~ c16 c d8~  d16 d ef8~ ef16 f gf8 |
  e8 r16 f df4~  df16 c f8~ f16 g af8 |
  fs8 r16 g ef4~  ef16 d8 c16 bf8 a |
  g8 r s2. |
  s1 |
  s8 c' bf! c  d g, c bf16 a |
  
  \barNumberCheck 17
  bf8 af!16 g  c16 \voiceDown c, \voiceUp g'8~  g16 g a8 bf16 c df8 |
  r16 c bf af!  g8 a  bf ef, af g16 f |
  g8. f16 ef8 d  c ef' af,4 |
  r16 g8 f16 ef8 e  r16 f d8  r16 ef f8~ |
  f8 ef~  ef16 e f g  af4 g8 f~ |
  f16 ef8 f16~  f f ef8  r16 f ef d  ef4 |
  r16 d8 c16~ c a b8  c8\noBeam g' e f |
  g8 c, f ef16 d  e8 f g f16 e |
  
  \barNumberCheck 25
  f8 g e f  g c, f e16 d |
  e8 ef df ef  f ef16 d \voiceThree ef8 g |
  b4\rest g16\rest 
    << 
      { a fs8~  \hideNoteHead fs4 } 
      \new Voice { \voiceTwo a8.^~  \hideNoteHead a4 } 
    >> s |
  s1 |
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
  \voiceThree 
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 5 |
  s4 g' ef f |
  g4 c, f ef8 d |
  ef8 s8 s2. |
  
  \barNumberCheck 17
  s1 * 2 |
  bf8 b c d  g,16 c b c~  c b c8~ |
  c8 b c4~  c8 b c8. b16~ |
  b16 g c8~ c bf  af16 \voiceUp g' f \voiceDown ef!  d4~ |
  d8 c d c  f, g4 a8 |
  g4 r8 r16 f  ef8 r r4 |
  r8 ef' b c  g r r4 |
  
  \barNumberCheck 25
  r8 df' g, af  e c' af bf |
  c8 f, bf af!16 g  af8[ g] g \voiceUp ef' |
  c4\rest a8\rest r16 d  ef4 r8 <d f> |
  s1 |  
}

leftHandLower = \relative { 
  R1 * 3 |
  r8 g8 ef f  g c, f ef16 d |
  ef16 g c, d  ef f g a  bf! d g, a  bf c d e |
  f8 af,! f af  bf \voiceTwo r r4 |
  r8 \oneVoice c, b c  d g, c b16 a |
  b8 g c af!  ef8. af'16 d,8 g |
  
  \barNumberCheck 9
  c,8. f16 bf,!8 ef  af,8. df16 g,8 c |
  f,16 c' f8~  f16 ef d c  b g c bf  af c d,8 |
  ef8. c16 f8 bf!  b c af bf |
  c8 f, bf af16 g  af8 af'16 f bf8 c |
  d,!8 g c, bf16 a  bf8 ef c d |
  g,8 \voiceTwo r r4 r2 |
  r8 g' af g  f d' g, a16 b |
  c16 d ef f  g ef d c  bf! a bf8~  bf16 a d c |
  
  \barNumberCheck 17
  bf16 g c8 a b \oneVoice c f,  bf af16 g |
  a8 d!~  d16 c f ef  d c df8~  df16 c bf af |
  \voiceTwo r4 g ef f |
  g4 c, f ef8 d |
  ef8. g16 af8 g  f d' g, a16 b |
  c8 c, b c  d g, c b16 a |
  b8 c f, g  c, r r4 |
  r2 c'8 r r4 |
  
  \barNumberCheck 25
  r2 c8 r r4 |
  r8 c df c  b f'  ef16 d c d32 ef |
  \oneVoice fs,4 r  r16 b' c fs,  g8 g, |
  <c, c'>1 |
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
  \tempo 8 = 92
  s1 * 22 |
  s4 \tempo 8 = 80 s \tempo 8 = 92 s2 |
  s1 * 2 |
  s2 \tempo 8 = 84 s4 \tempo 8 = 76 s |
  s2. \tempo 8 = 69 s8 \tempo 8 = 60 s |
  s1 |
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
}

fugueTwoNotes =
\score {
  \header {
    title = "Fugue 2"
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

fugueTwoMidi =
\book {
  \bookOutputName "fugue-2-bwv-871"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
