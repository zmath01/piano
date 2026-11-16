%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((2 . 0.25) (2 . 0.25) (0 . 0.5) (0 . 0.5)) \etc
tieShapeB = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc

moveOrnamentA = \override Script.Y-offset = -2
moveOrnamentB = \offset Y-offset 0.5 \etc
moveOrnamentC = \offset X-offset 0.25 \etc

beamPositionsA = \once \override Beam.positions = #'(0 . 2)

stemLengthA = \tweak Stem.length 6 \etc

%%% Music %%%

global = {
  \time 3/4
  \key e \major
  \beamQuarterNotes.34
}

rightHandUpper = \relative {
  \voiceOne 
  \repeat volta 2 { 
    r8 b' cs4~  cs16 cs b a |
    b4~ b16 b e ds  cs b a gs |
    a2.~ |
    a16 a gs fs  gs4~ gs16 gs fs e |
    ds8 r r ds' e4~ |
    e16 e ds cs  ds8 r r4 |
    r16 ds cs b cs2~ |
    cs4~ cs16 cs b as b4~ |
    
    \barNumberCheck 9
    \oneVoice b16 a! gs fs  es gs b d~  d d cs b~ |
    b16 a gs b  a cs fs a~  a fs gs a |
    \voiceOne bs,8 cs ds2 |
    r8 gs,[ cs e]  as, b!16 cs~ |
    cs16 es, fs gs  as b cs ds  e! ds e cs |
    ds2.~ |
    ds4 d8 b gs b~ |
    \oneVoice b16 b as gs  as b cs as  fs8 fs'~ |
    
    \barNumberCheck 17
    fs16 e gs fs  e ds cs b  ds fs, cs' e, |
    ds16 fs b as  \voiceOne b4 gs |
    fs16 gs a! gs  a4 fs |
    e16 fs g fs  g4 e~ |
    e8 cs' cs e, ds fs' |
    fs8 b, as e' e fs, |
    << 
      { 
      fs4~  fs8 gs16 b~  b16 b8 as16 |
      b8 e, ds cs ds4 |
      } 
      \new Voice {
        \voiceFour \hideNoteHead e4-\tieShapeA ~ \voiceTwo e16 ds8. cs8 e~ |
        e16 ds8 cs16~  cs b8 as16 b4 |
      } 
    >>
  }
  \repeat volta 2 { 
    \barNumberCheck 25
    r8 fs'' gs4~  gs16 gs fs e |
    fs4~ fs16 fs gs a  gs fs e ds |
    e4~ e8 e ds cs |
    bs2 r4 |
    \oneVoice r16 cs gs fss  gs bs cs ds  e ds e cs |
    ds16 bs gs fss gs bs ds e  fs! e fs ds |
    \voiceOne e4~ e8. ds16~  ds cs8 bs16 |
    cs4 r r |
    
    \barNumberCheck 33
    r16 e ds cs  b as b cs  ds e fs32 e ds e |
    fs16 gs fs e  ds cs ds e  fs gs a32 gs fs gs |
    a16 cs, b as  b a'! gs fs  b e, ds a' |
    gs16 r r8 r4 r |
    r16 gs fs e  fs8 a4 ds,8~ |
    ds16 fs e ds  e8 gs4 cs,8~ |
    cs16 e ds cs  ds8 fs fs a,~ |
    a8 gs16 fs 
      << 
        { gs2~ } 
        \new Voice { 
          \voiceThree \moveOrnamentA \after 16.. \parenthesize \mordent e2 
        } 
      >> |
      
    \barNumberCheck 41
    gs16 gs fs e  ds cs ds e  fs gs a32 gs fs gs |
    a2.~ |
    a8 fs' fs a, gs b' |
    b8 e, ds a' a b, |
    b4~ b8 cs16 e~  e e8 ds16 |
    r16 b e ds  e4 cs |
    b16 cs d cs  d4 b |
    a16 b c b  c4 a~ |
    
    \barNumberCheck 49
    a4 r r |
    gs4 r16 gs fs e fs4 |
    r16 b, e ds  e b gs' e  \voiceOne b'4~ |
    b16 e, a gs  a e cs' a  e'4~ |
    e16 a, ds cs!  \oneVoice ds a fs' ds  a' fs e ds |
    e2.\mordent |
  }
}

rightHandLower = \relative {
  \voiceFour 
  \repeat volta 2 { 
    r4 r8 gs' a4~ |
    a16 a gs fs  gs8 r r4 |
    r16 gs fs e fs2~ |
    fs4~ fs16 fs e ds  e8 r |
    r8 fs  gs4~ gs16 gs fs e |
    fs4~ fs16 fs b a  gs fs e ds |
    e2.~ |
    e16 e ds cs ds2 |
    
    \barNumberCheck 9
    \voiceDown r8 a  b d!16 es  fs8 es~ |
    es8 es fs e ds! cs |
    \voiceUp ds8 e  fs a16 bs  cs8 bs |
    cs4 r g |
    fs8 r r4 r |
    \voiceDown r16 as, b cs  ds e fs \voiceUp gs  a! gs a fs |
    gs16 fs gs as  b8 fs es4 |
    \voiceDown e2~  e16 e ds cs |
    
    \barNumberCheck 17
    ds8 as b4. as8 |
    b4 \voiceUp r16 fs' e fs~  fs e ds e~ |
    e4 r16 e ds e~  e ds cs ds~ |
    ds4 r16 ds cs ds~  ds cs b cs~ |
    cs4 r8 cs b r |
    r8 ds cs r r <cs e> |
    <as e'>4 b \voiceDown r8 fs~ |
    fs8 g fs e fs4 |
  }
  \repeat volta 2 { 
    \barNumberCheck 25
    \voiceUp r4 r8 ds'' e4~ |
    e16 e ds cs  ds8 r r4 |
    r16 ds cs bs  cs4 fs,~ |
    fs16 fs gs a  gs fs e ds  cs bs cs ds |
    \voiceDown gs,8 cs cs gs gs gs |
    % 2nd beat, gs according to other sources, b is wrong
    gs8 ds' ds gs, gs gs |
    gs16 \voiceUp cs' gs b!  a cs fs,8  e ds |
    e16 a gs fs!  e ds e fs  gs a b32 a gs a | 
    
    \barNumberCheck 33
    b8 r r4 r |
    r8 s s2 |
    s2 \voiceDown b,4~ |
    b16 \voiceUp fs' e ds  e d' cs b  e a, gs d' |
    cs2 b4~ |
    b2 a4~ |
    a2~ a8 ds,~ |
    ds16 b8.~  b4 r |
    
    \barNumberCheck 41
    cs4 r r |
    r16 e ds cs  b as b cs  ds e fs32 e ds e |
    fs8 r r fs e r |
    r8 gs fs r r a |
    a4~  a16 gs8.  fs8 a |
    gs4 r16 b a b  r a gs a~ |
    a4 r16 a gs a~  a gs fs gs~ |
    gs4 r16 gs fs gs  r fs e fs~ |
    
    \barNumberCheck 49
    << { fs4 } \new Voice { \voiceTwo b, } >> r r16 b cs ds |
    e4 r fs16 cs ds8 |
    s2 r16 fs e d |
    cs8 s s4 r16 b' a gs |
    fs8 s s2 |
    s2. |
  }
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
  \repeat volta 2 { 
    e2.~ |
    e2.~ |
    e4~ e16 e ds cs  ds fs b, ds |
    e8 e, e' fs gs a |
    b2.~ |
    b2.~ |
    b4~ b16 b as gs  as cs fs, as |
    b2~ b16 cs b a! |
    
    \barNumberCheck 9
    \voiceTwo gs2. |
    fs2.~ |
    \oneVoice fs16 e ds cs  bs ds fs a~  a a gs fs~ |
    fs16 e ds fs  e gs cs e~  e cs ds e |
    as,8 cs fs cs as fs |
    b8 r r4 r |
    r16 ds, e fs  gs as b cs  d! cs d b |
    \voiceTwo cs4. b8 as4 |
    
    \barNumberCheck 17
    b8 fs gs e fs4 |
    b8 b, \oneVoice b b' b b, |
    b'8 b, b b' b b, |
    b'8 b, b b' b b, |
    b'8 as~-\moveOrnamentB \parenthesize \mordent as16 fs gs! as  b gs fs e |
    ds16 cs ds e  fs ds cs b  as gs as b |
    cs16 as gs fs  \voiceTwo b8 gs e fs |
    b2. |
  }
  \repeat volta 2 { 
    \barNumberCheck 25
    \oneVoice b'2.~ |
    b4 bs2\prall |
    cs4~ cs16 b! a gs  a cs fs, a |
    gs8 gs, gs' a gs fs |
    \voiceTwo e8 r r4 cs |
    bs8 r r4 gs4 |
    cs8 e fs a fss gs |
    cs, e gs cs b! a |
    
    \barNumberCheck 33
    gs8 b e gs fs e |
    \beamPositionsA ds8 \staffUp <gs b> <fs a!> <e gs> <ds fs> <cs e> |
    <b ds>8 <cs e> <b ds> \staffDown <a cs> gs fs |
    e8 fs \oneVoice gs e cs e |
    a,8 a'~  a16 gs fs e  ds! cs b a |
    gs8 gs'~  gs16 fs e ds  cs b a gs |
    fs8 fs'~  fs16 e ds cs  b a gs fs |
    e8 e'~ e16 ds e fs  gs b e, gs |
    
    \barNumberCheck 41
    a8 a, a' b a gs |
    fs4 r8 gs[ fs e] |
    \appoggiatura { e8 } ds4~-\moveOrnamentC \parenthesize \prall ds16 b' cs ds
      e cs b a |
    gs16 fs gs a  b gs fs e  ds cs 
      << 
        { \voiceTwo ds e | fs16 ds cs b  e8 cs } 
        \new Voice { \voiceThree fs'8 | ds4 e } 
      >> \oneVoice a,,8 b |
    e8 e, e e' e e, |
    e'8 e, e e' e e, |
    e'8 e, e e' e e, |
    
    \barNumberCheck 49
    ds16 fs b cs!  ds e fs gs  a r r8 |
    r16 cs b a b4
      << 
        { \voiceTwo b, | e2.~ | e2.-\tieShapeB ~ | e2.~ | e2. | } 
        \new Voice {  
          \voiceThree r8 r16 a |
          gs8 fs gs b a gs |
          a8 b cs e 
            << 
              { r b | <a c>4 } 
              \new Voice { \voiceFour \stemLengthA a4~ | \hideNoteHead a } 
            >> r8 q[ q q] |
          <gs b>2. |
        } 
      >>
  }
}

tempi = {
  \repeat volta 2 {
    \tempo 4 = 80
    s2. * 23 |
    \tempo 4 = 72 s4 \tempo 4 = 66 s \tempo 4 = 60 s |
  }
  \repeat volta 2 {
    \tempo 4 = 80
    s2. * 28 |
    \tempo 4 = 72 s4 \tempo 4 = 66 s \tempo 4 = 60 s |
    s2. |
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
  s2. * 5 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

preludeNineNotes =
\score {
  \header {
    title = "Prelude 9"
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

preludeNineMidi =
\book {
  \bookOutputName "prelude-9-bwv-878"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
