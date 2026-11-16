%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

%% See notes on prelude 5 concerning "8. 16" durations and triplet feel

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'(
                       ((0 . -0.5) (0 . -1.5) (0 . -1.5) (0 . 0))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                     ) \etc
tieShapeB = \shape #'((0 . 0) (0 . -1.5) (0 . -1.5) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
tieShapeD = \shape #'(
                       ((0 . 0) (0 . -1.25) (0 . -1.25) (0 . 0))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                     ) \etc
tieShapeE = \shape #'(
                       ((-0.5 . -0.5) (0 . -1.25) (0 . -1.25) (0 . 0))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                     ) \etc
tieShapeF = \shape #'((-0.5 . -0.5) (0 . -2.5) (0 . -2.5) (0 . 0)) \etc
tieShapeG = \shape #'((0 . 0) (0 . -1.5) (0 . -1.5) (0 . 0)) \etc
tieShapeH = \shape #'((0 . 0) (0 . -0.5) (0 . -1) (0 . 0)) \etc
tieShapeI = \shape #'((0 . -0.5) (0 . -0.75) (0 . -0.75) (0 . -0.5)) \etc
tieShapeJ = 
  \shape #'((-0.25 . 0.25) (-0.25 . 0.25) (0.5 . 0.25) (0.5 . 0.25)) \etc
tieShapeK = \shape #'((0 . 0) (0 . 0) (0.5 . 0) (0.5 . 0)) \etc

moveNoteA = \once \override NoteColumn.X-offset = 1

%%% Music %%%

global = {
  \time 2/2
  \key e \minor
  \beamQuarterNotes.44
}

rightHandUpper = \relative {
  \partial 4 \tuplet 3/2 { r8 e' fs } |
  g4-.  a16 g fs g  a4-.  b16 a g a |
  b4-. g-. e-. c'~ |
  c4 b8.*8/9 ds16*4/3 e4-. a,4~ |
  a4 g8.*8/9 ds'16*4/3 e4-. fs,~ |
  \tuplet 3/2 4 { fs8 g a  g fs e } \tupletOff \tuplet 3/2 { 
    ds8 c' b  a g fs |
    \voiceOne g8 a b  a g fs  e e' d cs b as |
    b8 d fs
  } gs4-. \tuplet 3/2 { cs,8 e g } as4-. |
  \tuplet 3/2 { d,8 fs as } b4~ \tuplet 3/2 { b8 a g  fs e ds } |
  
  \barNumberCheck 9
  e2 d! |
  cs2\parenthesize \prall b |
  as4 b cs2~ |
  cs4 fs8.*8/9 as,16*4/3 b2~ |
  \tuplet 3/2 { b8 g b } cs4~ \tuplet 3/2 { cs8 a c } ds4~ |
  \tuplet 3/2 { ds8 b ds } e4~ e2~ |
  \tuplet 3/2 { e8 ds e } fs4~ \tuplet 3/2 { fs8 e d  cs ds e } |
  \tuplet 3/2 { ds8 e fs } b,4~ \tuplet 3/2 { b8 a g  a b c!~ } |
  
  \barNumberCheck 17
  c4 \tuplet 3/2 { b8 a g } a4 ds,! |
  b'2~ b8.*8/9 e,16*4/3  ds8.*8/9 e16*4/3 |
  c'2~ c8.*8/9 fs,16*4/3  e8.*8/9 fs16*4/3 |
  d'2~ \tuplet 3/2 { d8 g, a  b c d } |
  e2~ \tuplet 3/2 { e8 fs, g  a b c } |
  d2~ \tuplet 3/2 { d8 e, fs  g a b } |
  c2~ \tuplet 3/2 { c8 d, e  fs g a } |
  \oneVoice b4-. c16 b a b  c4-. d16 c b c |
  
  \barNumberCheck 25
  d4 b g e'~\mordent |
  e4 d8.*8/9 fs16*4/3  g4-. c,~ |
  c4 b8.*8/9 fs'16*4/3  g4-. a,~ |
  \tuplet 3/2 { 
    a8 b c!  b a g  fs e' d  c b a |
    b8 c d  c b a  g g' fs  e d cs |
  }
  \voiceOne d4 r cs r |
  c!4 r b d |
  g2 fs |
  
  \barNumberCheck 33
  e2 d |
  cs4 d e2~ |
  e8.*8/9 cs16*4/3 d8.*8/9 e16*4/3 fs2~ |
  fs8.*8/9 ds16*4/3 e8.*8/9 fs16*4/3  
    << 
      { g4 cs,~ } 
      \new Voice { 
        \tupletOff \tuplet 3/2 { s4 \hideNoteHead cs8-\tieShapeK ~ }
        \hideNoteHead cs4 
      } 
    >> |
  \tuplet 3/2 { \once \omit Accidental cs8 d e  d cs b } as'4 cs,\turn |
  fs2. e4~ |
  \tuplet 3/2 { e8 fs e  d cs b } fs'2~ |
  \tuplet 3/2 { fs8 g fs  e ds cs } a'2~ |
  
  \barNumberCheck 41
  a4 g fs2~ |
  fs2 \tuplet 3/2 { r8 e gs, } as4 |
  \tuplet 3/2 { d8 fs as, } b4~ b2~ |
  \tuplet 3/2 { 
    b8 cs b  as gs fs  \oneVoice r b a  g fs e |
    as8 fs gs  as b cs  d cs, d  e fs g~ |
  }
  \voiceOne g4 \tuplet 3/2 { fs8 e d } e4 as, |
  fs'2~ fs8.*8/9 b,16*4/3  as8.*8/9 b16*4/3 |
  g'2~ g8.*8/9 cs,!16*4/3  b8.*8/9 cs16*4/3 |
  
  \barNumberCheck 49
  a'2~ a8.*8/9 e16*4/3 ds4 |
  e4 r c'! r |
  b4 \tuplet 3/2 { r8 e d!  c b a  gs a b } |
  \tuplet 3/2 { e,8 fs e } \voiceFour b'8.*8/9 ds16*4/3 e4 a,^~ |
  a4 g8.*8/9 ds'16*4/3  e4 fs,^~ |
  \tuplet 3/2 { fs8 g a  g fs e } \voiceOne r4 ds' |
  e2 \tuplet 3/2 { 
    r8 f e  d! c b |
    c8 d e  d c b  a b' a  g! fs e |
    
    \barNumberCheck 57
    \oneVoice fs8 g a  g fs e  d e d  c! b a |
    b8 c d  \voiceOne c b a
  } g8 r r4 |
  r2 r4 \tuplet 3/2 { r8 a b } |
  \oneVoice c4 d16 c b c  d4 e16 d c d |
  e4 c a f'~ |
  \voiceOne f4 e8.*8/9 gs16*4/3 a4 d,~ |
  d4 c8.*8/9 gs'16*4/3  a4 b,~ |
  \tuplet 3/2 { 
    b8 c d  c b a  gs f' e  d c b |
    
    \barNumberCheck 65
    c8 d e  d c b
  } a2~ |
  a2~ \tuplet 3/2 { a8 ds, e  fs g a } |
  g2~ \tuplet 3/2 { g8 ds e  g fs a } |
  ds,8.*8/9 e16*4/3  fs4~ \tuplet 3/2 { fs8 b, ds  fs b ds, } |
  e2~ \tuplet 3/2 { \oneVoice e8 g as  cs ds e } |
  e,4 ds\prall\fermata r2 |
  \tuplet 3/2 { 
    r8 b cs  ds e fs  g c! b  a g fs | 
    e8 g' e
  } cs4 \tuplet 3/2 { fs,8 a' fs } ds4 |
  
  \barNumberCheck 73
  \voiceOne \tuplet 3/2 { g,8 b' g  e d! cs } d2 |
  \tuplet 3/2 { 
    c8 fs, e  ds e fs   g a b  c b a |
    ds8 e fs  b, c a  g fs g  a b c~ |
  }
  c4 \tuplet 3/2 { b8 a g } a2~ |
  a8.*8/9 fs16*4/3  b8.*8/9 a16*4/3 g2~ |
  \tuplet 3/2 { g8 b a!  g fs e } ds16*4/3 c'8.*8/9~ \tuplet 3/2 { c8 e, ds } |
  \tuplet 3/2 { b'8 e, g } cs4~ \tuplet 3/2 { cs4 a!8 } ds4~ |
  \tuplet 3/2 { ds4 b8 } e4~ \tuplet 3/2 { e4 ds8 } fs4~ |
  
  \barNumberCheck 81
  \tuplet 3/2 { fs4 e8 } g4 r2 |
  \oneVoice \tuplet 3/2 { 
    r8 c, fs  a ds, fs  c b ds  fs a,! c |
    g8 fs a  c fs, a  \tempo "Adagio" e ds\prall\fermata ds'\turn
  } e4~ |
  \tuplet 3/2 { 
    e8 d! c  b a! g  a fs g  a b c~ |
    c8 b a  g ds e~  e fs16 a c8
  } ds,8.*8/9\prall e16*4/3 |
  << { e1 } \\ { \tupletOff \tuplet 3/2 { r8 b d! } c4 \voiceThree b2 } >> |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  s1 * 5 |
  \voiceFour r2 r4 \tupletOff \tuplet 3/2 { r8 b cs } |
  d4-. e16 d cs d  e4-.  fs16 e d e |
  fs4-. d-. b-. g'~ |
  
  \barNumberCheck 9
  g4 fs8.*8/9 as16*4/3 b4 e,~ |
  e4 d8.*8/9 as'16*4/3 b4 cs,~ |
  \tuplet 3/2 { 
    cs8 d e  d cs b  as g' fs  e d cs |
    d8 e fs  e d cs  b a' g  fs e ds |
  }
  e2 fs |
  g2 \tuplet 3/2 { gs8 d' c  b a gs } |
  a2 g! |
  fs2 e |
  
  \barNumberCheck 17
  ds4 e fs2-\tieShapeA ~ |
  fs8.*8/9 ds16*4/3  e8.*8/9 fs16*4/3 g2-\tieShapeB ~ |
  g8.*8/9 e16*4/3  fs8.*8/9 g16*4/3 a2-\tieShapeC ~ |
  a8.*8/9 fs16*4/3  g8.*8/9 a16*4/3  b4 r |
  \tuplet 3/2 { r8 d c  b a g } a4 r |
  \tuplet 3/2 { r8 c b  a g fs } g4 r |
  \tuplet 3/2 { r8 b a  g fs e } fs4 r |
  \voiceDown \tuplet 3/2 { r8 b, d } e4~ \tuplet 3/2 { e8 c e } fs4~ |
  
  \barNumberCheck 25
  \tuplet 3/2 { fs8 d fs  g g, b  e e, fs  g a b } |
  c2 b |
  a2 \tuplet 3/2 { r8 d, g~  g fs g } |
  fs4 g a fs |
  \mergeDifferentlyDottedOn
  g8.*8/9 b16*4/3 d2 \tuplet 3/2 { cs8 d e } |
  \voiceUp fs4 g16 fs e fs  g4 a16 g fs g |
  a4 fs d b'~ |
  b4 a8.*8/9 cs16*4/3  d4 g,~ |
  
  \barNumberCheck 33
  g4 fs8.*8/9 cs'16*4/3 d4 e,~ |
  \tuplet 3/2 { 
    e8 fs g  fs e \voiceDown d  cs \voiceUp b' a  \voiceDown \clef treble 
      g fs e |
    fs g a  g fs e  d \voiceUp c'! b  \voiceDown a g fs |
    g8 a b  a g fs  e \voiceUp d' cs  b as gs |
  }
  as4 b cs cs~ |
  \tuplet 3/2 { cs8 e d cs b as } b4 cs |
  fs,2 r4 fs |
  << 
    { b2 cs4 } 
    \new Voice { 
      s4 \tupletOff \tuplet 3/2 { s4 \hideNoteHead cs8_~ } \hideNoteHead cs4 
    } 
  >> \tuplet 3/2 { ds8 e fs } |
  
  \barNumberCheck 41
  b,4 e~ \tuplet 3/2 { e8 \moveNoteA e d  cs b as } |
  \tuplet 3/2 { b8 d b } gs4 cs2-\tieShapeD ~ |
  cs4 b~ \tuplet 3/2 {  b8 a g!  fs e ds } |
  \voiceDown e2 d! |
  cs2 b |
  \voiceUp as4 b cs2-\tieShapeE ~ |
  cs8.*8/9 a16*4/3  b8.*8/9 cs16*4/3 d2-\tieShapeF ~ |
  d8.*8/9 b16*4/3  cs8.*8/9 d16*4/3 e2-\tieShapeG ~ |
  
  \barNumberCheck 49
  e8.*8/9 cs16*4/3  ds8.*8/9 e16*4/3  fs4-\tieShapeH ~ 
    \tuplet 3/2 { fs8 e fs } |
  g4 a16 g fs g  a4 b16 a g a |
  b4 g e c'-\tieShapeI ^~ |
  c4 \voiceDown \tuplet 3/2 {
    % fourth beat, ds according to the transcription
    ds,8 e fs  b, e d  cs ds e |
    \staffUp ds8 e fs  \staffDown b, c! a  g a b  c b a |
  }
  b2 \voiceUp \tuplet 3/2 { ds8 c' b  a g fs | }
  \tuplet 3/2 { g8 a b  a g fs } \voiceDown e2~ |
  e8.*8/9 fs16*4/3~  fs8.*8/9 gs16*4/3  \voiceUp a4 \voiceDown e~ |
  
  \barNumberCheck 57
  e8.*8/9 d16*4/3~  d8.*8/9 cs16*4/3 d2~ |
  d8.*8/9 e16*4/3~  e8.*8/9 \voiceUp fs16*4/3 \tuplet 3/2 { g8 a g  f e d } |
  \tuplet 3/2 { e8 f g  f e d  c d c  \voiceDown b a gs } |
  a2~ \tuplet 3/2 { a8 d, f } gs4 |
  \tuplet 3/2 { r8 c, d  e fs! gs } a8 r r4 |
  \voiceUp d'2 c |
  b2 a |
  gs8.*8/9 \voiceDown gs,16*4/3  a8.*8/9 c16*4/3
    \tuplet 3/2 { b8 d! c  b a gs } |
  
  \barNumberCheck 65
  a8 r r4 \voiceUp \tuplet 3/2 { r8 g'! fs!  e ds cs } |
  \tuplet 3/2 { ds8 e fs  e ds cs } b2~ |
  b8.*8/9 b16*4/3  c8.*8/9 b16*4/3  \voiceDown as4 a~ |
  \tuplet 3/2 { a8 \voiceUp c b  \voiceDown a g fs } g2~ |
  g4 r g~ \tuplet 3/2 { g8 fs g } |
  g4 fs\prall\fermata r2 |
  s1 * 2 |
  
  \barNumberCheck 73
  \voiceUp r2 \tuplet 3/2 { r8 b' gs  e fs gs } |
  a2 g! |
  fs2 e |
  ds4 e fs2~ |
  fs8.*8/9 ds16*4/3  b8.*8/9 ds16*4/3 e2~ |
  e4 r \voiceDown \tuplet 3/2 { r8 ds, e  fs g a } |
  \tuplet 3/2 { g8 \voiceUp e'4~ } e~ \tuplet 3/2 { e8 fs4~ } fs~ |
  \tuplet 3/2 { fs8 g4~ } g~ \tuplet 3/2 { g8 a!4~ } a4~ |
  
  \barNumberCheck 81
  \tuplet 3/2 { a8 b4~ } b r2 |
  s1 |
  s2 \voiceDown <fs, b>4 r8*8/9 r16*8/9 fs'16*4/3 |
  g4~ \tuplet 3/2 { g8 fs e } ds8.*8/9 e16*4/3  fs8.*8/9 e16*4/3 |
  ds8 r \tuplet 3/2 { r8 fs, g } fs4~ \tuplet 3/2 { fs8 g a!~ } |
  \tuplet 3/2 { a8 gs4~  gs8 \voiceUp gs a~ } a4 gs^\fermata |
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
  \partial 4 r4 |
  R1 * 8 |
  
  \barNumberCheck 9
  R1 * 3 |
  r2 r4 \tuplet 3/2 { r8 e fs } |
  g4-. a16 g fs g  a4-. b16 a g a |
  b4-. g-. e-. c'~ |
  c4 b8.*8/9 ds16*4/3 e4 a,~ |
  a4 g8.*8/9 ds'16*4/3 e4 fs,~ |
  
  \barNumberCheck 17
  \tupletOff \tuplet 3/2 { 
    fs8 g a  g fs e  ds c' b  a g fs |
    g8 a b  a g fs  e d'! c  b a g |
    a8 b c  b a g  fs e' d  c b a |
    b8 c d  c b a  g b d
  } g4 |
  c,4 e \tuplet 3/2 { fs,8 a c } fs4 |
  b,4 d \tuplet 3/2 { e,8 g b } e4 |
  a,4 c \tuplet 3/2 { d,8 fs a } d4 |
  \voiceTwo g,2 a |
  
  \barNumberCheck 25
  b4 r r2 |
  \tuplet 3/2 { 
    r8 a g  fs g a  r g fs  e fs g |
    r fs e  d e c
  } b4 cs |
  d2 r4 d |
  g4~ g8.*8/9 fs16*4/3 e4 a |
  \tuplet 3/2 { d,8 fs a } b4 \tuplet 3/2 { e,8 g a } cs4 |
  \tuplet 3/2 { fs,8 g a } d4 \tuplet 3/2 { 
    r8 c! b  a g fs |
    e g b  cs e a,  d, d' cs  b a g |
    
    \barNumberCheck 33
    cs,8 e g  a cs fs,  b, b' a  g fs e |
  }
  a2 r4 \clef treble cs |
  d2 r4 ds |
  e2 r4 \oneVoice es |
  fs2~ \tuplet 3/2 { fs8 g! fs  e! d cs } |
  d2~ \tuplet 3/2 { d8 e d cs b as } |
  \clef bass b2~ \tuplet 3/2 { b8 c! b  a! g fs } |
  g2~ \tuplet 3/2 { 
    g8 a g fs e ds |
    
    \barNumberCheck 41
    e8 fs e  d! cs b  as fs gs  as b cs |
  }
  d4-. e16 d cs d  e4-. fs16 e d e |
  fs4-. d-. b-. g'~\mordent |
  \voiceTwo g4 fs8.*8/9 as16*4/3  b4 e,~ |
  e4 d8.*8/9 as'16*4/3  b4 cs,~ |
  \tuplet 3/2 { 
    cs8 d e  \oneVoice d cs b  as g' fs  e d cs |
    d8 e fs  e d cs  b a'! g  fs e d |
    e8fs g  fs e d  cs b' a!  g fs e |
    
    \barNumberCheck 49
    fs8 g a  g fs e  ds c'! b  a g fs |
    e8 g b
  } cs4-. \tuplet 3/2 { fs,8 a c } ds4-. |
  \tuplet 3/2 { g,8 b ds } e4 \tuplet 3/2 { e,8 d' c  b a gs } |
  a2 g |
  fs2 e |
  ds4 e fs b, |
  e4 fs g gs |
  a4 b c cs |
  
  \barNumberCheck 57
  d,4 e fs d |
  g4 a b g |
  \tuplet 3/2 { c,8 d e  d e f  e gs a } \voiceTwo d,4 |
  \tuplet 3/2 { c8 d e } f4 b,2 |
  a4 r \tuplet 3/2 { 
    r8 b' c  d e f |
    gs,8 a b  c d e  fs,! gs a  b c a |
    gs8 fs e  a b c  f, a g  f g e |
  }
  d8.*8/9 f16*4/3  e8.*8/9 ds16*4/3 e2 |
  
  \barNumberCheck 65
  a,8.*8/9 e'16*4/3  a8.*8/9 b16*4/3  c8.*8/9 a16*4/3  fs8.*8/9 a16*4/3 |
  \tuplet 3/2 { 
    b,8cs ds  cs fs e  ds a' g  fs e ds |
    e8 fs g  fs e d!
  } cs4 c |
  b1~ |
  << 
    { \tuplet 3/2 { b8 cs ds  e fs g } as,2 | } 
    \new Voice { 
      \tupletOff s4 \tuplet 3/2 { s4 \hideNoteHead g'8-\tieShapeJ ~ }
      \hideNoteHead g2 | 
    } 
  >>
  b,2 \tuplet 3/2 { r8 c! b  a! g fs } |
  \oneVoice \tuplet 3/2 { g8 a g  fs e ds } e4 \tuplet 3/2 { r8 e fs } |
  g4 a16 g fs g  a4 b16 a g a |
  
  \barNumberCheck 73
  b4 g e c'~ |
  c4 b8.*8/9 ds16*4/3  e4 a,~ |
  a4 g8.*8/9 ds'16*4/3 e4 fs,~ |
  \tuplet 3/2 { 
    fs8 g a  g fs e  ds c' b  a g fs |
    g8 a b  a g fs  e e' d!  c b as |
  }
  \voiceTwo b1~ |
  b4~ \tuplet 3/2 { b8 as' b } b,4~ \tuplet 3/2 { b8 as' b } |
  b,4~ \tuplet 3/2 { b8 as' b } b,4~ \tuplet 3/2 { b8 as' b } |
  
  \barNumberCheck 81
  b,4~ \tuplet 3/2 { b8 as' b  fs g ds  e b c } |
  \oneVoice ds,4 r r2 |
  r2 \voiceTwo a'4 r8*8/9 r16*8/9 as'16*4/3 |
  b1~ |
  \tuplet 3/2 { b8 cs ds  e r as,, } b2 |
  e2~ \tuplet 3/2 { e8 ds e } \oneVoice e,4_\fermata |
}

tempi = {
  \tempo 4 = 126
  \partial 4 s4 |
  s1 * 68 |
  \tempo 4 = 112 s2 \tempo 4 = 100 s |
  \tempo 4 = 88 s4 \tempo 4 = 60 s \tempo 4 = 126 s2 |
  s1 * 11 |
  \tempo 4 = 112 s2 \tempo 4 = 100 s |
  \tempo 4 = 88 s2 \tuplet 3/2 { 
    \tempo 4 = 60 s8. \tempo 4 = 10 s16 \tempo 4 = 80 s8
  } s4 | % 83
  s1 | % 84
  s2 \tempo 4 = 72 s | % 85
  \tempo 4 = 66 s4 \tempo 4 = 60 s \tempo 4 = 56 s \tempo 4 = 20 s | % 86
}

forceBreaks = {
  % page 1
  \partial 4 s4
  s1 * 4 \break
  s1 * 3 \break
  s1 * 4 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 3
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \pageBreak
  
  % page 4
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
}

fugueTenNotes =
\score {
  \header {
    title = "Fugue 10"
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

fugueTenMidi =
\book {
  \bookOutputName "fugue-10-bwv-879"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
