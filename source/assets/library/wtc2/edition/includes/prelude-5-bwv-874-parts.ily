%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

%% The decision was made early on that I would put this piece in 12/8 and use
%% \tuplet 2/3 { } for the straight eighths sections.  But this raised a
%% problem when it came to "8. 16" durations which often clashed with the
%% triplet feel of the 12/8 parts.  To deal with this, all 8. durations
%% were changed to 8.*8/9 and 16 durations were changed to 16*4/3.  This
%% shortens the 8. and lengthens the 16 so that it has a triplet feel.  This
%% is in keeping with the performances I heard of the piece.

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0) (0 . 0) (-0.25 . 0) (-0.25 . 0)) \etc

moveTrillA = \offset Y-offset 1.25 \etc

beamPositionsA = \once \override Beam.positions = #'(-4 . -4.25)

%%% Music %%%

global = {
  \override Staff.TimeSignature.stencil = #(cut-time-twelve-eight)
  \time 12/8
  \key d \major
}

rightHandUpper = \relative {
  \tupletOff
  \repeat volta 2 {
    r8 d'16 e fs g  a8 fs a  d a d  fs d fs |
    \tuplet 2/3 { 
      \voiceOne a4 a  a8[( g) g( fs]) | 
      fs4 r r2 |
      r4 fs  fs8[ e e d] |
      d8 r r4
    } r8 e,16 fs gs a  b8 gs b |
    \tuplet 2/3 { e8 r r4 } r8 d,16 e fs gs  a8 fs a |
    \tuplet 2/3 { d8.*8/9 fs,16*4/3 d'8.*8/9 d16*4/3 d4 } r8 e16 d cs b |
    cs8 a16 b cs d  e8 d16 cs b a  d8 b16 cs d e  fs8 e16 d cs b |
    \tuplet 2/3 {
      
      \barNumberCheck 9
      e2~ e4 d4~ |
      d4 d gs b~ |
    }
    b8 a16 gs fs e  ds8 fs ds  a ds a  fs a fs |
    gs8 fs e  \tuplet 2/3 { a8.*8/9 d16*4/3 cs4 } b8\prall a b |
    a8 cs16 b a gs  fs8 a16 gs fs e  ds8 fs b \tuplet 2/3 { b4~ } |
    b8 a16 gs fs e!  d!8 fs16 e d cs  b8 d g \tuplet 2/3 { g4~ } |
    g8 fs16 e d cs  b8 d16 cs b a  gs8 b e  cs e a |
    \tuplet 2/3 { d,8.*8/9 d'16*4/3 } e,8 a gs \tuplet 2/3 { a2 } |
  }
  \repeat volta 2 { 
    \barNumberCheck 17
    s1. |
    r8 a16 b cs d  e8 cs e  a16 e fs gs a gs  a e fs gs a gs |
    a8 gs16 fs e d  cs d e d cs b \tuplet 2/3 { a2~-\moveTrillA \prallprall } |
    a16 b a gs a e  cs fs e d e cs  \tuplet 2/3 { 
      a2_~\prallprall |
      a8 r r4
    } r8 e''16 d cs b  a8 e' g, |
    \tuplet 2/3 { fs8 r r4 } r8 a'16 g fs e  d8 a' c, |
    \tuplet 2/3 { b2~ } b8 cs!16 b as b \tuplet 2/3 { cs4~ } |
    cs8 d16 cs b cs \tuplet 2/3 { d4~ } d8 e16 d cs d \tuplet 2/3 { e4~ } |
    
    \barNumberCheck 25
    e8 g16 fs e ds  e8 g ds  e g16 fs e ds  e8 fs16 e ds cs |
    \tuplet 2/3 { ds8 r r4  fs8 r r4 } |
    r16 b, cs ds e fs  g fs e d cs b  e d cs b a gs  cs b a g fs e |
    fs16 a b cs d e  fs e d cs b a  gs b e d e8~  e16 as, cs d e8~ |
    e16 fs, gs as b cs  d cs b a g fs  b a g fs e d  g fs e d cs e |
    as,8 g''16 fs e d  cs8 e cs  as cs as  e as e |
    \tuplet 2/3 {
      d8 r b'4 d es |
      fs8.*8/9 e!16*4/3  d8.*8/9 g16*4/3 d4
    } cs8\prall b cs |
    
    \barNumberCheck 33
    b8 d16 cs b a!  g8 b16 a g fs  e8 g c \tuplet 2/3 { c4~ } |
    c4 b8 b4.~  b4 a8 a4.~ |
    a4 g8 g4.~  g4 fs8~  fs fs c' |
    b4.~ b8 cs! d~  d b cs \tuplet 2/3 { e4~ } |
    e8 cs d \tuplet 2/3 { g4~ } g8 fs e \tuplet 2/3 { fs4~ } |
    fs8 e d  e cs! d \tuplet 2/3 { 
      cs4\prall r |
      bf4 a g f~ |
    }
    f16 e d cs d f  b! f e d cs b \tuplet 2/3 { cs8 \oneVoice r r4 } |
    
    \barNumberCheck 41
    \voiceOne R1. |
    \tuplet 2/3 { r4 fs'  fs8[ e e d] } |
    d8 d,16 e fs g  a8 fs a  c a c  fs c fs |
    \tuplet 2/3 { a4 c,  c8[( b) b( a]) } |
    b8 b'16 a g fs  e8 g e \tuplet 2/3 { cs! r r4 } |
    r8 a'16 g fs e  d8 fs d \tuplet 2/3 { 
      b r r4 |
      r8*8/9 r16*8/9 b16*4/3  b8.*8/9 b16*4/3  a4 r |
      r4 d b e~ |
      
      \barNumberCheck 49
      e4 d8.*8/9 c16*4/3  b8.*8/9 a16*4/3 g4~ |
      g4 g cs e~ |
    } 
    e8 d16 cs b a  gs8 b gs  d gs d  b d b |
    cs8 b a \tuplet 2/3 { d8.*8/9 g16*4/3~ } g8 fs16 e fs8 
      \tuplet 2/3 { e8.*8/9 a16*4/3 } |
    fs16 a b cs d e  fs e d cs b a  gs8 b e \tuplet 2/3 { e4~ } |
    \tuplet 2/3 { e4 } d16 cs b a g fs  e8 g c \tuplet 2/3 { c4~ } |
    \tuplet 2/3 { c4 } b16 a g fs e d  cs!8 e a  fs a d |
    \tuplet 2/3 { g,8.*8/9 e'16*4/3 } a,8 d cs \tuplet 2/3 { d2 } |
  }
}

rightHandLower = \relative {
  \tupletOff
  \repeat volta 2 {
    s1. |
    \tuplet 2/3 { \voiceFour r4 fs'' fs8[ e e d] | }
    d8 \voiceDown d,,16 e fs g  a8 fs a  \voiceUp d a d  fs d fs |
    \tuplet 2/3 { a4 a  a8[( g) g( fs]) | }
    fs8 fs16 e d cs  b8 d b  \tuplet 2/3 { gs8 r r4 } |
    r8 e'16 d cs b  a8 cs a  \tuplet 2/3 { 
      fs8 r r4 |
      r4 fs'8.*8/9 fs16*4/3 e4 r |
    } 
    R1. |
    
    \barNumberCheck 9
    r8 \voiceDown a,16 b cs d  e8 d16 cs b a  \voiceUp fs'8 \voiceDown b,16 cs
      d e  fs8 e16 d cs b |
    \voiceUp gs'8 e16 fs gs a  b8 gs b  d b d  gs d gs |
    \tuplet 2/3 {
      cs,4 a fs ds |
      e8.*8/9 d!16*4/3 cs8.*8/9 a'16*4/3  a4 gs |
      a8 r r4 r4
    } r8 gs es |
    \tuplet 2/3 { cs8 r r4 r } r8 e cs |
    \tuplet 2/3 { 
      a8 r r4 r2 |
      r8*8/9 r16*8/9 d16*4/3  cs8.*8/9 b16*4/3 cs2 |
    }
  }
  \repeat volta 2 { 
    \barNumberCheck 17
    \staffUp \oneVoice r8 e'16 d cs b  a8 cs a  e a e  cs e cs |
    \tuplet 2/3 { 
      \voiceDown a4 \voiceUp <cs a'> q8[ <d b'> q <e cs'>] |
      q8 r r4 r2 |
      \voiceDown r4 e, e8 s4. |
    }
    e8 \voiceUp a16 b cs d  e8 cs e  \tuplet 2/3 { g! r r4 } |
    r8 d16 e fs g  a8 fs a  \tuplet 2/3 { 
      c r r4 |
      r8*8/9 r16*8/9 a16*4/3  g8.*8/9\parenthesize \prall fs16*4/3
        e4~ e8.*8/9 g16*4/3 |
      fs4~ fs8.*8/9 a!16*4/3  g4~  g8.*8/9 b16*4/3 |
      
      \barNumberCheck 25
      as8 r r4  cs8 r r4 |
    }
    r8 c16 b a! gs  a8 c gs  a c16 b a gs  a8 b16 a g fs |
    \tuplet 2/3 {
      g8 r r4 r2 |
      r2
    } r8 r8*8/9 r16*8/9 g16*4/3 \set tieWaitForNote = ##t fs4*1/2~ cs'4~ |
    <fs, cs'>16 \set tieWaitForNote = ##f s s4 s4. s2. |
    \tuplet 2/3 { r4 as e cs~ } |
    cs8 b16 cs d e  fs8 d fs  b fs b  d b d |
    cs8 as cs \tuplet 2/3 { 
      b4 b as |
      
      \barNumberCheck 33
      b8 r r4 r
    } r8 a fs |
    d8 g4~  g16 a g fs e d  cs!8 fs4~  fs16 g fs e d cs |
    b8 e4~  e16 fs e d cs b  a8 d4~ d4.~ |
    d8 g16 fs e d  g8 e fs~  fs d e \tuplet 2/3 { g4~ } |
    g8 e fs \tuplet 2/3 { b4~ } b8 a g \tuplet 2/3 { a4~ } |
    a8 g fs  g e fs \tuplet 2/3 { e4 } f16 e f d a' f~ |
    f8 e g~  g cs, d~  d cs e~  e a, d~ |
    \tuplet 2/3 { <b d>8 r r4 } r16 \voiceDown a g! fs! e d 
      \tuplet 2/3 { cs8 r } |
      
    \barNumberCheck 41
    r8 d16 e fs g  a8 fs a \voiceUp d a d  fs d fs |
    \tuplet 2/3 { 
      \voiceFour a4 a  a8[( g) g( fs]) |
      fs8 r r4 r2 |
      r4 a a8[ g g fs] |
      g8 r r4
    } r8 a,16 b cs d  e8 cs e |
    \tuplet 2/3 { a8 r r4 } r8 g,16 a b cs  d8 b d |
    \tuplet 2/3 { g8.*8/9 d16*4/3  g8.*8/9 g16*4/3 g4 } r8 a16 g fs e |
    fs8 d16 e fs g  a8 g16 fs e d  g8 e16 fs g a  b8 a16 g fs e |
    
    \barNumberCheck 49
    \tuplet 2/3 { a8.*8/9 g16*4/3 fs4~  fs e8.*8/9 d16*4/3 } |
    cs!8 a16 b cs d  e8 cs e  g e g  cs g cs |
    \tuplet 2/3 { 
      fs,4 d b gs |
      a8.*8/9 g!16*4/3  fs8.*8/9 e'16*4/3  cs8.*8/9 d16*4/3
    } d8 cs16 b cs8 |
    \tuplet 2/3 { d16 r r8 r4 r } r8 cs' as |
    fs8 gs16 as b cs \tuplet 2/3 { d r r8 r4 } r8 a fs |
    d8 e16 fs g a \tuplet 2/3 { b r r8  r8*8/9 r16*8/9 cs,16*4/3  d8.*8/9
      fs16*4/3 } |
    g8 a b \tuplet 2/3 { fs8.*8/9 <e g>16*4/3~ } 
      << 
        { 
          \beamPositionsA g8 a fs-\tieShapeA ~ \tuplet 2/3 { \voiceThree fs4 }
        }
        \new Voice { \voiceOne s8 a4~ \tupletOff \tuplet 2/3 { a } }
        \new Voice { \tupletOff \tuplet 2/3 { \voiceTwo d,4 d } } 
      >> |
  }  
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
  \tupletOff
  \repeat volta 2 {
    \tuplet 2/3 {
      <d, d'>4 r r2 |
      r4 d'' a' a, |
      \voiceTwo d4 r r2 | 
      \oneVoice r4 d, a' a, |
      d8.*8/9 d,16*4/3  d'8.*8/9 d16*4/3  d4
    } r8 e16 d cs b |
    \tuplet 2/3 { cs8.*8/9 cs,16*4/3 cs'8.*8/9 cs16*4/3 cs4 } r8 d16 cs b a |
    b8 fs'16 e d cs  b8 d b  gs b gs  e gs e |
    a8 cs a  fs a fs  b d b  gs b gs |
    \tuplet 2/3 {
      
      \barNumberCheck 9
      \voiceTwo cs8 r r4  d8 r r4 |
      \oneVoice e8.*8/9 e,16*4/3 e8.*8/9 e16*4/3  e4~
    } e8. b'16 cs d |
    \tuplet 2/3 {
      e8.*8/9 e,16*4/3 e8.*8/9 e16*4/3  e4 r |
      r8*8/9 r16*8/9 e'16*4/3
    } fs8 e d \tuplet 2/3 { e4 e, |
      a8.*8/9 e'16*4/3 a4~\mordent
    } a8 b16 a gs fs  es8 fs16 es ds cs |
    \tuplet 2/3 { fs8.*8/9 fs,16*4/3 fs'4~\mordent } fs8 g!16 fs e d  cs8
      d16 cs b a |
    \tuplet 2/3 { d8.*8/9 d,16*4/3 d'4~\mordent } d8 e16 d cs b  a8 b16 cs d
      e |
    fs8 e d \tuplet 2/3 { e8.*8/9 e,16*4/3 } a8 cs e \tuplet 2/3 { a4 } |
  }
  \repeat volta 2 { 
    \barNumberCheck 17
    \tuplet 2/3 {
      <a, a'>4 r r2 |
      \voiceTwo r4 \oneVoice a' a8 r r4 |
    }
    r8 e'16 d cs b  a8 cs a  e a e  cs e cs |
    \tuplet 2/3 { 
      \voiceTwo a4 <a cs>  q8[ <b d> q <cs e>] | 
      cs8 r r8*8/9 r16*8/9 a'16*4/3
    } b8 cs16 b a b  cs8 d16 cs b cs |
    \tuplet 2/3 { d8 r r8*8/9 r16*8/9 d,16*4/3 } e8 fs16 e d e  fs8 g16 fs e
      fs |
    \oneVoice g8 b16 a g fs  e8 g16 fs e d  cs!8 e cs  as cs as |
    d8 fs d  b d b  e g e  cs e cs |
    
    \barNumberCheck 25
    \tuplet 2/3 { fs8.*8/9 b16*4/3 } as8 b cs 
      \tuplet 2/3 { fs,8.*8/9 b16*4/3  as8.*8/9 b16*4/3 } |
    \tuplet 2/3 { b,8.*8/9 e'16*4/3 } ds8 e fs 
      \tuplet 2/3 { b,8.*8/9 e16*4/3  ds8.*8/9 e16*4/3 } |
    e,16 g a b cs ds  e8 g e  cs e cs  a cs a |
    d,16 fs g a b cs \tuplet 2/3 { d4~ } d8 cs b  as16 cs b as gs fs |
    b8 fs d  b cs16 d e fs  g! a! b a g fs  e fs g fs g e |
    \tuplet 2/3 { fs8.*8/9 fs,16*4/3  fs8.*8/9 fs16*4/3 fs4 } r8 r16 cs' d e |
    \tuplet 2/3 { fs8.*8/9 fs,16*4/3  fs8.*8/9 fs16*4/3 fs4 r } |
    r8 r16 d' e fs  g8 fs e \tuplet 2/3 { 
      fs4 fs, |
      
      \barNumberCheck 33
      b8.*8/9 fs'16*4/3 b4~\mordent
    } b8 c16 b a g  fs8 g16 fs e d |
    g16 a b g fs g  cs,!8 e cs  fs16 g a fs e fs  b,8 d b |
    e16 fs g e d e  a,8 cs a  d16 e fs d cs d  b c d b a b |
    g16 a b a g fs  e fs g fs e d \tuplet 2/3 { a'4~ } a16 gs as b cs as |
    \tuplet 2/3 { b4~ } b16 a! b d cs e \tuplet 2/3 { d4~ } d16 e d c b a |
    g16 d' e fs g a \tuplet 2/3 { bf4~ } bf16 a bf g e g  a g a f d f |
    g16 f g e cs e  f e f d b! d  e d e cs a cs  d cs d f bf, d |
    \tuplet 2/3 { gs,2\prallprall \voiceTwo a4 } r16 b a g fs e |
    
    \barNumberCheck 41
    \tuplet 2/3 { 
      d4 r r2 |
      \oneVoice r4 d' a' a, |
      d4
    } r8 c'16 b a g  fs8 a fs  d fs d |
    a8 d a  fs a fs \tuplet 2/3 { 
      d4 d' |
      g,8.*8/9 d'16*4/3  g8.*8/9 g16*4/3 g4
    } r8 a,16 g fs e |
    \tuplet 2/3 { fs8.*8/9 fs'16*4/3  fs8.*8/9 fs16*4/3 fs4 } r8 g,16 fs e d |
    \stemDown e8 b''16 a g fs  e8 g e  \stemNeutral cs e cs  a cs a |
    d8 fs d  b d b  e g e  cs e cs |
    
    \barNumberCheck 49
    fs8 d16 e fs g  a8 g16 fs e d  g8 e16 fs g a  b8 a16 g fs e |
    \tuplet 2/3 { a8.*8/9 a,16*4/3  a8.*8/9 a16*4/3 a4~ } \stemUp a8. e'16 fs
      g |
    \tuplet 2/3 { \stemNeutral a8.*8/9 a,16*4/3  a8.*8/9 a16*4/3 a4 r } |
    r8 r16 fs g a  b8 a g \tuplet 2/3 { 
      a8.*8/9 a'16*4/3  a8.*8/9 a,16*4/3 |
      d8.*8/9 a'16*4/3 d4~
    } d8 e16 d cs b  as8 b16 as gs fs |
    \tuplet 2/3 { b8.*8/9 b,16*4/3 b'4~ } b8 c16 b a! g!  fs8 g16 fs e d |
    \tuplet 2/3 { g8.*8/9 g,16*4/3 g'4~ } g8 a16 g fs e  d8 e16 fs g a |
    b8 a g \tuplet 2/3 { a8.*8/9 a,16*4/3 d,2 } |
  }
}

tempi = {
  \tempo 4. = 84
  s1. * 110 |
  s2. s4. \tempo 4. = 76 s |
  s4. \tempo 4. = 69 s \tempo 4. = 63 s \tempo 4. = 40 s |
}

forceBreaks = {
  % page 1
  s1.\noBreak s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\noBreak s1.\pageBreak
  
  % page 2
  s1.\noBreak s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  % page 3
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\noBreak s1.\pageBreak
  
  % page 4
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
}

preludeFiveNotes =
\score {
  \header {
    title = "Prelude 5"
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

preludeFiveMidi =
\book {
  \bookOutputName "prelude-5-bwv-874"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
