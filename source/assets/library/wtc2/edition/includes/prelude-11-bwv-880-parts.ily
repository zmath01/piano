%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 0.5)) \etc
tieShapeB = \shape #'((0.25 . 0.3) (0 . 0.7) (0 . 0.7) (-0.25 . 0.3)) \etc
tieShapeC = \shape #'((0.75 . -0.5) (0 . -0.8) (0 . -0.8) (-0.5 . -0.5)) \etc
tieShapeD = \shape #'(
                       ((0.75 . 0) (0.75 . 0) (0 . 0) (0 . 0))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                     ) \etc
tieShapeE = \shape #'((0.6 . 0.5) (0 . 0.6) (0 . 0.6) (-0.6 . 0.5)) \etc
tieShapeF = \shape #'((0 . 0) (0 . 0) (-0.6 . -0.25) (-0.6 . -0.25)) \etc
tieShapeG = \shape #'((0.6 . 0.3) (0 . 0) (0 . 0) (-0.75 . 0.3)) \etc
tieShapeH = \shape #'((0 . -0.5) (0 . -0.4) (-0.5 . -0.4) (-0.5 . -0.5)) \etc
tieShapeI = \shape #'((0 . 0.5) (0 . 0.5) (-0.5 . 0.6) (-0.5 . 0.6)) \etc
tieShapeJ = \shape #'((0 . 0) (0 . 0) (-0.7 . -0.25) (-0.7 . -0.25)) \etc
tieShapeK = \shape #'((0.8 . -0.5) (0 . -0.5) (0 . -0.5) (-0.8 . -0.5)) \etc
tieShapeL = \shape #'((0 . 0) (0 . 0) (-0.9 . 0) (-0.9 . -0.25)) \etc
tieShapeM = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc
tieShapeN = \shape #'((0 . 1.5) (0 . 2) (0 . 2) (0 . 1.5)) \etc
tieShapeO = \shape #'((0 . 0) (0 . 0) (-0.2 . -0.1) (-0.2 . -0.1)) \etc
tieShapeP = \shape #'((0 . 0) (0 . 0) (-0.75 . 0) (-0.75 . 0)) \etc
tieShapeQ = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc

beamPositionsA = \once \override Beam.positions = #'(2.5 . 3.5)

%%% Music %%%

global = {
  \time 3/2
  \key f \major
}

rightHandUpper = \relative {
  r8 e''( f g)  f( e d c)  d( c bf a) |
  \voiceOne bf1.~ |
  <e, g bf>2 <c f a> <d f af>~ |
  af'8 af g f g1 |
  r2 r r8 a bf c~ |
  c2-\tieShapeM ~ c8 a bf4~ bf2~ |
  bf1~ bf8 g a bf~ |
  bf2~ bf8 g a4~ a2~ |
  
  \barNumberCheck 9
  a8 c d ef d1 |
  e!1 <c f>2~ |
  \oneVoice f8 e( f g  f e d c)  d( c b a) |
  \voiceOne b1 <g c>2~ |
  c2. c4 d f |
  b,4 c d2~  d8 g, a b |
  c1~ c4 c8 b |
  c1.~ |
  
  \barNumberCheck 17
  c8 b c d  c b a g  a g f e |
  f1.~ |
  <b, d f>2 <g c e> <a c ef>~ |
  << 
    { \hideNoteHead <c ef>4 s } 
    \new Voice { \once \omit Accidental ef8 ef d c } 
  >> d1 |
  r2 r f'8\rest e, f g~ |
  g2-\tieShapeN ~ g8 e f4~ f2~ |
  f1~ f8 d e f~ |
  f2~ f8 d e4~ e2~ |
  
  \barNumberCheck 25
  e8 g a bf a1 |
  b1 <g c>2~ |
  c8 c d ef d1 |
  e!1 f2~ |
  f8 f g a  g f e d  e d cs b |
  cs1 <a d>2~ |
  q4 f' e g cs, d~ |
  d8 d cs b <a cs>1 |
  
  \barNumberCheck 33
  \oneVoice r8 cs d e  d c bf a  bf a g f |
  \voiceOne g1.~ |
  <\single \omit Accidental cs, e g>2 <d f>1~ |
  q1.~ |
  q2 d'\rest  d8\rest cs, d e |
  cs8 e f g a1~ |
  a8 g bf a  g f e4~  e8 e f g~ |
  g8 g f e f1~ |
  
  \barNumberCheck 41
  f8 f g a bf1~ |
  bf8 bf a g a1~ |
  a8 a bf c! d1~ |
  d8 d c bf c1~ |
  c8 c d e f1~ |
  f8 f e d e1~ |
  <c e>2 <b d>1~ |
  <gs \single \omit Accidental b d>1.~ |
  
  \barNumberCheck 49
  <gs b d>8 d' e f  e d c \once \omit Accidental b  c b a 
    \once \omit Accidental gs |
  a1.~ |
  a8 g' a bf  a g f e  f e d cs |
  \oneVoice d8 e f g  f e d cs  d c bf a |
  bf c! d ef  d c bf a  bf a gs fs |
  \voiceOne gs4 e a'\rest b,~ <b d>2~ |
  q4 <a c>4~  c8 c b a b2 |
  a1. |
  
  \barNumberCheck 57
  \oneVoice r8 e' f g  f e d c!  d c bf a |
  \voiceOne bf1.~ |
  <e, g bf>2 <c f a> <d f af>~ |
  af'8 af g f g1 |
  f'2\rest f\rest f8\rest a,8 bf c~ |
  c2-\tieShapeQ ~ c8 a bf4~ bf2~ |
  bf8 g a bf  c d ef4~ <c ef>2~ |
  q2 <bf d>4 <a c> d2~ |
  
  \barNumberCheck 65
  d2 c~  c4 d8 ef |
  \appoggiatura { bf8 } a!1 bf2~ |
  \oneVoice bf8 a bf c  bf a g f  g f e! d |
  \voiceOne e1 <c f>2~ |
  q2~ f4 f g a8 bf |
  e,4 f g2~  g8 c, d e |
  f1~ f4 f8 e |
  f1.\fermata |
  \bar "|."
}

rightHandMiddle = \relative {
  s1. |
  \voiceTwo r8 a' g f  g1^~ |
  \hideNoteHead g2 s1 |
  s1. |
  \voiceThree b2\rest b8\rest e, fs g \voiceFour fs2-\tieShapeA _~ |
  \voiceThree fs8 a g fs s1 |
  s1. * 2 |
  
  \barNumberCheck 9
  s2 g8\rest c bf a bf2 |
  c1-\tieShapeB _~ \hideNoteHead c2 |
  s1. |
  e,8\rest a_( g f)  g2~ \hideNoteHead g2-\tieShapeD ~ |
  \hideNoteHead g2 s1 |
  s1. |
  s1 g8\rest f4._~ |
  \beamPositionsA f8 f g a g1 |
  
  \barNumberCheck 17
  s1. |
  \voiceFour c,8\rest e d c \voiceThree d1~ |
  \hideNoteHead d2 s1 |
  s1. |
  b'2\rest g8\rest b, cs d cs2-\tieShapeE _~ |
  cs8 e d cs s1 |
  s1. * 2 |
  
  \barNumberCheck 25
  s2 e8\rest g f e f2 |
  g1_~ \hideNoteHead g2 |
  f4 f\rest  f8\rest c' bf a bf2 |
  bf1 s2 |
  s1. |
  g8\rest bf! a g a2-\tieShapeO ~ \hideNoteHead a2 |
  s1. * 2 |
  
  \barNumberCheck 33
  s1. |
  \voiceFour d,8\rest f e d \voiceThree e1-\tieShapeF ~ |
  \hideNoteHead e2 s1 |
  s1. * 5 |
  
  \barNumberCheck 41
  s1. * 5 |
  s1 c'2~ |
  \hideNoteHead c2 s1 |
  s1. |
  
  \barNumberCheck 49
  s1. * 5 |
  s2 \voiceOne gs-\tieShapeG _~ gs~ |
  gs4 a-\tieShapeH ~ \hideNoteHead a2-\tieShapeI _~ \voiceThree a8 fs gs4 |
  s2 \voiceDown f4\rest gs, \staffUp \voiceTwo a2 |
  
  \barNumberCheck 57
  s1. |
  e'8\rest a g f  \voiceThree g1-\tieShapeJ ~ |
  \hideNoteHead g2 s \hideNoteHead f-\tieShapeK ~ |
  \hideNoteHead f4 s s1 |
  b2\rest b8\rest e, fs g fs2_~ |
  fs8 a g fs \voiceFour g4. g8~ \hideNoteHead g2 |
  s2 c-\tieShapeP ~ \hideNoteHead c |
  s1 \voiceThree bf4 af~ |
  
  \barNumberCheck 65
  af8 f g \once \omit Accidental af g1 |
  f1~ \voiceFour <bf, f'>4 r |
  s1. |
  r8 d c bf c2~ \hideNoteHead c |
  s1. * 2 |
  s1 c8\rest bf4.~ |
  bf8 bf a g a1\fermata |
}

rightHandLower = \relative {
  s1. |
  s2 \voiceFour r8 f' e d  e2~ |
  \hideNoteHead e2 s \hideNoteHead f^~ |
  <c f>4 r  r8 f e d e2 |
  r8 c d ef d1~ |
  d2 g4. g8  d f e d |
  e2 r8 d! e f e2~ |
  e8 g f e  f4. f8~ f2~ |
  
  \barNumberCheck 9
  f2 a,4\rest g'~ g8 a g f |
  g1 f2 |
  \voiceDown r4 a, d1~ |
  \voiceOne d2~ d8 \voiceUp f e d  e2~ |
  <e g>2 f1~ |
  f2~ f8 f e d e2~ |
  e8 e( f g)  a( g f e) d2 |
  c2 r8 f( e d) e2~ |
  
  \barNumberCheck 17
  e2 r r |
  s2 a,8\rest c b a b2~ |
  \hideNoteHead b2 s1 |
  <g c>4 r  r8 c b a b2 |
  g8\rest g a bf! a1~ |
  a2 d4. d8  a c b a |
  b2 r8 a! b c b2~ |
  b8 d c b  c4. c8~ c2~ |
  
  \barNumberCheck 25
  c2 g4\rest d'~ d8 e d c |
  d1 c2~ |
  c4 s4 s2  r8 a' g f |
  g1 <f c'>4 r |
  r2 r s |
  s2 e8\rest g f e f2~ |
  f4 a g bf e, f~ |
  f8 f e d e1 |
  
  \barNumberCheck 33
  s1. |
  s2 a,8\rest d cs b cs2~ |
  \hideNoteHead cs2 a1~ |
  a8 c b a  gs4 a b2~ |
  b8 \voiceDown d, e f  \voiceUp r a \once \omit Accidental b c b2 |
  a2~ a8 b cs d e2~ |
  e4 d~  d4. d8 cs2 |
  d2~ d8 e d cs d2~ |
  
  \barNumberCheck 41
  d2~ d8 d e f  g4 e |
  c2~ c8 g' f e f2~ |
  f2~ f8 f g a  bf4 g |
  e2~ e8 bf' a g a2~ |
  a2~ a8 a b c  d4 b |
  g2~ g8 d' c b  r b a gs |
  a2 a1 |
  r2 e1~ |
  
  \barNumberCheck 49
  e4 r4 r2 r |
  r8 g! f! e  f e f g  f e d cs |
  d8 r r4 r2 r |
  s1. * 2 |
  s4 e4~ e2~ e2~ |
  e4 fs <e a>2~ e4. d8~ |
  d8 d e f  e d cs b cs2 |
  
  \barNumberCheck 57
  s1. |
  s2 r8 f e d e2~ |
  \hideNoteHead e2 s1 |
  <c f>4 r  r8 f e d e2 |
  c8\rest c d ef d1~ |
  d1 <d g>2~ |
  q8 c8\rest c4\rest  c\rest c8\rest bf' a2~ |
  a2 f1~ |
  
  \barNumberCheck 65
  f8 r r4  r8 f ef d  ef \voiceDown d c bf |
  \voiceUp c1 s2 |
  s1. |
  s1 a2~ |
  a2 bf1~ |
  bf2~ bf8 bf a g a2~ |
  a8 a bf c  d c bf a g2 |
  \voiceDown f2~ f8 g f e f2\fermata |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandMiddle
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree r2 r a |
  d2 bf  g8 bf c d |
  c8( bf a g)  a2 f~ |
  f8 f e d  e4 g c g~ |
  g4 g fs bf a2~ |
  a4 d,2 g g4~ |
  g8 bf c df c1~ |
  c1~ c8 ef d c |
  
  \barNumberCheck 9
  d2 f4\rest d2. |
  c4 s4 s1 |
  s4 \voiceTwo a2.-\tieShapeC ^~ \voiceThree a2 |
  g2 f\rest  r8 b c d |
  c8 b a g a1~ |
  a2 g1 |
  a4 r r2 r4 g~ |
  g2 r r8 d'( c b) |
  
  \barNumberCheck 17
  c4 g a e f a |
  d,4 e f2~  f8 f g a |
  g8 f e d  e2 c~ |
  c8 c b a  b4 d g d~ |
  d2 cs4 f e2~ |
  e4 a,2 d d4~ |
  d8 f g af g1~ |
  g1~ g8 bf! a g |
  
  \barNumberCheck 25
  a2 c4\rest a2. |
  g4 s s1 |
  s1. * 2 |
  s1 r8 f' e d |
  e2 r r8 cs d e |
  d8 c! bf a  bf2 a~ |
  a2~ a8 g a bf!  a g f e |
  
  \barNumberCheck 33
  r2 a d~ |
  d4 r s1 |
  s1. * 2 |
  s2 e,1~ |
  e2~ e8 f e d cs2~ |
  cs4 d e f g a |
  bf4 a8 g a2~  a8 c! bf a |
  
  \barNumberCheck 41
  bf2. a4 g2~ |
  g4 f8 e  f4 a~  a8 e' d cs |
  d2. c!4 bf2~ |
  bf4 a8 g  a4 c~  c8 g' f e |
  f2. e4 d2~ |
  d4 c8 b c2 s |
  s1. * 2 |
  
  \barNumberCheck 49
  r4 e, fs gs a b |
  c4 a2 cs4 d a~ |
  a4 a b cs d e |
  f8 r r4 r2 r |
  r4 f, bf c d c |
  b4 s s1 |
  r2 r8 a, b c  d!4 e |
  f!4 d f2 e |
  
  \barNumberCheck 57
  r2 r a |
  d2 bf  g8 bf c d |
  c8 bf a g  a2 f~ |
  f8 f e d  e4 g c g~ |
  g4 g fs bf a2~ |
  a4 d,2 g4~  g8 fs g a |
  bf4 c\rest s1 |
  s1. |
  
  \barNumberCheck 65
  s1. * 2 |
  r4 d, g1~ |
  g2~ g8 bf a g  r e f g |
  f8 e d c d1~ |
  d2 c1~ |
  c4 c bf2 c2-\tieShapeL ~ |
  c1. |
}

leftHandLower = \relative {
  \voiceTwo f,2 f'1~ |
  f1.~ |
  f2~ f8 g( f e)  f(d c b) |
  c1~ c8 d c bf! |
  a!2 d1 |
  g,2 bf g |
  c2 e c |
  f2 a f |
  
  \barNumberCheck 9
  bf4 a bf1~ |
  bf8 bf^( c d  c bf a g)  a^( g f e) |
  d2. e4 f2~ |
  f2 r e~ |
  e2~ e8 g f e  f e d c |
  d8 c b a  b4 g c b |
  a g f d g2 |
  c2 r r |
  
  \barNumberCheck 17
  r2 c1~ |
  c1.~ |
  c2~ c8 d c b  c a g fs |
  g1~ g8 a g f! |
  e!2 a1 |
  d,2 f d |
  g2 b g |
  c2 e c |
  
  \barNumberCheck 25
  f4 e f1~ |
  \oneVoice f8 f g a  g f e d  e d c bf! |
  a8 e' f g  f e! d c  d c bf a |
  g8 bf' c d  c bf a g  a g f e |
  d8 a' bf c  bf a g f \voiceTwo g2~ |
  g1 f2~ |
  f2 r8 a g f  g f e d |
  a'4 a,~ a r s2 |
  
  \barNumberCheck 33
  f'1. |
  e1 \oneVoice r8 g a bf! |
  a8 g f e  f e d cs  d c b a |
  b2~ b8 c d e  d c b a |
  \voiceTwo gs1. |
  g!1~ g8 bf! a g |
  f2 g a |
  d1.~ |
  
  \barNumberCheck 41
  d8 d e f  g4 f~  f8 e d c |
  f4 f, f'1~ |
  f8 f g a  bf4 a~  a8 g f e |
  a4 a, a'1~ |
  a8 a b c  d4 c~  c8 b a g |
  c4 c, c'2~ c |
  \oneVoice r8 e f g!  f e d c  d c b a |
  b8 a gs fs  gs d e f  e d c b |
  
  \barNumberCheck 49
  \voiceTwo c1.~ |
  c4 cs d e f g |
  f1.~ |
  f8 g a bf!  a g f e  f e d cs |
  d1.~ |
  d8 d e f  e d c b  c b a gs |
  a8 f e ds e1 |
  a1~ a8 bf! a g! |
  
  \barNumberCheck 57
  f2 f'1~ |
  f1.~ |
  f2~ f8 g f e  f d c b |
  c1~  c8 d c bf! |
  a2 d1 |
  g,2 bf d |
  g2 \oneVoice a  f!8 g' f ef |
  d8 c bf a  bf d, ef f  ef d c bf |
  
  \barNumberCheck 65
  ef4 d ef1_~ |
  ef8 ef f g  f ef d c  d c bf a |
  \voiceTwo g2. a4 bf2~ |
  bf2 r a~ |
  a2~ a8 c bf a  bf a g f |
  g8 f e d  e4 c f e |
  d2 r4 g c c, |
  f1.\fermata |
}

leftHand = \relative {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 2 = 69
  s1. * 55 |
  \tempo 2 = 63 s2 \tempo 2 = 58 s \tempo 2 = 54 s |
  \tempo 2 = 69
  s1. * 14 |
  \tempo 2 = 63 s2 \tempo 2 = 58 s \tempo 2 = 54 s |
  \tempo 2 = 50 s2 \tempo 2 = 46 s \tempo 2 = 30 s |
}

forceBreaks = {
  % page 1
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \pageBreak
  
  % page 2
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \pageBreak
  
  % page 3
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
  s1. * 4 \break
}

preludeElevenNotes =
\score {
  \header {
    title = "Prelude 11"
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

preludeElevenMidi =
\book {
  \bookOutputName "prelude-11-bwv-880"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
