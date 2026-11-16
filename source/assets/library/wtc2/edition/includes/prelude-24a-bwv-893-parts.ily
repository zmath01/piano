%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 4/4
  \key b \minor
}

rightHand = \relative {
  \global
  d'16 fs b, cs  d fs b, d  cs fs g32 fs es fs  as16 fs cs' e, |
  d16 fs b, cs  d fs b, d  cs fs cs as  fs r r8 |
  r8 d'' b fs  r e' cs fs, |
  r8 fs'~ fs16 e32 \sdb2 d e d cs b  b8( as)  r16 e32 \sdb2 d cs d e16 |
  b16 b'32 \sdb2 cs d cs b16~  b fs'8 a,!16~  a b32 \sdb2 a gs a b16~
    b d,!8 b'16 |
  cs,16 a'32 \sdb2 b cs b a16~  a e'8 g,!16~  g a32 \sdb2 g fs g a16~
    a cs,8 a'16 |
  b,16 fs'8 a16~  a g32 \sdb2 fs g fs e d  cs16 g'8 b16~  
    b16 a32 \sdb2 g a g fs e |
  d16 a'8 c16~  c b32 \sdb2 a b a g fs  e16 b'8 d16~  \stemUp 
    d cs32 \sdb2 b cs b a g |
  
  \barNumberCheck 9
  fs16 a d, e  fs a d, fs  e a b32 a gs a  \stemNeutral cs16 a e' g, |
  fs16 a d, e  fs a d, fs  e a e cs  a r r8 |
  r8 a'  b32 a gs a fs'8-!  r8 a,  b32 a gs a g'!8-! |
  r8 a,  b32 a gs a a'16 d,  d8 cs~  cs16 cs32 \sdb2 ds e ds cs ds |
  e16 g b, ds  e g b, e  e8( ds16) fs  b,8( a16) fs' |
  fs32 e ds16 e a,  a8( g16) e'  e ds a'8~  a32 g fs \sdb1 e ds cs b a |
  g16 b e, fs  g b e, g  fs b c32 b as b  ds16 b fs' a, |
  g16 b e, fs  g b e, g  fs b fs ds  b8 ds' |
  
  \barNumberCheck 17
  e8 b  g'32 fs e fs g16 b,  a16\prall gs a cs  cs e a cs, |
  d8 a  fs'32 e d e fs16 a,  g\prall fs g b  b d g b, |
  cs!16 g'8 fs16  as, e'8 d16  es,8 fs gs a |
  b8 cs  d16 es,8 fs16  gs b,8 d16~  d cs8 b16 |
  \clef bass a16 cs fs, gs  a cs fs, a  gs cs d32 cs bs cs  es16 cs gs' b, |
  \clef treble a8 cs fs a  es gs b d |
  cs16 fs,32 \sdb2 gs a gs fs16~  fs cs'8 e,!16~  e fs32 \sdb2 e d e fs16~
    fs a,!8 fs'16 |
  g,!16 e'32 \sdb2 fs g fs e16~  e b'8 d,!16~  d e32 \sdb2 d cs d e16~
    e g,!8 e'16 |
  
  \barNumberCheck 25
  fs,16 cs'8 e16~  e d32 \sdb2 cs d cs b as  b16 fs'8 a!16~
    a g32 \sdb2 fs g fs e d |
  e16 b'8 d16~  d cs32 \sdb2 b cs b as gs  as16 e'8 g!16~
    g fs32 \sdb2 e fs e d cs |
  d16 as8 b16  cs ds e32 ds cs ds  e16 as,8 b16  d as8 b16 |
  g'32( fs e8) e16~  e32 fs e ds e16 e~  e a,32 g fs g e'16~  
    <<
      { 
        \voiceOne e g,8 g16~ | g16 d' \appoggiatura { \slurDown d16 }
        cs8\fermata 
      }
      \new Voice { \voiceFour s8. e,16~ | e4 }
    >> \oneVoice r16 e32 \sdb2 fs g fs e16  d fs( as b)  d( cs b as) |
  b8 fs  g32 fs es fs d'8-!  r8 fs,  g32 fs es fs e'!8-! |
  r8 fs,  g32 fs es fs fs'16 a,! << { a8[ gs] } \\ { <b, e!>4 } >>
    r16 gs'32 \sdb2 a b cs d e |
  << { b8[ as] } \\ { <e g!>4 } >> r16 as32 \sdb2 b cs b as16 
    << { <d es>8[-. <cs fs>]-. } \\ { b8[ fs] } >> r4 |
    
  \barNumberCheck 33
  r16 b32 \sdb2 a! g! fs e16 
    <<
      { r16 b'8[ as16]  <fs b>2\fermata | }
      \\
      { d8[ <cs e>]  <b d>2 | }
    >> 
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  b,8 d  fs~ fs32 g fs es  fs8 as,  cs[ fs] |
  b,8 d  fs~ fs32 g fs es  fs8 fs,  r16 e' d cs |
  \stemDown d16 fs b, cs  d fs b, d  cs fs g32 fs es fs  as16 fs cs' e, |
  d16 fs b, cs  d fs b, d  \stemNeutral cs fs cs as  fs8 as' |
  b,8 b' cs ds  e e, fs gs |
  a,8 a' b cs  d d, e fs |
  g,8 b d e  a, cs e fs |
  b,8 d fs g  cs, e g a |
  
  \barNumberCheck 9
  d,8 fs  a~ a32 b a gs  a8 cs, e a |
  d,8 fs  a~ a32 b a gs  a8 a,  r16 g' fs e |
  fs16 a d, e  fs a d, fs  e a b32 a gs a  cs16 a e' g, |
  fs16 a d, e  fs a d, fs  e a e cs  a a' g! fs |
  g16 b e, fs  g b e, g  fs b c32 b as b  ds16 b fs' a, |
  g16 b e, fs  g b e, g  fs b fs ds  b8 r |
  r8 g' e b  r a' fs b, |
  r8 b'8~\mordent  b16 a32 \sdb2 g a g fs e  e8( ds)
    r16 a'32 \sdb2 g fs g a16 |
  
  \barNumberCheck 17
  \clef treble g16 e'32 \sdb2 fs g fs e16~  e b'8 d,!16~
    d16 e32 \sdb2 d cs d e16~  e g,!8 e'16 |
  \clef bass fs,16 d'32 \sdb2 e fs e d16~  d a'8 c,16~
    c16 d32 \sdb2 c b c d16~  d fs,8 d'16 |
  e,8 d cs b~  b16 d'8 cs16  es, b'8 a!16 |
  d,16 gs8 fs16  b,8 b'  es, gs cs, es |
  fs,8 a  cs~ cs32 d cs bs  cs8 es, gs cs |
  fs,16 cs' fs gs  a cs fs, a  gs cs d32 cs bs cs  es16 cs gs' b, |
  a8 fs gs as  b b, cs ds |
  e,8 e' fs gs  a a, b cs |
  
  \barNumberCheck 25
  d,8 fs a d  g, b d g |
  cs,8 e g cs  fs, as cs fs |
  b,8 g'  a,!16 g' fs a,  g8 e'  fs,16 e' d fs, |
  e16 d' c e,  d c' b d,  cs! b' as cs,  b as' b b, |
  as4\fermata r8 as'  b g e fs |
  \stemDown d16 fs b, cs  d fs b, d  cs fs g32 fs es fs  as16 fs cs' e, |
  d16 fs b, cs  d fs b, cs  \stemNeutral d8 d, r d' |
  cs8 cs'  r16 cs32 \sdb2 d e d cs16  << { gs'8[ cs,] } \\ { b[-. as]-. } >>
    r16 fs32 \sdb2 gs as b cs16 |
    
  \barNumberCheck 33
  d,8 e  fs[ fs,] b2_\fermata |
}

tempi = {
  \tempo 4 = 54
  s1 * 27 |
  s2 \tempo 4 = 50 s4 \tempo 4 = 46 s |
  \tempo 4 = 30 s8 \tempo 4 = 10 s \tempo 4 = 54 s2. |
  s1 |
  s2 \tempo 4 = 36 s4 \tempo 4 = 54 s |
  \tempo 4 = 36 s4 \tempo 4 = 54 s \tempo 4 = 36 s \tempo 4 = 54 s |
  s4 \tempo 4 = 46 s8 \tempo 4 = 36 s \tempo 4 = 30 s2 |
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 3
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
}

preludeTwentyFourANotes =
\score {
  \header {
    title = "Prelude 24"
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

preludeTwentyFourAMidi =
\book {
  \bookOutputName "prelude-24a-bwv-893"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
