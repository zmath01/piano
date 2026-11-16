%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieMinimumA = \once \override Tie.minimum-length = 3.5

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}

%%% Music %%%

global = {
  \time 3/4
  \key g \minor
}

rightHandUpper = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  \voiceOne r4 d'' r8 bf |
  ef!4 c r8 a |
  d4 bf r8 g |
  c8 c c c c c |
  c8 bf16 a  bf g bf c  d cs d8 |
  d8 g,  r16 g a bf  c bf c8 |
  c8 f, r16 f g a  bf a bf8~ |
  bf16 a bf a  g f g f  e d e d |
  
  \barNumberCheck 17
  cs8 a' d, c'!  b16 d f8 |
  ef4 r r8 r16 a |
  bf8. a16  g fs g fs g4~ |
  g4 fs8. a16 d,8. c16 |
  bf2 a4~ |
  a16 a bf a  g8. fs16 g4~ |
  g8. bf16  a8. c16  fs,8. a16 |
  \moveDottedNoteA d,8. fs16  g8 r r r16 \tieMinimumA bf~ |
  
  \barNumberCheck 25
  bf16 bf a g  a a b c  d c d8~ |
  d8 c16 b c4 r8 r16 c~ |
  c16 c bf! a  bf d e f!  g f g8~ |
  g8 f16 e  f d f g  a g a8
  a8 d,  r16 d e f  g f g8 |
  g8 c,  r16 c d e  f e f8~ |
  f8. f16  e d e d  cs d e8~ |
  e8 d f4 r8 d |
  
  \barNumberCheck 33
  g4 ef r8 c |
  f4 d r8 bf |
  ef8 ef ef ef ef ef~ |
  ef8 d16 ef  f bf, f' g  a g a8 |
  a8 d,  r16 d e f  g f g8 |
  g8 c,  r16 c d e  f e f8~ |
  f16 d e f  g a bf g  f e d c |
  f8 c  f ef!16 d  ef8 c |
  
  \barNumberCheck 41
  d8 g,  g' f16 ef  f8 d |
  ef8 c  af' g16 f  g8 ef |
  f2~ f16 ef d c |
  b8 d~  d16 g, c8~  c16 c b8 |
  c4 r16 bf! a! g a4~ |
  a16 g a bf g2~ |
  g16 f g a f2~ |
  f8. a16  g8. f16  bf8. a16 |
  
  \barNumberCheck 49
  g4 f8 r r4 |
  R2. |
  r4 ef' r8 c |
  f4 d r8 bf |
  ef4 c r8 af |
  d8 d d d d d |
  d16 c d c  b a! b a g4~ |
  g4~ g16 g a b c4~ |
  
  \barNumberCheck 57
  c8 b16 a!  b4 bf~ |
  bf8 a!16 g  a4 af~ |
  af8 g16 f  g f' g af  bf af bf8 |
  bf8 ef,  r16 ef f g  af g af8 |
  af8 d,  r16 d ef f  g f g8~ |
  g8 bf af g f ef |
  d!8 d ef f g4~ |
  g16 f g f  ef d ef d  c bf c bf |
  
  \barNumberCheck 65
  a!4. bf8 c4~ |
  c4 bf~  bf16 bf a g |
  fs8 r r4 r4 |
  R2. |
  r4 d' r8 bf |
  ef!4 c r8 a |
  d4 bf r8 g |
  c8 c c c c c |
  
  \barNumberCheck 73
  c4 r8 d bf4 |
  r8 c\noBeam bf a a g |
  g4 r16 a bf c  d c d ef |
  a,4 r16 bf c d  ef! d ef f |
  b,16 g a! b  c b c8  c c |
  c4 r8 fs g4 |
  r16 bf a g  fs e d c  bf a g fs |
  g2.~ |
  
  \barNumberCheck 81
  g2.~ |
  g8 r16 d'8 c bf! a g16 |
  fs8 c'16 d32 ef  d8 g,4 fs8 |
  g4 r r | \fermataUnderBarline
  \bar "|."
}

rightHandLower = \relative {
  R2. * 4 |
  r4 g' r8 f |
  bf4 g r8 e |
  a4 f r8 d |
  g8 g g g g g |
  
  \barNumberCheck 9
  \voiceFour g8 f16 e  f d e fs  g fs g8 |
  g8 \voiceDown c, r16 c \voiceUp d ef  f! ef f8 |
  f8 \voiceDown bf,  r16 bf \voiceUp c d  ef d ef8~ |
  ef16 d ef d  c bf c bf  a g a g |
  fs8 d'4 g8  r r16 a~ |
  a16 a g f  e4 r8 r16 g~ |
  g16 g f e  d4 r8 r16 f |
  e8. f16  e8. d16  cs8. d16 |
  
  \barNumberCheck 17
  a4 r r8 r16 d'~ |
  d8 g, c, bf'!  a16 c ef8~ |
  ef8 d r4 r8 r16 d |
  c16 bf c bf  c8. c16  bf a bf a |
  g16 f! g f  ef8.\prall d16 c4 |
  f4 d r |
  c8 c c c c c~ |
  c8 bf16 a  bf g a bf  c bf c8~ |
  
  \barNumberCheck 25
  c8 f16 e  f8 r r r16 f~ |
  f16 f ef! d  ef c fs g  a g a8~ |
  a8 g16 fs  g8 r \voiceDown r r16 cs, |
  \voiceUp r4 a' r8 f |
  bf4 g r8 e |
  a4 f r8 d |
  g8 g g g g g |
  g8 f  r16 a bf c  d c d8 |
  
  \barNumberCheck 33
  d8 g,  r16 g a bf  c bf c8 |
  c8 f,  r16 f g a  bf a bf8~ |
  bf8. bf16  a g a g f4~ |
  f4 r r8 r16 c' |
  bf16 c bf a  g4 r8 r16 bf |
  a16 bf a g  f4 r8 r16 a |
  g2. |
  f4 r  r16 g af g |
  
  \barNumberCheck 41
  f8 d r4  r16 a' b a |
  g8 ef r4  r16 b' c bf |
  af16 g af8~  af16 g af8~ af4~ |
  af16 af g f  ef8. ef16  d8. f16~ |
  f16 f ef d ef4  r8 c |
  f4 d r8 bf |
  ef4 c r8 a |
  d8 d d d d d |
  
  \barNumberCheck 49
  d8 c r4 r8 r16 f |
  ef8 d r4 r8 r16 g |
  f!8 ef16 f  g4 r8 ef |
  af4 f r8 d |
  g4 ef r8 c |
  f8 f f f f f |
  f8 f f f  r16 f g f |
  f16 ef f d  ef4~ ef8 af |
  
  \barNumberCheck 57
  f4 r16 af g f  e f e f |
  e4 r16 g f ef  d ef d ef |
  d4 r16 d' ef f  g f g8 |
  g8 c,  r16 c d ef  f ef f8 |
  f8 bf,  r16 bf c d  ef d ef8~ |
  ef16 df ef df  c bf c bf  af g af g |
  f8 f g af bf b |
  c16 d ef d  c bf! c bf  af g af g |
  
  \barNumberCheck 65
  fs4. g8 a4~ |
  a16 d, ef! d~  d d ef d  c8 cs |
  d8 r r16 a'bf c  d c d8 |
  d8 g,  r16 g a bf  c bf c8 |
  c8 fs,  r16 fs g a  bf a bf8 |
  bf8 ef,  r16 e f! g  a g a8 |
  a8 d,  r16 d e fs  g fs g8~ |
  g8[ bf] <ef, a> <ef g> <ef fs> <ef g> |
  
  \barNumberCheck 73
  <d a'>4 r8 <d fs> <d g>4 |
  r8 <ef a> <d g>4 <c fs> |
  <bf d>4 r r |
  r16 e f g  a g a8~  a af |
  g8 r r r16 bf  a g a g |
  fs4 r8 a bf4 |
  R2. |
  r16 b, c d  ef d ef8 ef4 |
  
  \barNumberCheck 81
  r16 c d ef  f ef f8 f4~ |
  f8 af g f ef ef |
  d8 r r ef d4~ |
  d4 r r |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree r4 d' r8 bf |
  ef4 c r8 a |
  d4 bf4 r8 g |
  c8 c c c c c |
  c8 bf16 a  bf g bf c  d cs d8 |
  \oneVoice d8 g,  r16 g a bf  c! bf c8 |
  c8 f,  r16 f g a  bf a bf8~ |
  bf16 a bf a  g f g f  e d e d |
  
  \barNumberCheck 9
  cs8 a' d, c'! bf g |
  c16 bf c bf  a8. g16  a8 f |
  bf16 a bf a  g8 a16 bf  c8. bf16 |
  a4 r8 g fs e |
  \voiceThree d8 fs  g8 d'16 e  f e f8 |
  d4~ d8 c!16 bf  a8 g |
  c4~ c8 bf16 a  g8 f |
  bf4 r r |
  
  \barNumberCheck 17
  s2. * 3 |
  r4 d r8 bf |
  ef!4 c r8 a |
  d4 bf r8 g |
  s2. * 2 |
  
  \barNumberCheck 25
  s2. * 3 |
  d'16 cs d a  d,8 d'16 e  f8 d |
  \oneVoice g16 g, a bf  c g c d  e8 c |
  f16 f,g a  bf f bf c  d c bf a |
  bf16 d cs d  g, bf a bf  e, e' cs a |
  d16 d, f a  d c! d c  bf d g, bf |
  
  \barNumberCheck 33
  ef,!16 g a bf  c bf c bf  a c f, a |
  d,16 f g a  bf a bf a  g bf ef, g |
  c,16 g' a bf  c bf c bf  a f g a |
  \voiceThree bf16 a bf c  d c d e  f e f8~ |
  f4 d e~ |
  e4 c d~ |
  d2 c4~ |
  c4 r r |
  
  \barNumberCheck 41
  s2. * 4 |
  r4 c r8 a |
  d4 bf r8 g |
  c4 a r8 f |
  bf8 bf bf bf bf bf |
  
  \barNumberCheck 49
  bf8 a16 g  a g a b  c b c8~ |
  c8 b16 a  g d g a  b c d8~ |
  d8 c  r16 g a b  c b c8 |
  c8 f,  r16 f g af  bf af bf8 |
  bf8 ef,  r16 ef f g  af g af8~ |
  af16 g af g  f ef f ef  d c d c |
  b8 b' b b c d~ |
  d8 g, c4~ c8 f |
  
  \barNumberCheck 57
  d2 df4 |
  c2 cf4 |
  bf4 d r8 bf |
  ef4 c r8 af |
  d4 bf r8 g |
  c8 c c c c c |
  d16 c d c  bf af bf af  g f g f |
  ef8 ef' ef ef ef ef |
  
  \barNumberCheck 65
  ef16 d ef d  c bf c bf  a g a g |
  fs8 a bf fs g4 |
  a8 r d4 r8 bf |
  ef4 c r8 a |
  d4 bf r8 g |
  c4 a r8 f |
  bf4 g r8 bf |
  a8 g s2 |
  
  \barNumberCheck 73
  s2. * 2 |
  s4 r4  r16 a bf c |
  d16 cs d8~  d a16 b  c b c8 |
  d8 r r r16 d  c bf! c bf |
  a4 r8 c d4 |
  r4 r16 a bf c! d4~ |
  d16 g, a b  c b c8 c4 |
  
  \barNumberCheck 81
  r16 a b c  d c d8 d4~ |
  d8 f ef d c bf |
  a8 r r bf  a16 bf c8~ |
  c8 b r4 r |
}

leftHandLower = \relative {
  \voiceTwo R2. * 5 |
  s2. * 3 |
  
  \barNumberCheck 9
  s2. * 4 |
  r4 g r8 f! |
  bf4 g r8 e |
  a4 f r8 d |
  g8 g g g g g |
  
  \barNumberCheck 17
  \oneVoice g8 f16 e  f d ef f  g f g8 |
  c,16 b c d  ef c d ef  f ef f8 |
  bf,16 f' g a  bf a bf8  r16 e, fs g |
  \voiceTwo a16 g a8  r16 d, e fs  g fs g8 |
  g8 c,  r16 c d ef  f ef f8 |
  f8 bf,  r16 bf c d  ef d ef8~ |
  \oneVoice ef16 d ef d  c bf c bf  a g a g |
  fs8 d' g, f'! e c |
  
  \barNumberCheck 25
  f8 a d, c' b g |
  c8 g c, a' fs d |
  \voiceTwo g8 bf e, d' cs a |
  d16 r r8 r4 r |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 3 |
  r4 bf r8 a |
  d4 bf r8 g |
  c4 a r8 f |
  bf8 bf bf bf bf bf |
  bf8 a16 g  a f a b  c b c8^~ |
  
  \barNumberCheck 41
  \oneVoice c16 c b a  b g b c  d c d8~ |
  d16 g, c b  c g c d  ef d ef8~ |
  ef8. ef16  d8. c16  b8. d16 |
  g,8 b c af f g |
  \voiceTwo c,4 r16 c d ef  f ef f8 |
  f8 bf,  r16 bf c d  ef d ef8 |
  ef8 a,  r16 a bf c  d c d8 |
  d16 c d c  bf a bf a  g f g f |
  
  \barNumberCheck 49
  e16 c d e  f c f g  af8 d, |
  g16 fs g a!  b a b d  g8 b, |
  c16 c' g ef  c4 r8 r16 af'~ |
  af16 d,8 af'16  bf4 r8 r16 g~ |
  g16 c,8 g'16  af4 r8 r16 f |
  b,4 r8 d f, af |
  g8 g' g g a! b |
  ef,4~ ef16 ef f g  af g af8 |
  
  \barNumberCheck 57
  af8 d,  r16 d ef f  g f g8 |
  g8 c,  r16 c d! ef  f ef f8 |
  f8 bf, bf'4 r8 g |
  c4 af r8 f |
  bf4 g r8 ef |
  af8 af af af af af |
  bf8 af g f ef d |
  c8 c' c c c c |
  
  \barNumberCheck 65
  c8 bf a g fs e |
  d8 fs g d ef4 |
  d8 d, r4 r |
  R2. |
  r4 r16 d' e fs  g fs g8 |
  g8 c,  r16 c d e  f e f8 |
  f8 bf,  r16 bf c d  ef! d ef8~ |
  ef16 d ef d  \oneVoice c bf c bf  a g a g |
  
  \barNumberCheck 73
  fs4 r8 d g4 |
  r8 c d4 d, |
  g16 d' e fs  \voiceTwo g fs g8 g4~ |
  g8 f! f2~ |
  f16 b, c d  ef d ef8 ef4~ |
  ef4 r8 ef d4 |
  r8 cs d4 r8 d |
  ef!4 c  r16 a b c |
  
  \barNumberCheck 81
  d4 b  r16 g a b |
  c8 c c c c c |
  c8 bf16 a  bf8 c d d, |
  g4 r r | \fermataOverBarline
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 4 = 84
  s2. * 81 |
  \tempo 4 = 76 s4 \tempo 4 = 69 s \tempo 4 = 63 s |
  \tempo 4 = 56 s4 \tempo 4 = 52 s \tempo 4 = 44 s |
  \tempo 4 = 30 s4 \tempo 4 = 84 s2 |
}

forceBreaks = {
  % page 1
  s2. * 5 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  % page 2
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 3
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 4 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 4
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

fugueSixteenNotes =
\score {
  \header {
    title = "Fugue 16"
    subtitle = "for 4 voices"
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

fugueSixteenMidi =
\book {
  \bookOutputName "fugue-16-bwv-885"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
