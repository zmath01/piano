%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 4/4
  \key a \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    r32 c'' d e f16 c  b ds e bf  a cs d gs,~  gs a8 b16 |
    e,8 a gs g  fs f e d~ |
    d16 c32 b c16 a'~  a gs e' g,~  g f32 e ds16 b'~  b as fs' a,~ |
    a32 g a b c16 g  fs as b f  e gs a ds,~  ds e8 fs16 |
    b,8 e' ds d  cs c b a~ |
    a16 g32 fs g16 e'~  e ds b' d,~  d c32 b c16 a  b8 cs |
    d16 d, d'8~  d16 cs a' c,~  c b32 a b16 g  a8 b |
    c8 c' b bf  a af g f~ |
    
    \barNumberCheck 9
    f32 b, c d e16 b  as cs d a  gs b c g~  g fs8 g32 a |
    d,8 g a b  c a b cs |
    d8 \clef bass d, cs c  b bf a g~ |
    g16 f32 e f16 d'~  d \clef treble cs a' c,~  c b32 a gs16 e'~
      e ds b' d,~ |
    d32 c d e f16 c  b ds e bf  a cs d gs,~  gs a8 b16 |
    e,8 e' fs gs  a16 a,a'8~  a16 gs e' g,~ |
    g16 fs32 e fs16 d  e8 fs  g16 g, g'8~  g16 fs d' f,~ |
    f16 e32 d e16 e'~  e f32 e d c b a 
      <<
        { gs2 }
        \\
        { r32 e d \voiceDown c b a gs fs  e8 e, }
      >> |
  }
  \repeat volta 2 {
    \barNumberCheck 17
    e'''8 e, f fs  g gs a b |
    c32 f e d cs16 fs  g ef d gs  a f e bf'~  bf a8 gs16 |
    a32 g! f e f16 bf,  a e' d gs,~  gs32 d' c b a16 e'  d g, fs c' |
    b8 g'f e  d f e d~ |
    d8 c16 b  c8 cs  d ds e fs |
    g32 f! e d cs16 gs'  a ef d as'  b f! e d~  d c8 b16~ |
    b16 a32 b c16 ds,  e cs' d! f,  g8 d' cs bf~ |
    bf32 a g a bf16 cs,  d b' c e,  fs8 c' b af?~ |
    
    \barNumberCheck 25
    af32 g a b c16 g  fs as b f  e gs a ds,~  ds e8 f16 |
    b,8 e' f fs  g gs a b~ |
    b16 a32 b c16 e,~  e ds b' d,~  d32 c d e f16 a,~  a gs e' g,~ |
    g32 f g a bf16 d,~  d cs a' c,~  c b! gs' b,~  b a f'! a,~ |
    a16 gs32 fs gs16 d'~  d32 c b a b16 f'!~  f32 e d cs d16 b'~
      b32 a gs fs gs16 d'~ |
    d16 c32 b c16 a  bf8 b  c cs d e~ |
    e32 cs d e f16 c  b ds e bf  a cs d gs,~  gs a8 b16 |
    e,16 e'~ e32 d c b  d c b a c b a gs a2\mordent |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    a,8 a' gs g  fs f e d~ |
    d32 c d e f16 c  b ds e bf  a cs d gs,~  gs a8 b16 |
    e,8 a b cs  d b cs ds |
    e8 e' ds d  cs c b a~ |
    a32 g a b c16 g  fs as b f  e gs a ds,~  ds e8 fs16 |
    b,8 e fs gs  a16 a, a'8~  a16 gs e' g,~ |
    g16 fs32 e fs16 d  e8 fs  g16 g, g'8~  g16 fs d' f,~ |
    f32 e f g a16 e  ds fs g d  cs e f c~  c b8 c32 d |
    
    \barNumberCheck 9
    g,8 g' fs f  e ef d c~ |
    c16 b32 a b16 g'~  g fs d' f,~  f e32 d cs16 a'~  a gs e' g,~ |
    g32 fs g a bf16 f  e gs a ef  d fs g cs,~  cs d8 e16 |
    a,8 d e fs  g e fs gs |
    a16 a, a'8 gs g  fs f e d~ |
    d16 c32 b c16 e~  e ds b' d,~  d cs32 b cs16 a  b8 cs |
    d16 d, d'8~  d16 cs a' c,~  c b32 a b16 g  a8 b |
    c8. b32 a  \tag layout { f'4\upprall } \tag midi { f4\trill } e8 s4. |
  }
  \repeat volta 2 {
    \barNumberCheck 17
    r32 c'b a gs16 cs  d bf a ds  e c b f'!~  f e8 d16 |
    a'8 a, bf b  c cs d e |
    f8 d c b  a c b a |
    g32 b c d e16 bf  a d cs g~  g32 g' f e d16 gs  a c, b f' |
    e32 d c b a16 gs  a f e as  b g fs c'~  c b8 a16 |
    e'8 e, f fs  g gs a b |
    c8 a g f  e32 f g a bf16 f  e a g d |
    cs8 g' f e  d32 e fs g a16 ef  d g f? c |
    
    \barNumberCheck 25
    b8 e ds d  cs c b a~ |
    a32 c b a gs16 cs  d bf a ds  e c b f'!~  f e8 d16 |
    c8 e fs gs  a a, b cs |
    d8 d, e e'  ds d cs c |
    b8 b a a  gs gs e e |
    a8~ a32 d e fs  g16 ef? d? gs  a f e bf'~  bf a8 g16 |
    f32 e f g a8  gs g  fs f e d~ |
    d16 c32 b c16 a  e'8 e,  a16 b32 c d e fs gs  a8 a, |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo 4 = 44
    s1 * 15 |
    s2 \tempo 4 = 42 s8 \tempo 4 = 40 s \tempo 4 = 36 s \tempo 4 = 32 s |
  }
  \repeat volta 2 {
    \tempo 4 = 44
    s1 * 15 |
    s4 \tempo 4 = 42 s8 \tempo 4 = 40 s \tempo 4 = 36 s \tempo 4 = 34 s 
      \tempo 4 = 32 s \tempo 4 = 30 s |
  }
}

forceBreaks = {
  % page 1
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
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 3
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
}

preludeTwentyNotes =
\score {
  \header {
    title = "Prelude 20"
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

preludeTwentyMidi =
\book {
  \bookOutputName "prelude-20-bwv-889"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
