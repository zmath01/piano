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
  \time 4/4
  \key d \minor
}

rightHandUpper = \relative {
  s1 |
  \voiceOne R1 |
  \tupletOn \tuplet 3/2 8 { a'16 b c  d[ c b] } \tupletOff
    \tuplet 3/2 { c d e  f[ e d] } e8 a gs g |
  fs8 f e d~  d c b e |
  a,8 b c gs \tuplet 3/2 { a16 g f  e[ f g]  f e d  cs[ d e] } |
  d8 cs d g~  g16 e f g  a b c! a |
  d16 cs d e  f b, e d  cs a d4 c8~ |
  c8 bf a4  g16 g' a g  f a g f |
  
  \barNumberCheck 9
  e16 c f4 e8~  e16 f8 e16~  e16 d8 cs16 |
  d8 bf \tuplet 3/2 { 
    a16 g f  e[ f g]  f e d  cs[ d e]  d e f  g[ f e] |
    f16 g a  bf[ a g]
  } a8 d  cs c b bf |
  a8 a' gs g  fs f e4~ |
  e8 d4 cs8  r16 a' bf a  g bf a g |
  \tuplet 3/2 { f16 e d  cs[ d e]  a, b cs  d[ cs b] cs d e  f[ e d] } e8 a |
  gs8 g fs f  e d4 c8 |
  b8 bf4 a8  gs g4 f8\prall |
  
  \barNumberCheck 17
  e8 r r4  r \tuplet 3/2 { 
    r16 d e  f[ e d] |
    r16 bf'! a  g[ a bf]  r16 a bf  c![ bf a]
  } bf8 fs \tuplet 3/2 { 
    g16 a bf  c[ bf a] |
    bf16 c d  ef[ d cs] 
  } d4~ d8 r \tuplet 3/2 { g16 f e  d[ e f] } |
  e8 g c, r  r4 \tuplet 3/2 { f16 ef d  c[ d ef] } |
  d4 \tuplet 3/2 { cs16 d e!  f[ e d]  e f g  a[ g f] } g8 f |
  e4~ e16 d ef d  cs e d c  b8 bf |
  \moveDottedNoteA a4. g8~  g f e4 |
  \oneVoice d4 r r2 |
  
  \barNumberCheck 25
  r2 \tuplet 3/2 { d16 e f  g[ f e]  f g a  bf[ a g] } |
  \voiceOne a8 d cs c  b bf a g~ |
  g16 g f e  \tag layout { e8.\prallprall } \tag midi { e8.\trill } 
    d16 d2 \fermata |
  \bar "|."
}

rightHandLower = \relative {
  \tuplet 3/2 8 { d'16 e f  g[ f e] } \tupletOff 
    \tuplet 3/2 { f16 g a  bf[ a g] } a8 d cs c |
  \voiceFour b bf a g~  g f e a |
  f8 d a' r  r16 b, c d  e fs g e |
  a16 gs a b  c fs, b a  gs e a4 g8~ |
  \tupletOn \tuplet 3/2 8 { g16 f e  d[ e f] } \tupletOff
    \tuplet 3/2 { e d c  b[ c d] } c8 cs d \voiceDown g, |
  f8 \voiceUp bf! a d  cs d e4 |
  \voiceDown d4 \voiceUp r  r16 a' bf a  g bf a g |
  fs16  d g8~  g \voiceDown f!~  f e d4 |
  
  \barNumberCheck 9
  c16 \voiceUp c' d c  bf d c bf  a8 g f e |
  f8 cs d4~  d8 \voiceDown bf a4~ |
  \tuplet 3/2 { a16 g f  e[ f g] } f8. g16  r16 g fs8  r16 f e8 |
  r16 ef d8  r16 d cs8  d16 \voiceUp a'' bf a  g bf a g |
  f4 \voiceDown e~  e8 d4 cs8 |
  \tuplet 3/2 { d16 e f  g[f e]  \voiceUp f g a  bf[ a g] } a8 d cs c |
  b8 bf a4~  a8[ r16 f!]  e8. e16 |
  d8. d16 c8. c16  b8. bf16 a8 r |
  
  \barNumberCheck 17
  \tuplet 3/2 { a'16 g f  e[ f g]  f e d  cs[ d e] } d8 a bf b |
  c8 cs d4~  d~ d8 r |
  r4 \tuplet 3/2 { d'16 c bf  a[ bf c] } bf8 d g, b |
  c8 r \tuplet 3/2 { c16 bf a  g[ a bf] } a8 c f, a |
  bf8 a~ a2~  a16 a bf! a |
  g16 bf a g  f8 \voiceDown bf,  a4 g8\voiceUp g'~ |
  g8 f16 e  d f e d  cs8 d4 cs8 |
  d16 \voiceDown c! bf a  g bf a g  f a g f  e d cs e |
  
  \barNumberCheck 25
  \tuplet 3/2 { d16 e f  g[ f e]  f g a  bf[ a g] } a4~ 
    \tuplet 3/2 { a16 g f  e[ f g] } |
  f8 \voiceUp f' e a~  a8. g16~  g16 f8 f16 |
  e8 d4 cs8 d2 |
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
  R1 * 5 |
  \tupletOff \tuplet 3/2 { d16 e f  g[ f e]  f g a  bf[ a g] } a8 d cs c |
  b8 bf a g~  g f e a |
  d,16 d' ef d  c ef d c  b g c4 bf8~ |
  
  \barNumberCheck 9
  bf8 a g c  \tuplet 3/2 { f,16 g a  bf[ a g] } a8 a, |
  \tuplet 3/2 { d16 e f  g[ f e]  f g a  bf[ a g] } \voiceTwo a8 g 
    \tuplet 3/2 { f16 e d  cs[ d e] } |
  d4~ d16 c! bf8  a8. d16  g,8. c16 |
  f,8. bf16  e,!8. a16  d,8 d'4 cs8 |
  d16 a' bf a  g bf a g  f4 e |
  d8 r \oneVoice r4  r r16 b c! d |
  e fs g e  a gs a b  c fs, b a  gs e a8~ | 
  a16 d, g! f  e c f8~  f16 b, e d  cs a d8~ |
  
  \barNumberCheck 17
  d8 cs \tuplet 3/2 { d16 c bf  a[ bf c!]  bf a g  fs[ g a] } g8 d |
  ef8 e f fs \tuplet 3/2 { g16 a bf  c[ bf a]  bf c d  ef[ d c] } |
  d8 g4 fs8 \tuplet 3/2 { g16 f e!  d[ e f] } e8 g |
  \tuplet 3/2 { c16 bf! a  g[ a bf] } a8 c \tuplet 3/2 { f,16 ef d  c[ d ef] }
    d8 f | 
  \tuplet 3/2 { bf16 a g  fs[ g a]  g f e!  d[ e f]  e d c!  b[ cs d] }
    cs16 a d8~ |
  \voiceTwo d8 cs d g~  g fs  g16 f e d |
  \oneVoice cs16 e d c  b8 bf  a16 a' bf a  g bf a g |
  \voiceTwo f16 a g f  e d cs e  d c bf a  g bf a g |
  
  \barNumberCheck 25
  f8 bf \tuplet 3/2 { a16 g f  e[ f g]  f e d  cs[ d e] } d8 r |
  \oneVoice r16 e f g  a b c a  d cs d e  f b, e d |
  cs16 a d g  a8 a, d,2 _\fermata |
}

tempi = {
  \tempo 4 = 69
  s1 * 25 |
  s2 \tempo 4 = 63 s4 \tempo 4 = 58 s |
  \tempo 4 = 54 s4 \tempo 4 = 44 s \tempo 4 = 40 s2 |
}

forceBreaks = {
  % page 1
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 * 2 s1\pageBreak
  
  % page 2
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 s1\break
  s1 * 2 s1\break
}

fugueSixNotes =
\score {
  \header {
    title = "Fugue 6"
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

fugueSixMidi =
\book {
  \bookOutputName "fugue-6-bwv-875"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
