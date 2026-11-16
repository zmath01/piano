%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(-5 . -5.5)

%%% Music %%%

global = {
  \time 3/4
  \key d \minor
}

rightHand = \relative {
  \global
  d''8 c16 bf  a g f e  d f e d |
  bf'16 g d g  bf g d g  bf g d g |
  a16 g d g  a f d f  a f d f |
  g16 e d e  g e cs e  g e cs e |
  << { f4 d'\rest } \\ { r16 d, c! bf  a s8. } >> r4 |
  r8 d g bf d4\mordent |
  r8 d, f a d4\mordent |
  r8 g, cs e cs a |
  
  \barNumberCheck 9
  d8 c!16 bf  a g f e  f8 a~ |
  a16 g a b  c d e f  g f e d |
  e16 d bf! a  g f e d  e8 g~ |
  g16 f g a  bf c d ef  f ef d c |
  d16 f d c  bf d bf a  g bf g f |
  \beamQuarterNotes.34
  e8 e'16 f  g8 bf e, g |
  cs,16 g' cs, b  a e' a, g  f cs' f, e |
  d8 d'16 e  f8 a d, c! |
  
  \barNumberCheck 17
  bf16 g' bf, a  g bf g f  ef bf' ef, d |
  cs16 a' cs, b  cs a' cs, a'  cs, a' cs, a' |
  cs,16 a' cs, b  cs a' cs, a'  cs, a' cs, a' |
  d,16 a' d, cs  d a' d, a'  d, a' d, a' |
  e16 a e d  e a e a  e a e a |
  f32( a b cs d16 a)  f a d a  f a d a |
  fs16 d' fs, e  fs d' fs, d'  fs, d' fs, d' |
  \stemUp g,32( a b c d16 b)  g b d b  g b d b |
  
  \barNumberCheck 25
  gs16 d' gs, fs  gs d' gs, d'  gs, d' gs, d' |
  << { c4 d\rest } \\ { r16 a g! f!  e s8. } >> r4 |
  \revertBeaming
  \oneVoice r8 a d f a4\mordent |
  r8 a, c e a4\mordent |
  r8 d, gs b gs e |
  \stemDown a8 g!16 f  e d c b  a c b a |
  f'16 d a d  f d a d  f d a d |
  e16 d a d  e c a c  e c a c |
  
  \barNumberCheck 33
  d16 b a b  d b gs b  d b gs b |
  \voiceOne c2.~ |
  \oneVoice c16 ef d c  fs ef d c  a' ef d c |
  bf16 g' f! ef  d c bf a  c bf a g |
  \beamQuarterNotes.34
  c8 e! b f' bf, g'~ |
  g16 d! c bf  a g' f e  d f e d |
  cs16 bf! a g  d' bf a g  e' bf a g |
  f8 fs g a bf b |
  
  \barNumberCheck 41
  c8 cs d e f fs |
  g16 d bf' a  g f! e! d  cs d e cs |
  a8 e a cs e4~\mordent |
  e16 a, f a  d a f a d4~\mordent |
  d16 g,e g  c g e g c4~\mordent |
  c16 f, d f  bf f d f  bf g e g |
  cs,16 a' bf a  cs, a' bf a  cs,8 e~ |
  e16 a bf a  d, a' bf a  d,8 f~ |
  
  \barNumberCheck 49
  f16 g a g  e g a g  a,8 g'~ |
  g16 bf,! a g  a e' d cs  d g f e |
  f16 bf, c! d  ef a, bf c  d bf c d |
  ef16 a, bf c  d bf c d  c fs, g a |
  bf16 r r8  r16 a bf c  d bf g' d |
  bf'16 g f! ef  d r r8 r4 |
  r16 bf' a g  e' d cs b  a g f e |
  f16 d g d  a' d, bf' d,  r16 d e cs |
  
  \barNumberCheck 57
  \clef bass d c! fs, c'  d c fs, c'  d c fs, c' |
  bf16 d bf fs  bf d bf fs  bf d bf e, |
  f!16 d' f, d'  f, d' f, d'  f, d' f, d' |
  g,16 cs g e  g cs g e  g cs g e |
  <fs d'>2.\fermata |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  d4\mordent d, r |
  r8 d g bf d4\mordent |
  r8 d, f a d4\mordent |
  r8 bf' e, g cs, a' |
  d,4 r16 g f e  d f e d |
  bf'16 g d g  bf g d g  bf g d g |
  a16 g d g  a f d f  a f d f |
  g16 e d e  g e cs e  g e cs e |
  
  \barNumberCheck 9
  f16 d e f  g a b cs  d c b a |
  b16 c b a  g f e d  e8 g |
  c,8 d16 e  f g a bf  c bf a g |
  a16 bf a g  f ef d c  d8 f |
  \beamQuarterNotes.34
  bf, bf'16 c  d8 f bf, d |
  \stemDown g,16 bf g f  e g e d  cs e cs b |
  a8 a'16 b  cs8 e a, g |
  f16 d' f, e  d a' d, c!  bf! f' bf, a |
  
  \barNumberCheck 17
  g8 g'16 a  bf8 d g, bf |
  a8 e' a, e' a, e' |
  g,8 e' g, e' g, e' |
  f,8 f' f, f' f, f' |
  \clef treble \stemNeutral cs8 g' cs, g' cs, g' |
  d8 f d f d f |
  c!8 a' c, a' c, a' |
  b,8 g' b, g' b, g' |
  
  \barNumberCheck 25
  e8 b' e, b' e, b' |
  \clef bass a,4 r16 d c b  a c b a |
  f'16 d a d  f d a d  f d a d |
  e16 d a d  e c a c  e c a c |
  d16 b a b  d b gs b  d b gs b |
  c8 a, c e a c |
  d8 f a, d d, b' |
  c8 e a, c c, a' |
  
  \barNumberCheck 33
  b8 d gs, b e e, |
  a16 \voiceUp a' g! f \beamPositionsA e \staffDown \oneVoice d c b  a c e, g |
  fs8 \clef treble a' c a fs d |
  g8 g, bf d g f |
  e!16 df c bf  f' df c bf!  g' df c bf |
  a16 f'e d  c bf a g  bf a g f |
  e16 g' f e  d g f e  cs g' f e |
  \clef bass d, ef' d c  bf c bf a  g a g f! |
  
  \barNumberCheck 41
  e!16 bf'! a g  f g f e  d ef d c! |
  bf8 g bf d g4~ |
  \stemUp g16 g a,_( g  a) g' a, g'  a, g' a, g'|
  a,16 f' a,( g  a) f' a, f'  a, f' a, f' |
  a,16 e' a,( g  a) e' a, e'  a, e' a, e' |
  \stemNeutral a,16 d f d  a d f a  g, e' g bf |
  g8 cs, e g,  r16 bf a g |
  f16 f' e f  f, f' e f  f, f' e d |
  
  \barNumberCheck 49
  cs8 e, g cs,  r16 cs' b a |
  d8 d, f a d4~\mordent |
  d16 g a bf  c, fs g a  bf, g' a bf |
  c,16 fs g a  bf, g' a bf  a, d e! fs |
  g,16 d' e fs  g r r8 r4 |
  r4 r16 c bf a  g bf e,! g |
  cs,4 r8 a[ b cs] |
  d8 e f g a a, |
  
  \barNumberCheck 57
  d8 a' d, a' d, a' |
  d,8 g d g d g |
  d8 a' d, a' d, a' |
  d,8 bf' d, bf' d, bf' |
  <d, a'>2.\fermata |
}

tempi = {
  \tempo 4= 120
  s2. * 59 |
  s4 \tempo 4 = 100 s \tempo 4 = 88 s |
  \tempo 4 = 60 s2. |
}

forceBreaks = {
  % page 1
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 2
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 3
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

preludeSixNotes =
\score {
  \header {
    title = "Prelude 6"
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

preludeSixMidi =
\book {
  \bookOutputName "prelude-6-bwv-875"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
