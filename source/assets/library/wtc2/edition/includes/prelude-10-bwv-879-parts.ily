%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(4 . 3.5)
beamPositionsB = \once \override Beam.positions = #'(4 . 3.5)
beamPositionsC = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsD = \once \override Beam.positions = #'(-4.5 . -3.5)
beamPositionsE = \once \override Beam.positions = #'(-4.5 . -4)
beamPositionsF = \once \override Beam.positions = #'(0.5 . 1.4)
beamPositionsG = \once \override Beam.positions = #'(-3.5 . -2.5)
beamPositionsH = \once \override Beam.positions = #'(-4.5 . -3.5)
beamPositionsI = \once \override Beam.positions = #'(4.5 . 3)
beamPositionsJ = \once \override Beam.positions = #'(-3.5 . -2)
beamPositionsK = \once \override Beam.positions = #'(-4.5 . -3)
beamPositionsL = \once \override Beam.positions = #'(-4.5 . -3.5)
beamPositionsM = \once \override Beam.positions = #'(-2.5 . -1.5)
beamPositionsN = \once \override Beam.positions = #'(-3.5 . -2.5)

%%% Music %%%

global = {
  \time 3/8
  \key e \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 { 
    r16 g' a b c a |
    b16 g fs e ds a' |
    g32 fs e16 e'8 r |
    ds32 cs b16 a'8 r |
    r16 g, a b c! a |
    b16 g fs e ds a' |
    g16 b c d e c |
    \beamPositionsA d16 b a g fs c' |
    
    \barNumberCheck 9
    b16 d e fs g e |
    fs16 d cs b as e' |
    d16 fs e d cs b |
    as32 gs fs16 e'8 r |
    r16 d e fs g! e |
    fs16 d cs b as e' |
    d16 b cs d e cs |
    d16 b a! g fs c'! |
    
    \barNumberCheck 17
    b16 g e' b c a' |
    b,16 d g8 a,8\prall |
    g16 e c' g a fs' |
    g,16 b e8 fs,\prall |
    e16 g a b c a |
    b32 a g16 f'8 r |
    r16 e, fs! g a fs |
    g16 d e fs g8~ |
    
    \barNumberCheck 25
    g16 fs gs a b gs |
    a16 e fs g! a8~ |
    a16 gs as b cs as |
    b16 fs gs as b8~ |
    b16 as b cs d b |
    cs16 b as gs fs e |
    d16 fs gs as b gs |
    as16 gs fs e d cs |
    
    \barNumberCheck 33
    b4.~\prallprall |
    b4.~ |
    b4.~ |
    b4.~ |
    b8 e4~\mordent |
    e16 fs e d cs e |
    as,8 cs'4~\mordent |
    cs16 d cs b as cs |
    
    \barNumberCheck 41
    fs,8 g'4~\mordent |
    g16 fs e d cs e |
    d4.~\lineprall |
    d16 cs b a! gs b |
    es, d'cs b as cs |
    e!16 g fs e d fs |
    b,8 cs as\turn |
    \alternative {
      { b4. | }
      { 
        \barNumberCheck 49
        b4. | 
        \section
      }
    }
  }
  \repeat volta 2 { 
    fs'4.~ |
    fs8 e16 fs g8 |
    fs8( e)\prall a, |
    d8 c16\parenthesize \prall b c8~ |
    c16 b a g fs a |
    \beamPositionsE g16 b c d e a, |
    d16 gs, a b c fs, |
    
    \barNumberCheck 57
    b16 e, fs gs a ds, |
    gs8 a\turn b |
    e,16 e' d c b d |
    c8 d\turn e |
    \beamPositionsG a,16 a' g f e g |
    f8 g a~ |
    a16 d, c b a c |
    b8 c d~ |
    
    \barNumberCheck 65
    d16 g, c d e8~ |
    e16 c d e f8~ |
    f16 g f e d f |
    \beamPositionsI e16 e, fs! gs a fs |
    d'16 fs, gs a b gs |
    c16 gs a b c a |
    c16 b a gs a8~ |
    a16 b b8.\parenthesize \prall a16 |
    
    \barNumberCheck 73
    a4. |
    r16 d c b a c |
    b16 d e fs g cs, |
    fs16 b, c! d e a, |
    d16 g, a b c fs, |
    % Ornament is an "upprall" according to other sources
    b8 ds8.\upprall cs32 ds |
    e8 fs\turn g~ |
    g16 fs e ds e8~ |
    
    \barNumberCheck 81
    e16 d! c b c a' |
    b,16 d, e fs g8~ |
    g16 fs gs a b gs |
    a16 e fs g! a8~ |
    a16 g a b c! a |
    b16 ds e fs g e |
    fs16 e ds cs b a |
    g16 b cs ds e cs |
    
    \barNumberCheck 89
    ds16 cs b a g fs |
    e4.~\prallprall |
    e4.~ |
    e4.~ |
    e8 d'4~\prall |
    d16 e d c b d |
    c8 e a~ |
    a16 b a g fs a |
    
    \barNumberCheck 97
    ds,8 c'4~\mordent |
    c16 b a g fs a |
    g4.~ |
    g16 fs e d! cs e |
    as,16 g' fs e ds fs |
    a,! c b a g b |
    e,8 fs\mordent ds\turn |
    e16 gs a b c a |
    
    \barNumberCheck 105
    b16 a gs fs e d' |
    cs16 ds e fs g e |
    fs16 e ds cs b a |
    g8 a\mordent fs\turn |
    e4. |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 { 
    e8 e, r |
    R4. |
    r16 g' a b c a |
    b16 g fs e ds a' |
    g16 e fs g a fs |
    g8 a b |
    e,8 d! c |
    b8 c d |
    
    \barNumberCheck 9
    g,8 fs e |
    d8 e fs |
    b16 d e fs g e |
    \beamPositionsB fs16 d cs b as e' |
    d16 b cs d e cs |
    d8 e fs |
    b,8 b' as |
    b8 fs d |
    
    \barNumberCheck 17
    \beamPositionsC g16 b c d e c |
    d16 b a g fs c' |
    b16 g a b c a |
    b16 g fs e ds a' |
    g16 e fs g a fs |
    g16 e d c b f' |
    e16 g,a b c8~ |
    c16 b cs d e cs |
    
    \barNumberCheck 25
    d16 a b c! d8~ |
    d16 cs ds e fs ds |
    e16 b cs d! e8~ |
    e16 d e fs g e |
    fs4.~\upprall |
    fs4.~ |
    fs4.~ |
    fs4. |
    
    \barNumberCheck 33
    r16 ds e fs g! e |
    fs16 e ds cs b a |
    g16 b cs ds e cs |
    ds16 cs b a g fs |
    e16 d'! cs b as cs |
    % mordent according to other sources
    fs,8 g'4~\mordent |
    g16 fs e d cs e |
    % mordent according to a performance
    as,8 e''4~\parenthesize \mordent |
    
    \barNumberCheck 41
    e16 d cs b as cs |
    fs,8 gs as |
    b16 as b cs d b |
    es,16 fs gs a! b gs |
    cs,8 es fs |
    g!8 as, b |
    g8 e fs |
    \alternative {
      { \beamPositionsD b16 cs ds e fs ds | }
      {
        \barNumberCheck 49
        b4. |
        \section
      }
    }
  }
  \repeat volta 2 { 
    r16 b' a g fs a |
    g16 b cs ds e a, |
    d! g, a b c! fs, |
    b16 e, fs g a ds, |
    g8 a b |
    e,8 d c |
    b8 e, a |
    
    \barNumberCheck 57
    \beamPositionsF d,16 c d e f8 |
    e16 e' d! c b d |
    c8 d\turn e |
    \beamPositionsH a,16 a' g f e g |
    f8 g a |
    d,16 d' c b a c |
    b8 c d |
    r16 g, f e d f |
    
    \barNumberCheck 65
    g,16 f' e d c e |
    g,16 e' d c b d |
    g,8 a b |
    \beamPositionsJ c16 d' c b a c |
    b,16 c' b a gs b |
    \beamPositionsK a,16 b' a gs fs a |
    ds,8 e f |
    e16 d! e8 e, |
    
    \barNumberCheck 73
    \beamPositionsL a16 a' g fs! e g |
    fs8 d fs |
    g8 fs e |
    d16 g a b c8~ |
    c16 b a g a8~ |
    a16 b a g fs a |
    g16 b cs ds e a, |
    d!16 g, a b c! fs, |
    
    \barNumberCheck 81
    b16 e, fs g a d, |
    \beamPositionsM g16 fs g a b cs |
    d16 a b c! d8~ |
    d16 cs ds e fs ds |
    e16 e,fs g a fs |
    g8 fs e |
    b'4.~\prallprall |
    b4.~ |
    
    \barNumberCheck 89
    b4. |
    r16 gs a b c! a |
    b16 a gs fs e d |
    \beamPositionsN c16 e fs gs a fs |
    gs16 fs e d c b |
    a8 e' gs |
    a16 b a g! fs a |
    ds,8 c'4~\mordent |
    
    \barNumberCheck 97
    c16 a fs a ds, fs |
    b,8 ds'8.\prallprall cs32 ds |
    e16 ds e fs g e |
    as,16 b cs d! e cs |
    fs,8 as b |
    c!8 ds, e |
    c8 a b |
    c,16 e fs gs a fs |
    
    \barNumberCheck 105
    gs16 b c d e fs |
    g!8 fs e |
    ds8 b ds |
    e8 a, b |
    e,4. |
  }
}

tempi = {
  \repeat volta 2 { 
    \tempo 8 = 152
    s4. * 48 |
  }
  \repeat volta 2 { 
    s4. * 58
    \alternative {
      { s4. * 2 }
      { 
        \tempo 8 = 138 s8 \tempo 8 = 126 s \tempo 8 = 116 s |
        \tempo 8 = 100 s4. |
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 4 \break
  s4. * 5 \break
  s4. * 4 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 2
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 6 \pageBreak
  
  % page 3
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 4
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
}

preludeTenNotes =
\score {
  \header {
    title = "Prelude 10"
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

preludeTenMidi =
\book {
  \bookOutputName "prelude-10-bwv-879"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
