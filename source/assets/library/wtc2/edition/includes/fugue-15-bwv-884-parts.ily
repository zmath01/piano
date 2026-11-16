%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'(
                       ((0.5 . 0.5) (0.5 . 0.5) (0 . 0.5) (0 . 0.5))
                       ((0 . 0) (0 . 0) (-0.75 . 0) (-0.75 . 0))
                     ) \etc
tieShapeB = \shape #'(
                       ((0.5 . 0) (0.5 . 0.2) (0 . 0.2) (0 . 0))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                     ) \etc
tieShapeC = \shape #'((0.25 . -0.25) (0 . 0) (0 . 0) (0 . -0.25)) \etc

%%% Music %%%

global = {
  \time 3/8
  \key g \major
}

rightHandUpper = \relative {
  r16 d'' b d g d |
  b16 d g, d' b d |
  e16 c a c fs, a |
  d16 b g b e, g |
  c16 a fs a d, fs |
  b16 a g a b c |
  d16 a b cs d e |
  \voiceOne fs16 e d e fs g |
  
  \barNumberCheck 9
  a8 r a |
  d,8 g4~\mordent |
  g8 fs d |
  b8 e4~\parenthesize \mordent |
  e16 g fs e d e |
  fs16 a g fs e fs |
  g8 r r |
  r8 b4~ |
  
  \barNumberCheck 17
  b16 e, fs a8.~ |
  a16 d, e g8.~ |
  g16 c, d fs8.~ |
  fs8 e4~ |
  e8 d4~ |
  d8 cs16 b cs8 |
  d8 r r |
  r8 a' c,~ |
  
  \barNumberCheck 25
  c16 d b d g d |
  b16 d g, d' b d~ |
  d8 r r |
  r8 b' d,~ |
  d16 e c e a e |
  c16 e a, e' 
    << 
      { c e | fs8 } 
      \new Voice { \hideNoteHead c-\tieShapeA _~ | \hideNoteHead c } 
    >> r r |
  r8 a'4~ |
  
  \barNumberCheck 33
  a8 b16 a g fs |
  e16 fs g4~ |
  g16 c, d fs8.~ |
  fs16 b, c e8.~ |
  e16 a, b ds8.~ |
  ds8 e16 ds e8~ |
  e8 d!16 cs d e |
  fs16 e d fs b fs |
  
  \barNumberCheck 41
  d16 fs b, fs' d fs |
  \oneVoice g16 e cs e a, cs |
  fs16 d  b d g, b |
  e16 cs as cs fs, as |
  d16 fs b, d fs d |
  \voiceOne b16 d fs, b d8~ |
  d4.~ |
  d4.~ |
  
  \barNumberCheck 49
  d8 c c |
  \tag layout { c4.~\prallprall } \tag midi { c4.\trill } |
  c8 c c |
  c4.~ |
  c8 b b |
  b4~ b16 b ~ |
  b16 b a fs! g e |
  fs16 a d, fs a fs |
  
  \barNumberCheck 57
  d16 fs a, d fs c |
  b16 d b d g d |
  \voiceOne b16 d g, b d b |
  \clef bass \oneVoice g bf e, g bf d, |
  r16 bf' a g e' g, |
  fs16\prall e d8 r |
  R4. |
  \clef treble b'32 cs d e fs d e fs g a b c! |
  
  \barNumberCheck 65
  \voiceOne d4.~ |
  d4.~ |
  d8 c4~ |
  c8 b4~ |
  b8 a16 c fs a~ |
  \oneVoice a16 g8 fs16 g fs32 e |
  d32 c b a g b a g fs e d c |
  \appoggiatura { c8 } b4.\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s4. * 7 |
  \voiceFour r16 g' fs a d a |
  
  \barNumberCheck 9
  fs16 a d, a' fs a |
  b16 g e g cs, e |
  a16 fs d fs b, d |
  g16 e cs e a, cs |
  fs16 e d e fs g |
  a16 d, e fs g a |
  b16 a g a b c |
  d4 d8 |
  
  \barNumberCheck 17
  c4 c8 |
  b4 b8 |
  a4 a8 |
  g4 g8 |
  fs4 fs8 |
  e4 g8 |
  fs8 r r |
  r8 c'! a~ |
  
  \barNumberCheck 25
  a8 g r |
  r8 \voiceDown d \voiceUp f~ |
  f8 e r |
  r8 d' b~ |
  b8 a r |
  r8 \voiceDown c, \voiceUp a'-\tieShapeB ~ |
  <a c>8 b r |
  r8 ds fs |
  
  \barNumberCheck 33
  b,8 e8. ds16 |
  e4 b8 |
  a4 a8 |
  g4 g8 |
  fs4 a8~ |
  a8 g8. g16 |
  fs4 r8 |
  R4. |
  
  \barNumberCheck 41
  r8 r \voiceDown fs |
  e4 e8 |
  d4 d8 |
  cs4 cs8 |
  b4 r8 |
  \voiceUp r8 r r16 a' 
  gs16 b e, gs b gs |
  e16 gs \voiceDown b, e \voiceUp gs8~ |
  
  \barNumberCheck 49
  gs8 a a |
  a4.~ |
  a8 fs fs |
  \tag layout { fs4.~\prallprall } \tag midi { fs4.\trill } |
  fs8 g g |
  g8 f16 e d8 |
  c4.~ |
  c8 \voiceDown fs, fs |
  
  \barNumberCheck 57
  \tag layout { fs4~\prallprall fs16 } \tag midi { fs4~\trill fs16\trill }
    e32 fs |
  g8 g g |
  \voiceUp g8 r r |
  s4. |
  \voiceDown \tag layout { cs,4~\prallprall cs16 }
    \tag midi { cs4~\trill cs16\trill } b!32 cs |
  s4. * 3 |
  
  \barNumberCheck 65
  \voiceUp r16 d' \voiceDown b \voiceUp d g d |
  \voiceDown b16 d g, d' b d |
  \voiceUp e16 \voiceDown c a c fs, a |
  \voiceUp d16 \voiceDown b g b e, g |
  \voiceUp c16 \voiceDown a fs a d, fs |
  b8 c d |
  r8 b a |
  g4. |
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
  R4. * 8 |
  
  \barNumberCheck 9
  R4. * 6 |
  r16 d' b d g d |
  b16 d g, d' b d |
  
  \barNumberCheck 17
  e16 c a c fs, a |
  d16 b g b e, g |
  c16 a fs a d, fs |
  b16 a g a b cs |
  d16 cs b a g fs |
  g16 e a g fs e |
  d16 a' fs a d a |
  fs16 a d, a' fs a |
  
  \barNumberCheck 25
  b8 r r |
  r8 \voiceTwo b a |
  \oneVoice gs16 b gs b e b |
  gs16 b e, b' gs b |
  c8 r r |
  r fs, e |
  ds16 fs ds fs b fs |
  ds16 fs b, fs' ds fs |
  
  \barNumberCheck 33
  g16 b g b e b |
  g16 b e, b' g b |
  c16 a fs a d, fs |
  b16 g e g c, e |
  a16 fs ds fs b, ds |
  g16 fs e fs g a |
  b16 fs gs as b cs |
  d16 cs b cs d e |
  
  \barNumberCheck 41
  fs16 e \voiceTwo d4-\tieShapeC ~ |
  d16 g, a cs8.~ |
  cs16 fs, g b8.~ |
  b16 e, fs as8 fs16 |
  b8 b, r |
  \oneVoice r8 d b |
  e8 e, r |
  r8 \voiceTwo gs' e16 d' |
  
  \barNumberCheck 49
  \oneVoice c16 e a, c e c |
  a16 c e, a c g |
  fs16 a d, fs a fs |
  d16 fs a, d fs c |
  b16 d g, b d b |
  g16 b d, g b f |
  e16 g c,d e c |
  \voiceTwo d8 d' d |
  
  \barNumberCheck 57
  d4.~ |
  d8 d d |
  \oneVoice \tag layout { d4~\prallprall d16 }
    \tag midi { d4~\trill d16\trill } cs32 d |
  e8 <d, g bf> q |
  \voiceTwo d8 r r |
  \oneVoice d'8 r16 d,32 e fs g a b |
  c32 a b c d e fs g a fs g a |
  r8 d, c |
  
  \barNumberCheck 65
  \voiceTwo b8 b' d,\rest |
  r8 r g |
  c,8 r a |
  b8 r g |
  a8 r d |
  g8 a b |
  r8 c, d |
  g,4.\fermata |
}

tempi = {
  \tempo 8 = 172
  s4. * 59 |
  \tempo 8 = 160 s4. |
  \tempo 8 = 144 s4. |
  \tempo 8 = 126 s8. \tempo 8 = 160 s |
  s4. * 7 |
  \tempo 8 = 144 s4. |
  \tempo 8 = 132 s8 \tempo 8 = 120 s \tempo 8 = 108 s |
  \tempo 8= 60 s4. |
}

forceBreaks = {
  % page 1
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  % page 2
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 5 \break
}

fugueFifteenNotes =
\score {
  \header {
    title = "Fugue 15"
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

fugueFifteenMidi =
\book {
  \bookOutputName "fugue-15-bwv-884"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
