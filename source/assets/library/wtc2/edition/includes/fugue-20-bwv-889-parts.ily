%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(7 . 6.5)
beamPositionsB = \once \override Beam.positions = #'(7 . 6.5)
beamPositionsC = \once \override Beam.positions = #'(6.5 . 6.5)
beamPositionsD = \once \override Beam.positions = #'(-4.75 . -5.75)

%%% Music %%%

global = {
  \time 4/4
  \key a \minor
}

rightHandUpper = \relative {
  s1 * 5 |
  \voiceOne r4 e'' c f |
  gs,4 d'\rest  \oneVoice r8 d b e |
  c8 a fs d'  b g e c' |
  
  \barNumberCheck 9
  \voiceOne a8 b! c4~  c32 c d e f e d c b4 |
  r8 c'32 b a g  f8 a32 g f e  d e f16~ f32 e d c  b c d16~ d32 c b a |
  g8. a32 b  \tag layout { b8.\prall } \tag midi { b8.\trill } a32 b  c4 r |
  r8 g e a  fs8. fs32 gs  \tag layout { gs8.\prall } \tag midi { gs8.\trill }
    fs32 gs |
  a16 b32 c d e fs gs  a4 g c |
  ds,4 r  r8 a' fs b |
  \oneVoice g8 e cs a'  f! r32 d e f  g8 r32 f e d |
  c!8 r32 e f g  a bf a g f e d c  b! c b a gs fs e d  \voiceOne c8 c' |
    
  \barNumberCheck 17
  b2~ b16 e, a8~  a16 a, d8~ |
  d8 f' b, d  gs,4 b~ |
  b8 e32 d c b  a16 cs32 e g8  f r r4 |
  r16 d32 c b16 c32 d  g,8 f'!  e r r4 |
  r4 a f bf |
  cs,4 r  r8 g' e a |
  f8 d r4  r8 f d g |
  e8 c a f'  d b gs e' |
  
  \barNumberCheck 25
  c4~ c8 r  r32 b c d e fs gs a  b a gs fs e d c b |
  e32 d c b a gs fs e  a g f e d c b a  \oneVoice f' r r16 r8 r4 |
  r8 r32 e fs gs  \tag layout { gs8.\prall } \tag midi { gs8.\trill }
    fs32 gs \voiceOne a2~ |
  a8 b e, gs a2\fermata |
  \bar "|."
}

rightHandLower = \relative {
  R1 * 2 |
  r4 a' g! c |
  ds,4 r r8 a'-! fs-! b-! |
  g8-! e-! cs-! a'-!  f!-! d-! b-! g'-! |
  \voiceFour e8 a4 gs8  \voiceDown a,8 \voiceUp a'32 g f e  \voiceDown d8
    f32 e d c |
  \beamPositionsA b32 c d16~ d32 \voiceUp c b a  gs a b16~ b32 a gs fs
    \voiceDown e8. fs32 gs  \tag layout { gs8.\prall } \tag midi { gs8.\trill }
    fs32 gs |
  a8 r32 a b c  d8 r32 c b a  g8 r32 g a b  c8 r32 bf a g |
  
  \barNumberCheck 9
  f16 \voiceUp f'8 f16~  f32 e f g a g f e  \voiceDown d4~ \beamPositionsB 
    d32 \voiceUp d e f g f e d |
  \voiceDown c8 g c f  \voiceUp r a \voiceDown d, f |
  \voiceDown b,8 d \voiceUp f \voiceDown d  \voiceUp g c, a d |
  \voiceDown b8. b32 cs  \tag layout { cs8.\prall } \tag midi { cs8.\trill }
    b32 cs  \voiceUp d4 r |
  r4 r16 c' b fs'~  fs b, e32 d! c b  a8 c32 b a g |
  fs32 g a16~ a32 g fs e  ds e fs16~ fs32 e ds cs  \voiceDown b8. cs32 ds
    \tag layout { ds8.\prall } \tag midi { ds8.\trill } cs32 ds |
  e8 r r4  r8 d b g' |
  e8 r r4  r \voiceUp r32 e f g  a g f e |
  
  \barNumberCheck 17
  \voiceDown \beamPositionsC d8 \voiceUp f b, d  c4 f |
  \voiceDown gs,4 \voiceUp r  r8 d' b e |
  c8 r r4  r8 a'32 g f! e  d16 fs32 a c8 |
  b8 r r4  r16 g32 f e16 f32 g  c,8 bf' |
  a16 b!32 cs d8~  d cs  d4 r |
  r8 bf e, g  cs, e' a,4~ |
  a8 a d, f  b, d' g,4~ |
  g8 r r4  r8 d b gs' |
  
  \barNumberCheck 25
  a4 r32 \beamPositionsD b a g! f! e \voiceDown d c  d8 b16 a gs4 |
  a4 r  r32 e' d c b a gs fs  d' c b a gs fs e ds |
  e8 r r4  \voiceUp r8 r32 b' c d  \tag layout { cs8.\prall } 
    \tag midi { cs8.\trill } b32 cs |
  d8 f gs, b <cs e>2 |
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
  r4 e' c f |
  gs,4 r r8 d'-! b-! e-! |
  c8-! a-! fs-! ds'-!  e,8 e'32 d c b  a8 c32 b a g |
  fs32 g a16~ a32 g fs e  ds e fs16~ fs32 e ds cs  b8. cs32 ds
    \tag layout { ds8.\prall } \tag midi { ds8.\trill } cs32 ds |
  e8 r32 e f! g  a8 r32 g f e  d!8 r32 d e f  g8 r32 f e d |
  \voiceTwo c!8. d16  e f32 e d16 e  f4 r |
  r8 f b, d  gs, b e4 |
  a,8 r r fs'  g! r r e |
  
  \barNumberCheck 9
  f8 g a g  f d g f |
  e4 a b, r |
  r8 f' d g  e8. e32 fs  \tag layout { fs8.\prall } \tag midi { fs8.\trill }
    e32 fs |
  g8 e a4  r8 d, b e |
  \oneVoice c8 a fs ds'  e, r r4 |
  r8 c'' fs, a  ds, fs b4 |
  \voiceTwo e,8 r32 e, f! g  a8 r32 g f e  d!8 r r4 |
  r8 a'' f d'  gs, e a4~ |
  
  \barNumberCheck 17
  a32 a b c d c b a  gs a gs fs e d c b  a8 a'32 g f e  d8 f32 e d c |
  b32 c d16~ d32 c b a  \oneVoice gs a b16~ b32 a gs fs  e8. fs32 gs
    \tag layout { gs8.\prall } \tag midi { gs8.\trill } fs32 gs |
  a8. b32 c  \tag layout { cs8.\prall } \tag midi { cs8.\trill } b32 cs
    d8. e32 f!  \tag layout { fs8.\prall } \tag midi { fs8.\trill } e32 fs |
  g8. a32 b  \tag layout { b8.\prall } \tag midi { b8.\trill } a32 b
    \clef treble c8. d32 e  \tag layout { e8.\prall } \tag midi { e8.\trill }
    d32 e |
  f8. g32 a  \tag layout { a8.\prall } \tag midi { a8.\trill } g32 a  bf16
    \clef bass bf,32 c! d c bf a  g f g a bf a g f |
  e32 f g16~ g32 f e d  cs d e16~ e32 d cs b  a8. b32 cs  
    \tag layout { cs8.\prall } \tag midi { cs8.\trill } b32 cs |
  d32 e f16~ f32 e d c!  b c d16~ d32 c b a  g8. a32 b 
    \tag layout { b8.\prall } \tag midi { b8.\trill } a32 b |
  c8 r32 c'd e  f8 r32 e d c  b8 r32 b,c d  e8 r32 d c b |
  
  \barNumberCheck 25
  a16 b32 c d e fs gs \voiceTwo a4~  a8 gs!16 fs!  e8 d |
  c4 f! gs, r |
  r8 d'! b e  \oneVoice c a e g! |
  f32 e d8 e32 f  \tag layout { e8.\parenthesize _\upprall } 
    \tag midi { e8.\trill } d32 e <a, a'>2_\fermata |
}

tempi = {
  \tempo 4 = 76
  s1 * 27 |
  \tempo 4 = 69 s8 \tempo 4 = 63 s \tempo 4 = 58 s \tempo 4 = 54 s s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 2
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\break\noPageBreak
}

fugueTwentyNotes =
\score {
  \header {
    title = "Fugue 20"
    subtitle = "for 3 voices"
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

fugueTwentyMidi =
\book {
  \bookOutputName "fugue-20-bwv-889"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
