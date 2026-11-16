%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}

%%% Music %%%

global = {
  \time 12/8
  \key a \major
}

rightHandUpper = \relative {
  \voiceOne e'8 a gs  a cs b  cs2.~ |
  cs8 b a  b d cs  d2.~ |
  d8 cs b cs e d  e d cs  d fs e |
  fs4.~ fs8 gs a  b e,4~  e8 fs gs |
  a8 d,4~  d8 e d  cs d e  d e cs |
  b4. e~  e8 fs e  d!4\prall cs8 |
  d4.~ d8 d cs  d4.~ d4 b'8 |
  e,8 fs e  ds e fs  b,4 cs8  a8 gs a |
  
  \barNumberCheck 9
  gs4 a8  gs fs16 e fs8  b' e, fs  e cs d! |
  cs4 a8 g'4.~  g8 cs, d  cs as b |
  e2.~ e8 d cs  d4 e8 |
  \moveDottedNoteA cs2.~ cs8 b a  b4 cs8 |
  \moveDottedNoteA a4.~ a4 d!8  gs,4 cs8 d4.~ |
  d8 bs cs fs4.~  fs8 ds es a4.~ |
  a8 gs fs  gs a b  es, cs fs~  fs gs es |
  fs4 cs8 fs4.~  fs8 e! d e4.~ |
  
  \barNumberCheck 17
  e8 gs, a d4.~  d8 cs b  cs4.~ |
  cs8 b a b4.~  b8 gs! a~  a4 a8 |
  \appoggiatura { a8 } gs4.~ gs4 r8 r2. |
  e8 a gs  a cs b  cs4 b8  cs e d |
  e16 fs g4~  g4 a,8   e' a, b  a fs g |
  fs4 r8 r4.  d8 a' g  a cs b |
  cs2.~ cs8 b as  b d cs |
  d1.~ |
  
  \barNumberCheck 25
  d8 e fs g4.~  g8 fs e fs4.~ |
  fs8 e d e4.~  e4 d8 cs4 d8~ |
  d8 cs b  cs e d  e4.~ e4 fs8 |
  b,8 e ds e4.~  e8 d cs  d fs e |
  fs4 e8 d4.~  d4 cs8 fs,4 b8~ |
  b8 e, a~  a b gs  a4. \oneVoice r |
  a,8 e' d  e g fs  \voiceOne g4.~ g8 a cs, |
  d8 fs e  fs a g  a d cs  d fs e |
  
  \barNumberCheck 33
  fs8 a gs! a4.~ a2. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceDown r2. a8 \voiceUp e' d  e gs fs |
  gs2.~  gs8 fs e  fs a gs |
  a1.~ |
  a8 b cs d4.~  d8 cs b cs4.~ |
  cs8 b a b4.~  b4 a8 gs4 a8~ |
  a8 gs fs  gs b a  b4.~ b4 fs8~ |
  fs8 b as b4.~  b8 a gs  a cs b |
  cs4 b8 a4.~  a4 gs8 fs4.~ |
  
  \barNumberCheck 9
  fs8 ds e~  e4 ds8  \voiceDown e4 r8 r4. |
  \voiceUp a8 e \voiceDown fs  e cs d  cs r8 r r4. |
  cs8 \voiceUp gs'! fs  gs b as b2.~ |
  b8 e, d e gs fs gs2.~ |
  gs8 fs es fs4.~  fs8 es4~  es8 fs gs |
  a4.~ a8 \voiceDown gs fs  gs4.~ gs8 es fs |
  \voiceUp b!2.~ b4 a8 gs4. |
  a4.~ a4 a8  gs4.~ gs8 a gs |
  
  \barNumberCheck 17
  fs4.~ fs4 fs8  e4.~ e4 e8 |
  d4.~ d4 d8  cs4. c8 b c |
  b4. r8 r e  b' e, fs  e cs d! |
  cs4 b8 cs4 d8  e a gs  a cs b |
  cs4.~ cs4 r8 r2. |
  a,8 d cs  d fs e fs2.~ |
  fs8 e d  e g fs g2.~ |
  g8 fs e  fs as gs  as gs fs  gs b as |
  
  \barNumberCheck 25
  b4.~ b8 cs d  e a,!4~  a8 b cs |
  d8 g,4~  g8 a g  fs g a  g a fs |
  e4. a~  a8 b a  g a fs |
  g4.~ g8 fs g  fs4.~ fs4 a!8 |
  fs8 gs! a~ a gs b  e,4. d |
  cs4. b  \voiceDown a8 e fs  e cs d |
  cs4 r8 r4.  \voiceUp e'8 a, b \voiceDown a fs g |
  fs8 d cs  d fs e  fs \voiceUp fs' e  fs d' cs |
  
  \barNumberCheck 33
  <d fs>4.~ q8 <cs e> <b d> <cs e>2. |
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
  \voiceTwo a4 e8 cs4 e8  a,4 b8 cs4 a8 |
  \oneVoice e'4 e,8 e4 e'8 e4 d8 cs4 b8 |
  a8 a' gs  a cs b  cs b a  b d cs |
  d4 cs8 b4 a8  gs4 r8 a4 r8 |
  fs4 r8 gs4 r8  a4 cs,8 b4 a8 |
  e8 e' ds  e gs fs  gs4.~ gs8 b as |
  b8 d cs  d fs e  fs4.~ fs8 a gs |
  a4 gs8 fs4 e8  ds8 b e  e4 ds8 |
  
  \barNumberCheck 9
  e8 b cs  b gs a  \voiceTwo gs4.~ gs4 e8 |
  a4.~ a4 b8  a8 e fs  e cs d |
  cs4. \oneVoice r8 r fs,  b fs' e  fs a! gs |
  a4. r8 r a,  es d' cs  ds fs es |
  fs8 a gs  a cs b cs2.~ |
  cs1. |
  d!4.~ d8 cs b  cs4.~ cs4 cs,8 |
  fs8 a gs  a cs b  cs4.~ cs8 b cs |
  
  \barNumberCheck 17
  d8 b cs  b gs a  gs e fs  g a g |
  fs8 d e  f g f  e f e  ds e ds |
  e8 b cs!  b gs a  gs4.~ gs4 e8 |
  a4. r a r |
  a'8 e fs  e cs d  cs4.~ cs4 a8 |
  d4 a8 fs4 a8  d,4 e8 fs4 d8 |
  a'4 a'8 a4 a,8  e'4 e'8 e4 as,8 |
  b8 b, cs  d cs b  gs' e d  e g fs |
  
  \barNumberCheck 25
  g4 fs8 e4 d8  cs4 r8 d4 r8 |
  b4 r8 cs4 r8  d4 fs,8 e4 d8 |
  a'8 a' gs!  a cs b  cs4.~ cs4 ds8 |
  e,8 g fs  g b as  b4.~ b8 d cs |
  d4 cs8 b4 a8  gs8 e a~  a fs gs |
  a4 fs8 d4 e8  \voiceTwo a,2.~ |
  a1.~ |
  a2.~ a4 a'8  \oneVoice a4 a,8 |
  
  \barNumberCheck 33
  a2.~ a8 cs e a4. |
}

tempi = {
  \tempo 4. = 58
  s1. * 31 |
  s2. s4. \tempo 4. = 54 s |
  \tempo 4. = 52 s4. \tempo 4. = 50 s \tempo 4. = 48 s \tempo 4. = 30 s |
}

forceBreaks = {
  % page 1
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \pageBreak
  
  % page 2
  s1. * 3 \break
  \grace { s8 } s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
}

preludeNineteenNotes =
\score {
  \header {
    title = "Prelude 19"
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

preludeNineteenMidi =
\book {
  \bookOutputName "prelude-19-bwv-888"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
