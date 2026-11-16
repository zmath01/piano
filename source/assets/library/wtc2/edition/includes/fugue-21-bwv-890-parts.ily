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
  \time 3/4
  \key bf \major
}

rightHandUpper = \relative {
  \voiceOne R2. * 4 |
  r8 g'' f ef f bf, |
  a8 d c bf c a |
  f bf bf a a g |
  g8 c c bf bf a |
  
  \barNumberCheck 9
  a4 af2~ |
  af8 g' f ef f af, |
  g4 g'2~ |
  g8 f ef d ef c' |
  d,2.~ |
  d8 ef d c d f |
  af8 g g f f ef |
  ef8 d d c c bf |
  
  \barNumberCheck 17
  bf2.~ |
  bf4 a2~ |
  a8 g g f f e |
  e4 f g |
  a8 bf a g a c |
  f2.~ |
  f2.~ |
  f2 ef4~ |
  
  \barNumberCheck 25
  ef8 ef d c d bf |
  g8 d' c bf c a |
  f4 bf2~ |
  bf4 a r |
  R2. |
  r8 d c bf c a! |
  f8 a4 g8 f e |
  f8 r r4 r |
  
  \barNumberCheck 33
  r4 c8 d ef!4~ |
  ef d8 e f4~ |
  f4 e8 f g4~ |
  g8 f g4  a8. bf32 c |
  f,4 ef d |
  \oneVoice ef c d |
  ef4 d c~ |
  c8 c'' bf a bf f |
  
  \barNumberCheck 41
  \voiceOne d8 g f ef f d |
  bf8 ef ef d d c |
  c8  f f ef ef d |
  d2.~ |
  d8 d c bf c a |
  fs4 g a~ |
  \oneVoice a4 d bf
  \voiceOne g4 a fs |
  
  \barNumberCheck 49
  g2. |
  \moveDottedNoteA a2. |
  d,4 d'2~ |
  d4 c8 d ef4~ |
  ef8 ef d c d bf |
  g8 af g f g bf |
  \oneVoice ef,8 f ef d ef bf' |
  ef2. |
  
  \barNumberCheck 57
  f2. |
  \voiceOne bf,8 df df c c bf |
  af2.~ |
  af8 g f ef f d |
  ef4 g c |
  b8 c d2~ |
  d8 d c b c g |
  \oneVoice ef af g f g ef |
  
  \barNumberCheck 65
  c8 f f ef ef d |
  \voiceOne d8 g g f f ef |
  ef2 ef'4~ |
  ef8 f ef d ef c |
  d2.~ |
  d4 c8 bf c4~ |
  c4 bf8 a bf4~ |
  bf4 af8 g af4~ |
  
  \barNumberCheck 73
  af4 g8 f g4~ |
  g4 f8 ef f4~ |
  f4 ef8 d ef4~ |
  ef8 f ef d ef c |
  d4 e2 |
  f8 g' f e f c |
  a8 d c bf c a |
  f8 bf bf af af g |
  
  \barNumberCheck 81
  g8 c c bf bf a! |
  a8 bf c2~ |
  c4 bf8 c d4~ |
  d4 c8 d ef!4~ |
  ef8 d c bf c a |
  bf8 c bf a bf g |
  ef'2.~ |
  ef4 r ef |
  
  \barNumberCheck 89
  d8 a bf c d f |
  bf4 r r |
  r8 g f ef f d! |
  bf8 d4 c8 bf a |
  bf2. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour r8 c'' bf a bf f |
  d8 g f ef f d |
  bf8 ef ef( d) d( c) |
  c8 f f( ef) ef( d) |
  d8 ef d c bf d |
  c8 f ef d c ef |
  d4 e f~ |
  f4 e8 d e4 |
  
  \barNumberCheck 9
  f8 ef! d c d f |
  bf,4 d bf |
  ef8 d c bf c ef |
  a,4 c f |
  \voiceDown bf,4 \voiceUp d f |
  bf2.~ |
  bf2.~ |
  bf2 a!4 |
  
  \barNumberCheck 17
  bf8 ef, ef d d c |
  c8 f f ef ef d |
  d2. |
  c4 d e |
  f4 r r |
  r8 bf a g a c |
  ef8 d d c c bf |
  bf8 a a g g f |
  
  \barNumberCheck 25
  f2. |
  e4 ef2 |
  d4 df bf |
  e4 f r |
  r8 af af g g f |
  e2. |
  f4 d g, |
  a8 g' f e f c |
  
  \barNumberCheck 33
  a8 d c bf c a |
  \voiceDown f8 bf bf a a g |
  g8 c c bf bf a |
  \voiceUp a4 bf c~ |
  c8 \voiceDown bf bf af af g |
  g4 a! bf |
  bf8 a a g g f |
  f4 r r |
  
  \barNumberCheck 41
  \voiceUp r4 f'2 |
  g2. |
  a2. |
  d,8 c' bf a bf g |
  ef!2.~ |
  ef8 d d c \voiceDown c bf |
  bf2 r4 |
  \voiceUp r4 c a |
  
  \barNumberCheck 49
  bf8 g e' fs g4~ |
  g4 fs8 g a4~ |
  a8 g g f! f ef |
  ef8 af af g g f |
  f2.~ |
  f8 f ef d ef \voiceDown bf |
  g8 c bf af bf g |
  ef8 af af g g f |
  
  \barNumberCheck 57
  f8 bf bf af af g |
  g4 \voiceUp g' e |
  c4 d!8 ef! f4 |
  b,2. |
  c4 ef f~ |
  f8 af g f g d |
  ef8 \voiceDown f, ef d ef g |
  c4 g8 af bf!4~ |
  
  \barNumberCheck 65
  bf4 a8 b c4~ |
  c4 b8 c \voiceUp d4~ |
  d8 d \voiceDown c b c g |
  a4 c \voiceUp f~ |
  f4 f bf |
  g4 e a |
  d,2 g4 |
  ef4 c f |
  
  \barNumberCheck 73
  bf,2 ef4 |
  c4 a d |
  g,2 c4 |
  \voiceDown f,4 c f~ |
  f8 \voiceUp c' bf c bf g |
  a8 r r4 r |
  R2. |
  r4 d8 ef f4~ |
  
  \barNumberCheck 81
  f4 ef8 f g4~ |
  g8 f ef d ef c |
  d8 g g f f e |
  e8 a a g g fs |
  fs8 g a g a fs |
  g4 r r |
  r8 bf a g g f! |
  f32 a c16 bf8 a[ g a f]~ |
  
  \barNumberCheck 89
  f2 r4 |
  r8 df' df c c bf |
  a2. |
  bf4 g c, |
  d2. |
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
  R2. * 8 |
  
  \barNumberCheck 9
  R2. * 4 |
  \voiceTwo r8 c' bf a bf f |
  \oneVoice d8 g f ef f d |
  bf8 ef ef d d c |
  c8 f f ef ef d |
  
  \barNumberCheck 17
  d8 g g f f ef |
  ef4 f f, |
  bf4 bf'2~ |
  bf8 a a g g f |
  f8 g f e f c |
  a8 d c bf c a |
  f8 bf bf a a g |
  g8 c c bf bf a |
  
  \barNumberCheck 25
  a4 bf2~ |
  bf4 a2 |
  bf8 a' g f g e |
  c8 g' f e f d |
  b4 b b |
  bf!4 bf bf |
  a4 bf c |
  f,4 r r |
  
  \barNumberCheck 33
  r4 a2 |
  \voiceTwo bf2. |
  c2. |
  \oneVoice f,8 f' f ef! ef d |
  \voiceTwo d4 c bf |
  r8 ef ef d d c |
  c8 f f ef ef d |
  d8 ef d c d f |
  
  \barNumberCheck 41
  \oneVoice bf4 bf,8 c d4~ |
  d4 c8 d ef4~ |
  ef4 d8 ef f4~ |
  f8 d e fs g4~ |
  g8 bf a g a c |
  \voiceTwo d,4 e fs |
  g8 a g fs g d |
  \oneVoice bf8 ef d c d bf |
  
  \barNumberCheck 49
  g8 c c bf bf a |
  a8 d d c c bf |
  bf2 b4 |
  c4 c' bf! |
  af4 bf bf, |
  \voiceTwo ef2.~ |
  ef8 af g f g ef |
  c4. d8 ef4~ |
  
  \barNumberCheck 57
  ef4 d8 ef f4~ |
  f4 \oneVoice e8 f g4~ |
  g8 f f ef! ef d |
  d4 g g, |
  c8 bf! bf af af g |
  g4 b g |
  \voiceTwo c2.~ |
  c8 d ef2 |
  
  \barNumberCheck 65
  f2. |
  g2. |
  c,4 ef c |
  f4 a f |
  \oneVoice bf,8 c' bf a bf g |
  e8 a a g g fs |
  fs8 a g fs g ef! |
  c8 f!  f ef ef d |
  
  \barNumberCheck 73
  d8 f ef d ef c |
  a8 d d c c bf |
  bf8 c c bf bf a |
  \voiceTwo a2. |
  bf4 g c |
  \oneVoice f,4. g8 a bf |
  c8 d ef! d ef c |
  d2. |
  
  \barNumberCheck 81
  ef2. |
  f2. |
  bf,2. |
  c2. |
  d2. |
  g,8 a' g fs g ef |
  c8 d c bf c a |
  f8 g' f ef f d |
  
  \barNumberCheck 89
  bf8 c bf a bf g |
  e4 e e |
  ef!4 ef ef |
  d ef f |
  bf2. |
}

tempi = {
  \tempo 4 = 144
  s2. * 91 |
  \tempo 4 = 126 s4 \tempo 4 = 112 s \tempo 4 = 92 s |
  \tempo 4 = 60 s2. |
}

forceBreaks = {
  % page 1
  s2. * 7 \break
  s2. * 7 \break
  s2. * 7 \break
  s2. * 7 \break
  s2. * 7 \break
  s2. * 7 \pageBreak
  
  % page 2
  s2. * 7 \break
  s2. * 7 \break
  s2. * 7 \break
  s2. * 7 \break
  s2. * 8 \break
  s2. * 7 \break
}

fugueTwentyOneNotes =
\score {
  \header {
    title = "Fugue 21"
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

fugueTwentyOneMidi =
\book {
  \bookOutputName "fugue-21-bwv-890"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
