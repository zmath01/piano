%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveNoteA = \once \override Staff.NoteColumn.X-offset = 0.5
moveNoteB = \once \override Staff.NoteColumn.X-offset = 0.5

%%% Music %%%

global = {
  \time 4/4
  \key a \major
}

rightHandUpper = \relative {
  s1 * 4 |
  \voiceOne r8 a'16 b  cs b a cs  b e cs8~  cs16 e d8~ |
  d16 fs e d  e b cs d  cs d e fs  e a gs fs |
  gs16 fs e ds  e4~  e8. ds16  e8. ds16 |
  e8. cs16 d!4~  d8. bs16 cs4~ |
  
  \barNumberCheck 9
  cs8. as16 b!4~  b16 es, fs gs  a gs fs a |
  gs16 b a8~  a16 cs b8~  b16 d cs b  cs gs a b |
  a2~ a16 cs b a  b fs gs a |
  gs2~ gs8. gs16  cs8. ds16 |
  bs8 r ds4~  ds16 bs cs ds  cs fs e ds |
  e2~ e16 g fs e  fs cs d! e |
  d2~ d16 fs e d  e b cs d |
  cs16 d cs b  a gs fs e  d fs gs b  e, gs as cs |
  
  \barNumberCheck 17
  b4~ b8. b16  a4~ a8. a16 |
  gs!4~ gs8. g16  fs4 r |
  fs4 r r2 |
  r16 cs' d e  fs e d fs  e g fs8~  fs16 a g8~ |
  g16 b a gs  a e fs g fs2~ |
  fs16 fs e ds  e b cs d cs2~ |
  cs16 c b as  b fs gs! a  gs8. a16  b8. cs16 |
  d!8. ds16  e8. es16 fs2~ |
  
  \barNumberCheck 25
  fs16 ds e fs  e a gs fs  gs fs e ds  e b cs d |
  cs16 gs a b  a d cs b  cs b a gs  a e fs g |
  fs16 a b cs d4~  d16 gs, a b  cs b a cs |
  b16 d cs8~  cs16 e d8~  d16 fs e ds  e b cs d |
  cs8. b16  gs8.\prall a16 a2\fermata |
  \bar "|."
}

rightHandLower = \relative {
  R1 |
  r2 r8 e'16 fs  gs fs e gs |
  fs16 a gs8~  gs16 b a8~  a16 cs b a  b fs gs a |
  gs16 b a gs  a e fs g  fs a gs fs  gs ds e fs |
  \voiceFour e4. fs8  gs8. gs16   a8. a16 |
  b4 r8 \voiceDown gs  a gs a \voiceUp b |
  b4~ b16 a gs b  a fs b8~  b16 gs cs8~ |
  cs8 fs,~  fs8. fs16  e4~ e8. e16 |
  
  \barNumberCheck 9
  ds4~ ds8. d16  cs4. ds8 |
  es8. es16  fs8. fs16  gs4 r |
  r16 gs fs es  fs cs ds e ds2~ |
  ds16 gs, cs ds  e ds cs e  ds fs e8~  e16 gs fs8~ |
  fs16 a gs fs  gs ds e fs  e8. \voiceDown gs,16  as8 bs |
  cs16 ds cs bs  cs gs as b  as8 r r4 |
  \voiceUp r16 cs' b as  b fs gs! a gs2 |
  a8 r r4 r2 |
  
  \barNumberCheck 17
  r8 r16 fs g4~  g8. es16 fs4~ |
  fs8. ds16 e!4~  e8 d16 cs  b as gs fs |
  d'16 cs b as  b e d cs  d d' cs b  cs gs a! b |
  a4. b8  cs8. cs16  d8. ds16 |
  e2~ e16 \moveNoteA e d cs  d a b cs |
  b2~ b16 \moveNoteB b a gs  a e fs g |
  fs2~ fs16 b, e fs  gs fs e g |
  fs16 a! gs!8~  gs16 b a8~  a16 cs b a  b fs gs a |
  
  \barNumberCheck 25
  gs16 a gs fs  gs ds e fs  e8 r r4 |
  \voiceDown r16 d cs b  cs gs a b  a8 r r4 |
  \voiceUp r4 r16 a' gs! fs  e4~ e8. fs16 |
  gs8. gs16  a8. a16  b4 r |
  r16 a gs fs  e d cs b cs2 |
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
  r8 a16 b  cs b a cs  b d cs8~  cs16 e d8~ |
  d16 fs e d  e b cs d  cs8 a b cs |
  d8 b16 e  cs8 fs16 cs  ds8 e4 ds8 |
  e8. b16  cs8 a  d!8. a16  b8 gs |
  cs16 d! cs b  a8. a16  e'8. e,16  fs8. fs'16 |
  gs4 r8 \voiceTwo e  a, b cs ds |
  \oneVoice e8 e,16 fs  gs fs e gs  fs a gs8~  gs16 b a8 |
  a16 cs b a  b fs gs a  gs b a gs  a e fs gs |
  
  \barNumberCheck 9
  fs16 a gs fs  gs ds es fs  es cs ds es  fs8. fs16 |
  cs'8. cs,16  d!8. ds16  e!8. gs16  es8 cs |
  fs8. gs16  a8 fs  b,8. cs16  ds8 b |
  e8. ds16  cs8. cs'16  bs16 gs cs b  a gs a fs |
  gs8. ds16  bs8 gs \voiceTwo cs2~ |
  cs8 r r4  r8 r16 cs'  as8 fs |
  \oneVoice b8. fs16  d8 b  e8. b16  gs8 e |
  a,16 e' a b  cs b a cs  b d cs8~  cs16 e d8~ |
  
  \barNumberCheck 17
  d16 fs e ds  e b cs d  cs e d cs  d a b cs |
  b16 d cs b  cs gs as b  as fs gs as  gs cs b as |
  b16 cs d e  d g fs e  fs gs a b  a d cs b |
  cs16 a b cs  d8. d, 16  a'8. as16  b8. b,16 |
  c8. c'16  cs8. a16  d!16 cs b a  b fs gs! a |
  gs16 a gs fs  gs b a gs  a gs fs e  fs cs ds e |
  ds16 e ds cs  ds fs e ds  e8. e,16 e'8. as,16 |
  b8. b'16  cs8. cs,16  d8. d'16  ds8. ds,16 |
  
  \barNumberCheck 25
  e!8 r8 r4  r16 fs gs a  gs b a gs |
  \voiceTwo a4 r  r16 b, cs d  cs e d cs |
  \oneVoice d16 cs b a  b fs gs a  gs e fs gs  a b cs a |
  e'8. e,16  fs8. fs'16  gs16 a gs fs  e d cs b |
  a8 d e4 a,2_\fermata |
}

tempi = {
  \tempo 4 = 80
  s1 * 28 |
  \tempo 4 = 72 s4 \tempo 4 = 63 s8 \tempo 4 = 46 s \tempo 4 = 40 s2 |
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 3 \break
}

fugueNineteenNotes =
\score {
  \header {
    title = "Fugue 19"
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

fugueNineteenMidi =
\book {
  \bookOutputName "fugue-19-bwv-888"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
