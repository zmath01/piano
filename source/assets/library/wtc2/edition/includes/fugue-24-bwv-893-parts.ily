%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO none

%%% Music %%%

global = {
  \time 3/8
  \key b \minor
}

rightHandUpper = \relative {
  \partial 8 \voiceOne r8 |
  R4. * 5 |
  r8 r b' |
  a8 fs es |
  \oneVoice fs8 gs16 a b cs |
  
  \barNumberCheck 9
  d8 d, d' |
  cs8 cs, cs' |
  b8 cs16 b a gs |
  a16 cs b a gs fs |
  g!8 a16 g fs e |
  fs16 a g fs e d |
  e8 fs16 e d cs |
  \voiceOne d8 fs4~ |
  
  \barNumberCheck 17
  fs4.~ |
  fs8 e a!~ |
  a8 fs d~ |
  d8 cs fs~ |
  fs16 gs \tag layout { gs8.\prallprall } \tag midi { gs8.\trill } fs32 gs |
  a16 cs b a gs fs |
  gs16 as \tag layout { as8.\prallprall } \tag midi { as8.\trill } gs32 as |
  b16 d cs b a! gs |
  
  \barNumberCheck 25
  a16 b \tag layout { b8.\prallprall } \tag midi { b8.\trill } a32 b |
  cs4.~ |
  cs16 d! cs b a gs |
  a8 fs es |
  fs4 b8~ |
  b8 es, fs |
  d8 cs4~ |
  cs4 fs8 |
  
  \barNumberCheck 33
  d8 e fs~ |
  fs8 e d |
  cs8 r a'' |
  fs8 d cs |
  d8 e16 fs g a |
  \oneVoice b8 b, b' |
  a8 a, a' |
  g8 a16 g fs e |
  
  \barNumberCheck 41
  fs16 a g fs e d |
  \voiceOne cs8 d e~ |
  e8 d cs |
  b8 a b |
  cs8 e d |
  cs4.~ |
  cs16 cs d, cs' d, b' |
  cs,16 b' cs, b' cs, a' |
  
  \barNumberCheck 49
  b,16 a' gs b e, gs |
  a8 e fs |
  g8 gs as |
  b8 fs gs |
  a8 as bs |
  cs4.~ |
  cs8 a gs |
  fs8 r r |
  
  \barNumberCheck 57
  r16 a'16 b, a' b, gs' |
  a,16 gs' a, gs' a, fs' |
  gs,16 fs' es gs cs, es |
  fs8 cs fs~ |
  fs16 e ds cs b8~ |
  b8 b e~ |
  e16 d cs b a8~ |
  a8 a d~ |
  
  \barNumberCheck 65
  d8. d16 cs b |
  as8 b cs |
  d4.~ |
  d16 cs d e fs g |
  as,4 r8 |
  R4. * 3 |
  
  \barNumberCheck 73
  r16 g' a, g' a, fs' |
  g,16 fs' g, fs' g, e' |
  fs,16 e' ds fs b, ds |
  e16 ds e g b d, |
  cs16 b cs e a, cs |
  d16 cs d fs a cs, |
  b16 as b d cs b |
  as16 b cs d e8~ |
  
  \barNumberCheck 81
  e8 cs fs |
  d8 b as |
  b8 cs16 d e fs |
  g8 g, g' |
  fs8 fs, fs' |
  e8 fs16 e d cs |
  d8 e fs~ |
  fs8 e d |
  
  \barNumberCheck 89
  cs8 d e~ |
  e8 d cs |
  b4 cs8 |
  d8 a b |
  c8 cs ds |
  e8 b cs |
  d8 ds es |
  fs4 r8 |
  
  \barNumberCheck 97
  R4. |
  r8 r r16 fs |
  e16 d cs b cs as |
  \appoggiatura { as8 } b4. |
  \bar "|."
}

rightHandLower = \relative {
  \partial 8 \voiceFour fs'8 |
  d8 b as |
  b8 cs16 d e fs |
  g8 g, g' |
  fs fs, fs' |
  e8 fs16 e d cs |
  d16 fs e d cs b |
  cs16 b cs d cs b |
  \staffDown \oneVoice a8 fs es |
  
  \barNumberCheck 9
  fs16 gs \tag layout { gs8.\prallprall } \tag midi { gs8.\trill } fs32 gs |
  a16 b a gs fs e |
  ds16 es \tag layout { es8.\prallprall } \tag midi { es8.\trill } ds32 es |
  fs8 gs a |
  b16 cs \tag layout { cs8.\prallprall } \tag midi { cs8.\trill } b32 cs |
  d8 as b~ |
  \voiceThree b8 as16 gs as8 |
  \voiceUp b16 cs d e fs e |
  
  \barNumberCheck 17
  d8 b as |
  b16 cs \tag layout { cs8.\prallprall } \tag midi { cs8.\trill } b32 cs |
  d16 e d cs b a |
  gs16 as \tag layout { as8.\prallprall } \tag midi { as8.\trill } gs32 as |
  b4 r8 |
  R4. * 3 |
  
  \barNumberCheck 25
  R4. |
  r8 r cs |
  \voiceDown a8 fs es |
  fs8 gs16 a b cs |
  \voiceUp d8 \voiceDown d, \voiceUp d' |
  cs8 \voiceDown cs, \voiceUp cs' |
  b8 cs16 b a gs |
  a8( b) cs~ |
  
  \barNumberCheck 33
  cs8 b a |
  g8 a b~ |
  b8 a r |
  R4. * 2 |
  \voiceDown r16 fs' g, fs' g, e' |
  fs,16 e' fs, e' fs, d' |
  e,16 d' cs e a, cs |
  
  \barNumberCheck 41
  d16 cs d e fs gs |
  a16 \voiceUp gs a b a gs |
  fs16 e fs gs a fs |
  gs16 e fs e gs e |
  a16 e cs' e, b' e, |
  \appoggiatura { b'8 } a8. gs16 fs e |
  d8 a' gs |
  r8 gs fs |
  
  \barNumberCheck 49
  r8 e d~ |
  d8 cs c~ |
  c8 b e~ |
  e8 ds d~ |
  d8 cs fs~ |
  fs es cs' |
  a8 fs es |
  fs8 gs16 as b cs |
  
  \barNumberCheck 57
  d8 \voiceDown d, \voiceUp d' |
  cs8 \voiceDown cs, \voiceUp cs' |
  b8 cs16 b a gs |
  a4.~ |
  a4~ a16 a |
  g!16 fs e8 g~ |
  g4~ g16 g |
  fs16 e d8 fs~ |
  
  \barNumberCheck 65
  fs16 fs e4~ |
  e16 e \voiceDown d cs b as |
  b8 \voiceUp fs' b~ |
  b8 \voiceDown b, e~ |
  e16 \voiceUp g fs e d cs |
  d8 b as |
  b8 cs16 ds e fs |
  g8 e ds |
  
  \barNumberCheck 73
  \voiceDown e8 r e |
  ds8 r e |
  \voiceUp fs4. |
  \voiceDown b,8 r e |
  \voiceUp a8 r r |
  \voiceDown a,8 r d |
  \voiceUp g4.~ |
  g8 r r16 g |
  
  \barNumberCheck 81
  fs8 as4 |
  b8 r r |
  R4. |
  r16 d \voiceDown e, \voiceUp d' \voiceDown e, \voiceUp cs' |
  \voiceDown d,16 \voiceUp cs' \voiceDown d, \voiceUp cs' \voiceDown d,
    \voiceUp b' |
  \voiceDown cs,8 \voiceUp cs'4~ |
  cs8 b a! |
  g8 a b~ |
  
  \barNumberCheck 89
  b8 a g |
  fs8 g a~ |
  a8 d, g~ |
  g fs f~ |
  f8 e a~ |
  a8 gs g~ |
  g8 fs b~ |
  b8 as fs |
  
  \barNumberCheck 97
  d8 b as |
  b16 b' as b cs8 |
  r8 fs, e |
  \appoggiatura { e8 } ds4. |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \partial 8 r8 |
  R4. * 7 |
  s4. |
  
  \barNumberCheck 9
  s4. * 6 |
  \voiceTwo r8 r fs |
  d8 b as |
  
  \barNumberCheck 17
  \oneVoice b8 cs16 d e fs |
  g8 g, g' |
  fs8 fs, fs' |
  e8 fs16 e d cs |
  d16 fs e d cs b |
  cs16 ds \tag layout { ds8.\prallprall } \tag midi { ds8.\trill } cs32 ds |
  e16 g! fs e d! cs |
  ds16 es \tag layout { es8.\prallprall } \tag midi { es8.\trill } ds32 es |
  
  \barNumberCheck 25
  fs16 a gs fs es ds |
  es16 gs fs es ds cs |
  \voiceTwo fs8 a, cs |
  fs,8 r r |
  r16 a'16 b, a' b, gs' |
  a,16 gs' a, gs' a, fs' |
  \oneVoice gs,16 fs' es gs cs, es |
  fs,16 fs' gs, fs' a, fs' |
  
  \barNumberCheck 33
  b,16 fs' cs fs d fs |
  e,16 e' fs, e' g, e' |
  a,16 e' b e cs e |
  d16 e fs g a g |
  fs16 a g fs e d |
  g8 r e |
  fs8 r d |
  e8 a4 |
  
  \barNumberCheck 41
  d,8 r b' |
  fs'8 r cs |
  \oneVoice d8 r ds |
  e8 r e, |
  cs8 a gs |
  a8 b16 cs d e |
  fs8 fs, fs' |
  e8 e, e' |
  
  \barNumberCheck 49
  d8 e16 d cs b |
  cs16 e a e ds a' |
  e16 g! fs e d! cs! |
  d16 fs b fs es b' |
  fs16 a gs fs es ds |
  cs16 d! cs b a gs |
  fs16 fs' gs a b cs |
  d16 e! d cs b as |
  
  \barNumberCheck 57
  b8 r e, |
  a8 r d~ |
  d8 cs4~ |
  cs16 b a gs fs e! |
  ds8 b'4~ |
  b16 a g fs e d! |
  cs8 a'4~ |
  a16 g fs e d cs |
  
  \barNumberCheck 65
  b8 g'4~ |
  \voiceTwo g8 fs4~ |
  fs16 e d cs b a! |
  \oneVoice g8 g'4 |
  fs4 r8 |
  r16 b, cs d e fs |
  g8 e ds |
  e8 fs16 g a b |
  
  \barNumberCheck 73
  \voiceTwo c8 c, c' |
  b8 b, b' |
  a8 b16 a g fs |
  g8 g, g'~ |
  g8 a16 g fs e |
  fs8 fs, fs'~ |
  fs8 e d |
  cs16 d e fs g b, |
  
  \barNumberCheck 81
  as16 g' fs e d cs |
  b16 cs d e fs e |
  d16 fs e d cs b |
  \oneVoice e8 r a |
  d,8 r g |
  cs,16 b' as cs fs, as |
  b,16 b' cs, b' d, b' |
  e,16 b' fs b g b |
  
  \barNumberCheck 89
  a,16 a' b, a' cs, a' |
  d,16 a' e a fs a |
  g16 b a g fs e |
  fs16 a d a gs d' |
  a16 c b a g! fs! |
  g16 b e b as e' |
  b16 d cs b as gs |
  fs g! fs e! d! cs |
  
  \barNumberCheck 97
  b16 cs d e fs e |
  d8 b as |
  b8 d, fs |
  b,4. |
}

tempi = {
  \partial 8 \tempo 8 = 138 s8
  s4. * 98 |
  \tempo 8 = 126 s8 \tempo 8 = 116 s \tempo 8 = 96 s |
  \tempo 8 = 60 s4. |
}

forceBreaks = {
  % page 1
  \partial 8 s8 |
  s4. * 6 \break 
  s4. * 6 \break 
  s4. * 6 \break 
  s4. * 5 \break 
  s4. * 5 \break 
  s4. * 5 \pageBreak
  
  % page 2
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 3
  s4. * 6 \break 
  s4. * 6 \break 
  s4. * 6 \break 
  s4. * 6 \break 
  s4. * 6 \break 
}

fugueTwentyFourNotes =
\score {
  \header {
    title = "Fugue 24"
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

fugueTwentyFourMidi =
\book {
  \bookOutputName "fugue-24-bwv-893"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
