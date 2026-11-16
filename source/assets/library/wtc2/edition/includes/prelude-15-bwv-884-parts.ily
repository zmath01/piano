%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(1 . -2)

%%% Music %%%

global = {
  \time 3/4
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g'16 d' fs, d'  g, d' a d  b d c d |
    b16 d a d  g, d' c d  b d a d |
    b16 d a d  g, d' b d  a d g, d'~ |
    << 
      {
        \voiceOne d2.~ |
        d2.~ |
        d2.~ |
        d8 b c d e fs |
      } 
      \new Voice { 
        \voiceFour fs,8 e fs g a b |
        a8 g fs b a g |
        a8 g fs a g fs |
        e4 a2 |
      } 
    >>
    \oneVoice g16 g' fs g  g, g' a, g'  b, g' cs, g' |
    
    \barNumberCheck 9
    fs16 d cs d  b' b, a' b,  g' b, fs' b, |
    e16 cs b cs  a' a, g' a,  fs' a, e' a, |
    d16 b a b  g' g, fs' g,  e' g, d' g, |
    \stemDown cs16 g d' g,  e' g, d' g,  \stemNeutral cs g b g |
    a16 g fs e  fs8 d' e, cs'\turn |
    d,16 e f d  gs d a' d,  b' d, cs b |
    cs16 e a4 g16 fs  g fs e fs |
    d8 cs16 b  \voiceDown a g fs e  d4\mordent |
  }
  \repeat volta 2 {
    \barNumberCheck 17
    \staffUp \oneVoice fs'16 d e d  fs d g d  a' d, g d |
    fs16 d e d  fs d g d  a' d, fs d  |
    g16 d fs d  g d b' d,  a' d,  c' d, |
    b'8 a\prall g a b c |
    d8 c d e f d |
    e8 g e c d b |
    c16 e ds e  a c, g' c,  fs c e c |
    ds16 b as b  g' b, fs' b,  e b d b |
    
    \barNumberCheck 25
    c!16 a g a  fs a e a  ds, a' e a |
    fs8 ds' e fs\turn g ds |
    e16 b c! a  g8 e' fs, ds'\turn |
    e16 b g b  e,4~ e16 g b d! |
    cs8 a cs e a g |
    fs8 a fs d a c! |
    b8 g b d g f |
    e4~\mordent e16 d c b  a g fs! e |
    
    \barNumberCheck 33
    fs8 d'~\mordent  d16 c b a  g fs e d |
    e8 c'~\mordent  c16 b a g  fs e d c |
    d16 fs e d  e fs g a  b a b g |
    a16 d c b  a g fs e d4~ |
    d16 g c, g'  d g b, g'  c, g' d g |
    e16 g d g  e a cs, a'  d, a' e a |
    fs16 a e a  fs b ds, b'  e, b' fs b |
    g16 b fs b  e,8 g c4~\mordent |
    
    \barNumberCheck 41
    c16 a' g a  fs a e a  d, a' c, a' |
    b,8 d g f e d |
    e16 c b c  c' c, b' c,  a' c, g' c, |
    fs16 c g' c,  a' c, g' c,  fs c e c |
    d16 c b\prall a  b8 g' a, fs'\turn |
    g,16 a bf g  cs g d' g,  e' g, fs e |
    fs16 a d4 c!16 b  c b a b |
    g8 fs16 e  \beamPositionsA d \voiceDown c b a g4\mordent |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    <<
      { 
        b8 a b c d e |
        d8 c b e d c |
        d8 c b d c b |
      }
      \\
      { 
        g2.~ | g2.~ | g2. |
      }
    >> 
    d16 a' cs, a'  d, a' e a  fs a g a |
    fs16 a e a  d, a' g a  fs a e a |
    fs16 a e a  d, a' fs a  e a d, a' |
    a,16 a' gs a  a, a' b, a'  c, a' d, a' |
    e16 e' d e  e, e' fs, e'  g, e' a, e' |
    
    \barNumberCheck 9
    d16 b a b  g8 fs' e d |
    cs16 a g a  fs8 e' d cs |
    b16 g fs g  e8 d' cs b |
    a8 b cs e a, cs |
    fs,8 a  d,16 e fs g  a8 a, |
    b8 d f a, gs e' |
    a,16 cs e g!  fs!8 d a'\mordent a, |
    \voiceTwo d8 d, fs a  d4 |
  }
  \repeat volta 2 {
    \barNumberCheck 17
    <<
      { 
        a'8 g a b c! b |
        a8 g a b c a |
        b8 a b g a fs |
      }
      \\
      { 
        d2.~ | d2.~ | d2. |
      }
    >> 
    \oneVoice g,16 g'fs g  b g c g  d' g, c g |
    b16 g a g  b g c g  d' g, b g |
    c16 g b g  c g e' g,  d' g, f' g, |
    e'16 c b c  fs,!8 e' ds fs |
    b,16 ds cs ds  e,8 fs g e |
    
    \barNumberCheck 25
    a!16 c b c  a c g c  fs, c' e, c' |
    ds,16 b' b, b' cs, b' ds, b'  e, b' fs b |
    g16 b a c  b a g a  b8 b, |
    e4~\mordent e16 b g b  e,8 r |
    r16 a cs a  e' a, g' a,  fs' a, e' a, |
    d16 a fs a  d, fs a d  fs a fs d |
    g16 g, b g  d' g, f' g,  e' g, d' g, |
    c16 g e g c,8 r r4 |
    
    \barNumberCheck 33
    r16 c' b a  b8 d e g~ |
    g16 b, a g  a8 c d fs~ |
    fs16 a, g fs  g8 b d g |
    fs8 d fs a  \voiceUp d16 \voiceDown d, c d |
    \oneVoice b16 d a d  b d g, d'  a d b d |
    c16 e b e  cs e a, e'  b e cs e |
    d16 fs cs fs  ds fs b, fs'  cs fs ds fs |
    e16 g d! g  c,! g' b, g'  a, c e g |
    
    \barNumberCheck 41
    fs8 a d, e fs d |
    g16 g' f g  e g d g  c, g' b, g' |
    c,16 e d e  a,8 b c a |
    d8 a fs a d, fs |
    b,8 d  g,16 a b c  d8 d, |
    e8 g' bf d, cs a |
    d16 fs a c!  b!8 g d' d, |
    \voiceTwo g8 g, b d g4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo 4 = 108
    s2. * 15 |
    s4 \tempo 4 = 100 s \tempo 4 = 80 s |
  }
  \repeat volta 2 {
    \tempo 4 = 108
    s2. * 31 |
    s4 \tempo 4 = 100 s \tempo 4 = 80 s |
  }
}

forceBreaks = {
  % page 1
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  % page 2
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

preludeFifteenNotes =
\score {
  \header {
    title = "Prelude 15"
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

preludeFifteenMidi =
\book {
  \bookOutputName "prelude-15-bwv-884"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
