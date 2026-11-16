%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'(
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ((0.2 . 0) (0.2 . 0) (0 . 0) (0 . 0))
                     ) \etc

moveMMRestA = \once \override Staff.MultiMeasureRest.staff-position = -8

%%% Music %%%

global = {
  \time 2/4
  \key c \major
}

rightHandUpper = \relative {
  \voiceOne 
  R2 * 4 |
  r8 c''16 b c8 g |
  e'4\mordent d |
  r8 c16 b  c d b c |
  a c b c  d e c d |
  
  \barNumberCheck 9
  b16 a b c  b c a b |
  c8. a16  bf8. g16 |
  a4 b!8 c~ |
  c8 c4 b8 |
  c8 g'16 f  g8 c, |
  a'4 g |
  fs8 a16 g  a8 d, |
  b'4 a |
  
  \barNumberCheck 17
  gs8 b16 a  b8 e, |
  c'2~ |
  c8 c b g |
  e4 fs8 g~ |
  g8 fs16 e  fs8.\prall g16 |
  g8 e cs d~ |
  d16 g bf a  g f e d |
  cs8 d4 cs8 |
  
  \barNumberCheck 25
  r8 d16 cs  d8 a |
  f'4 e |
  r8 d16 c  d e c d |
  b16 d c d  e f! d e |
  c8 e16 d  e8 c |
  a'8 c, a d |
  b8 d16 c  d8 b |
  g'8 bf, g c |
  
  \barNumberCheck 33
  a8 d16 c  d e c d |
  b16 a b c  b c a b |
  g8 c16 b  c d bf c |
  a16 g a bf  a bf g a |
  f2~\prallprall |
  f8 d'16 c  d8 f, |
  \clef bass e16 d e f  e f d f |
  c8. c16 b8. b16 |
  
  \barNumberCheck 41
  a4. b8 |
  c4. a8 |
  d4. b8 |
  e4. c8 |
  f4. d8 |
  g4 \clef treble a8 b |
  c2~ |
  c2~ |
  
  \barNumberCheck 49
  c2~ |
  c4 b |
  r8 c16 b  c8 g |
  e'4 d |
  r8 c16 b  c d b c |
  a16 c b c  d e c d |
  b8 d16 c  d8 g, |
  e'4 d |
  
  \barNumberCheck 57
  c8 e16 d  e8 a, |
  f'4 e |
  d8 f16 e  f8 b, |
  g'4 f |
  e8 f g4~ |
  g4 f~ |
  f4 e~ |
  e4 d8 c |
  
  \barNumberCheck 65
  b g c4~ |
  c4 b |
  c8 d  g,16 c8 b16 |
  c16 f, e d  e f d e |
  f16 e f g  f g e f |
  d16 c d e  d e c d |
  e16 d e f  e f d e |
  \clef bass c2~ |
  
  \barNumberCheck 73
  c2~ |
  c2~ |
  c8 b c d |
  \clef treble e8 g16 f  g8 c, |
  a'4 g |
  d'8\rest f,16 e  f8 d |
  g4 f |
  <c e>8 <f af> <e g> <af b> |
  
  \barNumberCheck 81
  <g c>8 <d f> e c' |
  d,8 c' f, b |
  <c, e g c>2 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  r8 g'16 f g8 c, |
  a'4\mordent g |
  r8 f16 e  f g e f |
  d16 f e f  g a f g |
  e16 d e f  e f d e |
  c16 b c d  c d b c |
  a16 b c d  e fs g8~ |
  g8 fs16 e  fs4\prall |
  
  \barNumberCheck 9
  g2~ |
  g16 e f8~  f16 d e8~ |
  e8 d g4 |
  f16 a g a  d,4 |
  c8 r r4 |
  r8 c'16 b  c8 g |
  d'4 c |
  b8 d16 c  d8 a |
  
  \barNumberCheck 17
  e'4 d |
  c8 e16 d  e8 a |
  d,2~ |
  d8 c16 b  a8 b~ |
  b8 a16 g  a8 d, |
  b'4 a |
  r8 g16 f  g a f g |
  e16 g f g  a bf g a |
  
  \barNumberCheck 25
  f16 e f g  f g e f |
  d16 c! d e  d e c d |
  b16 c d e  fs gs a8~ |
  a8 gs16 fs  gs4\prall |
  a16 gs a b  a b g a |
  fs16 e fs g  fs g e fs |
  g16 fs g a  g a f g |
  e16 d e f  e f d e |
  
  \barNumberCheck 33
  f16 e f g  f g e f |
  d8 g16 f  g a f g |
  e16 d e f  e f d e |
  c8 f16 e  f g e f |
  d16 c d e  d e c d |
  b16 a b c  b c a b |
  \clef bass c4. b8~ |
  b16 b a8~  a16 a g8~ |
  
  \barNumberCheck 41
  g8 g fs g~ |
  g16 fs g e  fs4~ |
  fs8 b g4~ |
  g8 c a4~ |
  a8 d b4~ |
  b8 b \clef treble c d |
  e8 g16 f  g8 c, |
  a'4\parenthesize \mordent g |
  
  \barNumberCheck 49
  r8 f16 e  f g e f |
  d16 f e f  g a f g |
  e16 d e f  e f d e |
  c16 b c d  c d b c |
  a16 b c d  e fs g8-\tieShapeA ~ |
  g8 g4 fs8 |
  g4 r |
  r8 g16 f!  g8 d |
  
  \barNumberCheck 57
  a'4 g! |
  f8 a16 g  a8 e |
  b'4 a |
  g8 b16 a  b8 g |
  c4 bf |
  a2 |
  g2 |
  f2~ |
  
  \barNumberCheck 65
  f4 e |
  d4~  d16 f e d |
  g a f g  e8 d |
  c2~ |
  c2~ |
  c2~ |
  c8 c4 b8 |
  \clef bass c8 g16 f  g8 c, |
  
  \barNumberCheck 73
  a'4 g |
  r8 f16 e  f8 d |
  g4 a8 b |
  \clef treble c8 bf16 a  bf8 e |
  f4 e |
  \moveMMRestA R2 |
  r8 d16 c  d8 g, |
  r8 b c d |
  
  \barNumberCheck 81
  e8 b c e |
  d8 r d r |
  s2 |
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
  R2 * 8 |
  
  \barNumberCheck 9
  r8 g16 f! g8 c, |
  a'4\mordent g |
  r8 f16 e  f g e f |
  d16 f e f  g a f g |
  e16 d e f  e f d e |
  f e f g  f g e f |
  d16 cs d e  fs g e fs |
  g16 fs g a  g a f g |
  
  \barNumberCheck 17
  e16 d e fs  gs a fs gs |
  a16 gs a b  a b g a |
  fs16 g e fs  g a b g |
  c16 b c d  c d b c |
  d2 |
  g,8 g'16 f!  g a f g |
  e2 |
  r8 d f, a |
  
  \barNumberCheck 25
  d,8 r r4 |
  R2 * 7 |
  
  \barNumberCheck 33
  R2 * 6 |
  r8 c16 d  c8 g |
  e'4\parenthesize \mordent d |
  
  \barNumberCheck 41
  r8 c16 b  c d b c |
  a16 c b c  d e c d |
  b16 d c d  e f! d e |
  c16 e d e  f g e f |
  d16 f e f  g a f g |
  e16 d e f  e f d e |
  c16 d e d  c bf a g |
  f16 e f g  f g e f |
  
  \barNumberCheck 49
  d16 a' b c  d e f d |
  g2~ |
  g2~ |
  g2 |
  r4 r8 b |
  c8 a d d, |
  g,16 fs g a  b c a b |
  c b c d  c d b c |
  
  \barNumberCheck 57
  a16 gs a b  c d b c |
  \stemUp d16 c d e  d e c d |
  b16 a b c  d e c d |
  \stemNeutral e16 d e f  e f d e |
  c16 b c d  e f d e |
  f16 g f e  d c b! a |
  b16 g a b  c d b c |
  a16 c b c  d e f d |
  
  \barNumberCheck 65
  g16 a f g  a b g a |
  f16 g e f  g a f g |
  e8 f g gs |
  a,8 g'!16 f  g8 c, |
  a'4 g |
  r8 f16 e  f8 d |
  g4 f |
  e16 d e f  e f d e |
  
  \barNumberCheck 73
  f16 e f g  f g e f |
  d16 c d e  d c b a |
  g16 f g a  g f e d |
  c16 c' e c  c, c' g' c, |
  c,16 d e f  g a b! c |
  c,16 c' d c  c, c' f c |
  b16 c b a  g f e d |
  c16 c' d c  e c f c |
  
  \barNumberCheck 81
  g'16 c, af' c,  g' c, b c |
  << { a'!8 r g r } \\ { f, r g r } >> |
  c,2 |
}

tempi = {
  \tempo 4 = 100
  s2 * 80
  s4 \tempo 4 = 92 s |
  \tempo 4 = 84 s4 \tempo 4 = 72 s |
  \tempo 4 = 40 s2 |
}

forceBreaks = {
  % page 1
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 5 \break
  s2 * 6 \break
  s2 * 6 \pageBreak
  
  % page 2
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
}

fugueOneNotes =
\score {
  \header {
    title = "Fugue 1"
    subtitle = "for 3 voices"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 9
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

fugueOneMidi =
\book {
  \bookOutputName "fugue-1-bwv-870"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
