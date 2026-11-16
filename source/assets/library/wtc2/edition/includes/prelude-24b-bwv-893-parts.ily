%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 2/2
  \key b \minor
}

rightHand = \relative {
  \global
  \tempo "Allegro"
  d'8 fs b, cs  d fs b, d |
  cs8 fs g16 fs es fs  as8 fs cs' e, |
  d8 fs b, cs  d fs b, d |
  cs8 fs cs as  fs r r4 |
  r4 d'' b fs |
  r4 e' cs fs, |
  r4 fs'~ fs8 e16 \sdb1 d e d cs b |
  b4( as) r8 e16 \sdb1 d cs d e8 |
  
  \barNumberCheck 9
  d8 b'16 \sdb1 cs d cs b8~  b fs'4 a,!8~ |
  a8 b16 \sdb1 a gs a b8~  b d,!4 b'8 |
  cs,8 a'16 \sdb1 b cs b a8~  a e'4 g,!8~ |
  g8 a16 \sdb1 g fs g a8~  a cs,4 a'8 |
  b,8 fs'4 a8~  a g16 \sdb1 fs g fs e d |
  cs8 g'4 b8~  b a16 \sdb1 g a g fs e |
  d8 a'4 c8~  c b16 \sdb1 a b a g fs |
  e8 b'4 d8~  d cs16 \sdb1 b cs b a g |
  
  \barNumberCheck 17
  fs8 a d, e  fs a d, fs |
  e8 a b16 a gs a  cs8 a e' g, |
  fs8 a d, e  fs a d, fs |
  e8 a e cs  a r r4 |
  r4 a'  b16 a gs a fs'4 |
  r4 a,  b16 a gs a g'!4 |
  r4 a,  b16 a gs a  a'8[ d,] |
  d4-\slurShapeA ( cs~\parenthesize \prall  cs16) b cs ds  e[ ds cs ds] |
  
  \barNumberCheck 25
  e8 g b, ds  e g b, e |
  e4( ds8) fs  b,4( a8) fs' |
  fs16 e ds8 e a,  a4( g8) e' |
  e8( ds) a'4~  a16 g fs e  ds[ cs b a] |
  g8 b e, fs  g b e, g |
  fs8 b c16 b as b  ds8 b fs' a, |
  g8 b e, fs  g b e, g |
  fs8 b fs ds  b4 ds'\reverseturn |
  
  \barNumberCheck 33
  e4 b  g'16 fs e fs g8 b, |
  a8\parenthesize \prall gs a cs  cs e a cs, |
  d4 a  fs'16 e d e fs8 a, |
  g8\parenthesize \prall fs g b  b d g b, |
  cs!8 g'4 fs8  as, e'4 d8 |
  es,4 fs gs a! |
  b4 cs  d8 es,4 fs8 |
  gs8 b,4 d cs b8 |
  
  \barNumberCheck 41
  a8 cs fs, gs  a cs fs, a |
  gs8 cs d16 cs bs cs  es8 cs gs' b, |
  a4 cs fs a |
  es gs b d |
  cs8 fs,16 \sdb1 gs a gs fs8~  fs cs'4 e,!8~ |
  e8 fs16 \sdb1 e d e fs8~  fs a,!4 fs'8 |
  g,8 e'16 \sdb1 fs g fs e8~  e b'4 d,8~ |
  d8 e16 \sdb1 d cs d e8~  e g,4 e'8 |
  
  \barNumberCheck 49
  fs,8 cs'4 e8~  e d16 \sdb1 cs d cs b as |
  b8 fs'4 a!8~  a g16 \sdb1 fs g fs e d |
  e8 b'4 d8~  d cs16 \sdb1 b cs b as gs |
  as8 e'4 g!8~  g fs16 \sdb1 e fs e d cs |
  d8 as4 b8  cs ds e16 ds cs ds |
  e8 as,4 b8  d! as4 b8 |
  g'16( fs e4) e8~  e16 fs e ds e8 e~ |
  \stemDown e16 a, g fs g8 e'~  e 
    << 
      { g,4 g8~ | g8 fs16 d' \appoggiatura { \slurDown d8 } cs4\fermata }
      \\
      { e,4 e8~ | e2 } 
    >> \oneVoice r8 e16 \sdb1 fs g fs e8 | % bar 57
    
  d8 fs( as b)  d( cs b as) |
  b4 fs  g16 fs es fs d'4 |
  r4 fs,  g16 fs es fs e'!4 |
  r4 fs,  g16 fs es fs  fs'8[ a,!] |
  << { a4( gs) } \\ { <b, e>2 } >> r8 \stemUp gs'16 \sdb1 as  b cs d e |
  << { b4( as) } \\ { <e g!>2 } >> r8 as16 \sdb1 b cs b as8 |
  << { es'4-. fs-. } \\ { <b, d> <fs cs'> } >> r2 |
  
  \barNumberCheck 65
  r8 b16 \sdb1 a! g! fs e8 << { r8 b'4 as8 } \\ { d,4 <cs e> } >>
  <b d fs b>1\fermata |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  b,4 d fs~  fs16 g fs es |
  fs4 as, cs fs |
  b,4 d fs~  fs16 g fs es |
  fs4 fs, r8 e'! d cs |
  \stemDown d8 fs b, cs  d fs b, d |
  cs8 fs g16 fs es fs  as8 fs cs' e, |
  d8 fs b, cs  d fs b, d |
  \stemNeutral cs8 fs cs as  fs4 as' |
  
  \barNumberCheck 9
  b,4 b' cs ds |
  e4 e, fs gs |
  a,4 a' b cs |
  d4 d, e fs |
  g,4 b d e |
  a,4 cs e fs |
  b,4 d fs g |
  cs,!4 e g a |
  
  \barNumberCheck 17
  d,4 fs a~  a16 b a gs |
  a4 cs, e a |
  d,4 fs a~  a16 b a gs |
  a4 a,  r8 g'! fs e |
  fs8 a d, e  fs a d, fs |
  e8 a b16 a gs a  cs8 a e' g, |
  fs8 a d, e  fs a d, fs |
  e8 a e cs  a8 a' g! fs |
  
  \barNumberCheck 25
  g8 b e, fs  g b e, g |
  fs8 b c16 b as b  ds8 b fs' a, |
  g8 b e, fs  g b e, g |
  fs8 b fs ds  b4 r |
  r4 g' e b |
  r4 a' fs b, |
  r4 b'~\mordent  b8 a16 g  a[ g fs e] |
  e4( ds)  r8 a'16 \sdb1 g fs g a8 |
  
  \barNumberCheck 33
  g8 \clef treble e'16 \sdb1 fs g fs e8~  e8 b'4 d,!8~ |
  d8 e16 \sdb1 d cs d  e8~ e g,!4 e'8 |
  \clef bass fs,8 d'16 \sdb1 e fs e d8~  d a'4 c,8~ |
  c8 d16 \sdb1 c b c d8~  d fs,4 d'8 |
  e,4 d cs b~ |
  b8 d'4 cs8  es, b'4 a8 |
  d,8 gs4 fs8  b,4 b' |
  es,4 gs cs, es |
  
  \barNumberCheck 41
  fs,4 a cs~  cs16 d cs bs |
  cs4 es, gs cs |
  fs,8 cs' fs gs  a cs fs, a |
  gs8 cs d16 cs bs cs  es8 cs gs' b, |
  a4 fs gs as |
  b4 b, cs ds |
  e,4 e' fs g |
  a4 a, b cs |
  
  \barNumberCheck 49
  d,4 fs a d |
  g, b d g |
  cs, e g cs |
  fs, as cs fs |
  b,4 g'  a,!8 g' fs a, |
  g4 e'  fs,8 e' d fs, |
  e8 d' c e,  d c' b d,! |
  cs!8 b' as cs,  b as' b b, |
  
  \barNumberCheck 57
  as2\fermata r4 as' |
  b4 g e fs |
  \stemDown d8 fs b, cs  d fs b, d |
  cs8 fs g16 fs es fs  as8 fs cs' e, |
  d8 fs b, cs  d fs b, d |
  \stemNeutral d4 d, r d' |
  cs4 cs' r8 cs16 \sdb1 d e d cs8 |
  << { gs'4 cs, } \\ { b-. as-. } >> r8 fs16 \sdb1 gs as b cs8 |
  
  \barNumberCheck 65
  d,4 e fs fs, |
  b1_\fermata |
}

tempi = {
  \tempo 2 = 54
  s1 * 55 |
  \tempo 2 = 50 s2 \tempo 2 = 46 s |
  \tempo 2 = 30 s4 \tempo 2 = 10 s \tempo 2 = 54 s2 |
  s1 * 4 |
  \tempo 2 = 36 s2 \tempo 2 = 54 s |
  \tempo 2 = 36 s2 \tempo 2 = 54 s |
  \tempo 2 = 36 s2 \tempo 2 = 54 s |
  s2 \tempo 2 = 46 s4 \tempo 2 = 36 s |
  \tempo 2 = 30 s1 |
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 4 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 3
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
}

preludeTwentyFourBNotes =
\score {
  \header {
    title = "Prelude 24"
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

preludeTwentyFourBMidi =
\book {
  \bookOutputName "prelude-24b-bwv-893"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
