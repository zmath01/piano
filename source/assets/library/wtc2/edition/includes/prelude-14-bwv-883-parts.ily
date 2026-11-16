%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 3/4
  \key fs \minor
  \mergeDifferentlyDottedOn
}

rightHand = \relative {
  \global
  fs''8 cs4 a16 b \tuplet 3/2 8 { \stemUp cs16 b a  b[ a gs] } |
  a16 b a gs  \stemNeutral a cs fs gs \tuplet 3/2 8 { a gs fs  gs[ fs es] } |
  fs16 cs8 es16  fs cs8 es16  fs cs fs gs |
  a16 es fs a  b, a' gs a \tupletOff \tuplet 3/2 { b a gs  a[ gs fs] } |
  es16 bs8 cs16  fs bs,8 cs16 \tuplet 3/2 { gs' b, cs  d[ cs b] } |
  a4~ \tuplet 3/2 { a16 gs fs  es[ fs gs]  fs[ es fs] } ds'16. fs,32 |
  fs8. es32 ds \tuplet 3/2 { es16 cs ds  es[ fs gs]  fs es fs  gs[ a b] } |
  a32 gs fs8 a32 cs \tuplet 3/2 { fs16 cs ds  es[ fs gs]  a gs fs  gs[ fs 
    e] } |
  
  \barNumberCheck 9
  ds16\prall e fs8~  fs16 e ds a' \tuplet 3/2 { gs fs e  fs[ e ds] } |
  e16 ds cs8~  cs16 ds cs bs  cs e a, gs |
  a16 bs fs e  fs bs cs ds \tuplet 3/2 { e ds cs  ds[ cs bs] } |
  cs8 gs4 e16 fs \tuplet 3/2 { gs fs e  fs[ e ds] } |
  e16 fs e ds  e gs cs ds \tuplet 3/2 { e16 g fs  e[ d cs] } |
  \tuplet 3/2 { b[ as cs] } e,8~ e32 fs e ds e16 e~  e as b cs |
  d,!16 e d cs  d fs b cs \tuplet 3/2 { d fs e  d[ cs b] } |
  \tuplet 3/2 { a16[ gs b] } d,8~  d32 e d cs d16 d~  d gs a b |
  
  \barNumberCheck 17
  cs,16 d cs b  cs e a b cs4~ |
  cs16 g fs e  fs a d e fs4~ |
  fs16 a, gs fs  gs b e gs  b d,! cs b |
  cs16 fs e ds  e cs b a  << { cs8 b } \\ { cs16 e, b' d, } >> |
  cs16 e a8~  a16 e a b  cs a fs ds' |
  e16 b8 ds16  e b8 ds16  e b as e' |
  d!16\prall cs b8~  b16 fs b cs  d b gs! es' |
  fs16 cs8 es16  fs cs8 es16  fs cs bs fs' |
  
  \barNumberCheck 25
  e!16\prall ds cs8~  cs16 gs cs ds  e cs as g' |
  fs16 d! b as  b fs b d  fs d! bs a'! |
  gs16 e cs bs  cs gs cs e  gs es d! b'! |
  a16 fs8 es16  fs d8 cs16
    <<
      { cs bs8 fs'16 | fs8[ es]\fermata }
      \\
      { s16 bs8. | cs4 }
    >> r4 r |
  fs8 cs4 a16 b \tuplet 3/2 { \stemUp cs b a  b[ a gs] } |
  a16 b a gs  \stemNeutral a cs fs gs \tuplet 3/2 { a gs fs  gs[ fs es] } |
  fs16 cs8 es16  fs cs8 es16  fs d cs as' |
  
  \barNumberCheck 33
  b16 fs8 as16  b fs8 as16 \tuplet 3/2 { b a gs!  a[ gs fs] } |
  g16 d8 fs16  g d8 fs16 \tuplet 3/2 { 
    g a b  a[ gs fs] |
    es16 fs gs  fs[ es ds]  cs b cs  d[ cs b]  a b cs  b[ a gs] |
  }
  fs16 es'8  fs16 gs, fs'8 es16  as, e'8 ds16 |
  \tuplet 3/2 { 
    ds16 e fs  e[ ds cs]  bs cs ds  cs[ bs as]  gs fs gs  a[ gs fs] |
    es16 fs gs  fs[ es ds]
  } cs4~ cs16 es32 gs b16 d! |
  \tuplet 3/2 { cs16 ds es  fs[ e d]  cs b a d[ cs b]  a gs fs  gs[ fs es] } |
  \voiceOne fs2~ fs16 es8 fs16 |
  
  \barNumberCheck 41
  \oneVoice d'!16 bs8 cs16  es, b'8 a16 \tuplet 3/2 { gs b a  gs[ fs es] } |
  \tuplet 3/2 { fs16 gs a  b[ cs d] }
    <<
      { cs,8 fs~  fs16 fs8 es16 | fs2. }
      \\
      { r8 gs, a b | as2. }
    >>
  \bar "|."
}

leftHandUpper = \relative {
  \voiceThree r8 a cs fs~ fs[ es] |
  fs8 cs4 a16 b \tuplet 3/2 8 { cs b a  b[ a gs] } |
  a8 b cs gs' fs es |
  fs8 cs fs, es fs b |
  r8 gs a fs es4~ |
  \tuplet 3/2 { es16 es fs } \tupletOff \tuplet 3/2 { gs[ fs es]  fs gs a
    b[ a gs] } a4~ |
  a16 gs32 fs gs8~ gs4 r |
  r4 r r8 b |
  
  \barNumberCheck 9
  a8. a16  gs8 fs e ds |
  cs2~ cs8 cs |
  fs8 r r4 r8 fs~ |
  fs8 e gs cs~  cs[ bs] |
  cs8 gs~ gs16  fs e8 r e~ |
  e8 cs fs2~ |
  fs8 fs  b16 fs8 fs16~  fs d8.~ |
  d8 b e2~ |
  
  \barNumberCheck 17
  e8 e a gs a4~ |
  a8 a d a~  a16 a8 ds,16 |
  gs!8 b e b gs4 |
  a8 gs~  gs16 a8 b16~  b a8 gs16 |
  a4 r r8 c |
  b8 a g b cs!4 |
  b4 r  r8 d |
  cs8 b a cs ds4 |
  
  \barNumberCheck 25
  cs8. gs16  e cs e gs cs4~ |
  cs8 fs,  d16 b d fs  b8 fs |
  cs'8 gs  e16 cs e gs  cs8 gs |
  fs8 gs a gs fs gs |
  a8 gs\fermata r4 r |
  r8 a cs fs~  fs[ es] |
  fs8 cs4 a16 b \tuplet 3/2 { cs b a  b[ a gs] } |
  a8 b cs b a g |
  
  \barNumberCheck 33
  fs8 e fs cs' fs,4 |
  b8 d d d d d |
  cs4 r8 gs cs4~ |
  cs8 cs b4 r8 as |
  bs8 cs ds gs,! as bs |
  b!8 a! gs a b es, |
  fs8 cs fs4. es8 |
  \tuplet 3/2 { \voiceUp r16 e'! d  cs[ d e]  d cs b  as[ b cs] } b8 \voiceDown
    <fs a!> |
    
  \barNumberCheck 41
  <es gs>8[ <fs a>] <gs b> fs4 es8 |
  cs8 es~ \tuplet 3/2 { es16 fs e  d[ cs b] } cs4~ |
  cs2. |
}

leftHandLower = \relative {
  \voiceTwo fs4~ fs8. gs16  a8 cs |
  fs,2.~ |
  fs8 gs a b a gs |
  fs8 e! d2 |
  cs2.~ |
  cs4 r r8 bs |
  cs4. cs8 ds es |
  fs8 fs, a cs fs4~ |
  
  \barNumberCheck 9
  fs8 ds bs4 r8 gs |
  cs8. b!16 a8 gs fs4~ |
  fs8 gs a fs gs4 |
  cs4~ cs8. ds16 e8 gs |
  cs,4~ cs8. b!16 as8 cs |
  fs,4 r8 cs' as fs |
  b4. d8  b16 d gs, b |
  e,4  r8 b' gs e |
  
  \barNumberCheck 17
  a4 r r16 e' cs a |
  d4. fs8 ds b |
  e2~ e8 e |
  a,8 b cs d e e |
  a8. e16  cs a cs e a4 |
  g8 fs e g cs,! fs |
  b8. fs16  d b d fs b4 |
  a8 gs fs a ds, gs |
  
  \barNumberCheck 25
  cs4 r r8 e, |
  d!4 r r8 ds |
  e4 r r8 es |
  fs4. e!8 ds d |
  cs4 r8 \tupletOff \tuplet 3/2 { b16 cs d  cs[ b a]  b a gs } |
  fs8 fs'4~ fs16 gs  a8 cs |
  fs,2.~ |
  fs8 gs a gs fs e! |
  
  \barNumberCheck 33
  d8 cs d e d cs |
  b8 b' b b b b |
  b4 r8 es, fs cs |
  d4. d8 cs g' |
  fs4. e8~  e[ ds] |
  cs8 ds es fs gs gs, |
  a4. b8 cs b |
  as8 fs' b, cs d b |
  
  \barNumberCheck 41
  cs4. d8 b cs |
  a8 gs a r r cs, |
  fs2. |
}

leftHand = \relative {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 4 = 46 
  s2. * 27 |
  s2 \tempo 4 = 42 s4 |
  \tempo 8 = 40 s8 \tempo 8 = 20 s \tempo 4 = 46 s2 |
  s2. * 12 |
  s4 \tempo 4 = 40 s \tempo 4 = 36 s8 \tempo 4 = 28 s |
  s2. |
}

forceBreaks = {
  % page 1
  s2. * 3 \break
  s2. * 3 \break
  s2. * 2 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 2
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 3
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 2 \break
}

preludeFourteenNotes =
\score {
  \header {
    title = "Prelude 14"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 11
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

preludeFourteenMidi =
\book {
  \bookOutputName "prelude-14-bwv-883"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
