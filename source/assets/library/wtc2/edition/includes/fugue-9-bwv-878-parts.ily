%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 4/2
  \override Staff.TimeSignature.stencil = #(cut-time)
  \key e \major
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  R\breve * 3 |
  s\breve |
  \voiceOne r1 b' |
  cs2 e ds cs |
  b1~ b4 a8 gs a2~ |
  a2 gs fs e |
  
  \barNumberCheck 9
  ds2 r r1 |
  R\breve |
  e1 fs2 a! |
  gs2 fs  es4 fs gs a |
  b4 fs b2~  b a |
  gs1~ gs2. a8 b |
  cs4 bs cs ds  bs cs2 bs4 |
  cs1 r |
  
  \barNumberCheck 17
  b1 cs2 e |
  ds2 cs b cs |
  fs,4 ds gs2~  gs4 fs8 es? fs2~ |
  fs4 e8 ds e4 fs8 e  ds4 b' es,2~ |
  es4 fs2 es4  cs'2 b~ |
  b4 a2 gs4~  gs fs2 es4 |
  fs1 gs4 a b2~ |
  b4 a gs2  fs e4 fs |
  
  \barNumberCheck 25
  gs2. a4  gs fs e2 |
  r1 r2 gs |
  a4 cs b! a  gs2 as |
  b1~ b2. as4 |
  b4 gs a! b  cs ds! e2~ |
  e2. ds4  e b2 as4 |
  b2 r4 fs'  b, gs a b |
  cs2 b a gs |
  
  \barNumberCheck 33
  fs4 e'ds cs  b2 as~ |
  as4 gs8 fss gs2~  gs2. fss4 |
  gs2 r4 b  gs e fs! gs |
  a4 b cs ds  e8 b e2 ds4~ |
  ds4 cs8 b cs2  b4 r e2 |
  fs2 a gs fs |
  e2 ds cs b~ |
  b4 cs b a  gs2 r |
  
  \barNumberCheck 41
  r2 e' ds cs |
  b2 a  gs8fs gs a b4 a |
  gs2 fs e1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s\breve * 3 |
  \voiceFour e'1 fs2 a |
  gs2 fs  e r4 b |
  e4 fs gs as  b8 fs b2 a4~ |
  a4 gs8 fs gs2  cs,2. ds8 e |
  ds2 e~  e4 ds cs2 |
  
  \barNumberCheck 9
  fs,2 b cs e |
  ds2 cs  b4 e2 ds4~ |
  ds4 cs2 b8 as  b4 fs'2 e8 ds |
  e2. ds4 cs1 |
  b4 cs ds e!  fs cs fs2~ |
  fs2 e ds1 |
  cs4 ds e fs  gs2 fs |
  e1 fs2 a |
  
  \barNumberCheck 17
  gs2 fs  e4 cs gs'2~ |
  gs4 fs8 es fs2~  fs4 e8 ds e4 fs8 e |
  ds2. gs,4  a2. as4 |
  b2. as4  b2 d |
  cs1~ cs2 gs' |
  cs,2 b a gs |
  a4 b cs2~  cs ds4 es |
  fs2. e!4  ds2 cs~ |
  
  \barNumberCheck 25
  cs4 ds8 cs bs2  cs4 ds gs,2 |
  ds'4 e8 ds cs4 a'  bs, cs2 bs4 |
  cs2 ds  e4 gs fs e |
  ds4 a'! gs fs  e gs fs e |
  ds4 e fs gs  a2. gs4 |
  fs4 e fs2 e1 |
  fs2 a! gs fs |
  e4 a2 gs4  fs d' cs b |
  
  \barNumberCheck 33
  a4 fss gs as  gs fs e!2 |
  ds2 css ds1 |
  ds2 b cs e |
  ds2 cs b b' |
  gs4 e gs as  b8 fs b2 a4~ |
  a4 ds, e fs  gs cs a b |
  gs4 a fs gs  e fs ds e~ |
  e4 ds8 cs ds2  r4 e8 fs  gs4 as |
  
  \barNumberCheck 41
  b8 fs b2 a!4~  a8 ds, gs2 fs4~ |
  fs8 b, e2 ds4  e r r e |
  e2 ds b1 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s\breve |
  \voiceThree r1 b |
  cs2 e ds cs |
  b2. b4  a b cs ds |
  e8 b e2 ds4  e2 gs,4 fs |
  gs2 e fs1~ |
  fs4 b, e2~  e4 cs fs2 |
  fs4 e8 fs gs4 a  b8 fs b2 as4 |
  
  \barNumberCheck 9
  b2 r e,1 |
  fs2 a gs fs |
  e4 a2 gs4  fs e8 ds e4 fs |
  gs4 a b8 fs a4  gs2 fs~ |
  fs2 e!  ds4 es fs2 |
  cs4 ds e! fs  gs ds gs2~ |
  gs2 fs~  fs4 e ds2\prall |
  cs4 gs' cs2~  cs4 b!8 as b2~ |
  
  \barNumberCheck 17
  b4 a!8 gs a4 b8 a  gs2. gs4 |
  a2. as4  b2. as4 |
  b4. a!8  gs fs e ds  e2 r |
  fs1 gs2 b |
  a2 gs~  gs4 fs2 es4 |
  fs2 d cs1~ |
  cs2. ds!4  es4 cs gs'2 |
  fs2 gs4 cs,~  cs bs cs ds! |
  
  \barNumberCheck 25
  e4 fs8 e ds2~  ds e4 fs |
  gs2. fs4  e2 ds |
  e2 r r1 |
  r2 b'  cs4 e ds cs |
  b4 d cs b  a2 b |
  b2. a4  gs2. cs4 |
  fs,4 ds e fs  gs b cs ds |
  gs,4 e fs gs  a b cs2~ |
  
  \barNumberCheck 33
  cs4 cs b as  b ds cs2 |
  b2. as8 gs  as4 b cs!2 |
  b2 r e,!1 |
  fs2 a gs fs |
  e2 r r r4 e |
  ds4 b' cs ds  e8 b e2 ds4~ |
  ds8 gs, cs2 b4~  b8 e, a2 gs4 |
  fs1 e4 gs cs fs,~ |
  
  \barNumberCheck 41
  fs4 fs gs a  b ds, e fs |
  gs2 a  b4 r r cs |
  b2. a4 gs1 |
}

leftHandLower = \relative {
  e1 fs2 a |
  \voiceTwo gs2 fs  e4 ds8 cs ds4 b |
  e4 fs gs as  b8 fs b2 a4~ |
  a4 gs8 fs gs2~  gs fs |
  gs2 a4 b8 a  gs4 fs e ds |
  cs1 b2 fs |
  gs2. e4  a2. fs4 |
  b\breve~ |
  
  \barNumberCheck 9
  b2 r r1 |
  r1 b |
  cs2 e ds cs |
  b1~ b2 a |
  gs1 fs4 gs a b |
  cs4 gs cs2~  cs b |
  a1 gs |
  cs2 r4 cs  d2. ds4 |
  
  \barNumberCheck 17
  e2. ds4  e2 cs |
  fs2 e! ds cs |
  b1 cs2 e |
  ds2 cs  b4 gs2 a8 b |
  cs2 b a gs |
  fs2 b cs cs, |
  fs4 gs a fs  cs'2 b4 cs |
  d4 cs bs cs  fs, gs a2 |
  
  \barNumberCheck 25
  gs1 as4 bs cs2~ |
  cs4 b! a!2  gs1~ |
  gs2 fs  e4 cs fs2 |
  b2 r r fs' |
  gs4 b a gs  fs2 e |
  b'2 b,  cs4 e ds cs |
  ds4 b cs ds  e2. ds4 |
  e4 cs ds es  fs2. es4 |
  
  \barNumberCheck 33
  fs4 ds! es fss  gs2. fss4 |
  gs2 es ds ds, |
  gs2 r r1 |
  r1 b |
  cs2 e ds cs |
  b4 r r2 r1 |
  R\breve |
  b1 cs2 e |
  
  \barNumberCheck 41
  ds2 cs b a |
  gs2 fs  e4 fs gs a |
  b1 e,\fermata |
}

leftHand =  {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 2 = 48
  s\breve * 41 |
  \tempo 2 = 46 s2 \tempo 2 = 44 s \tempo 2 = 42 s \tempo 2 = 40 s |
  \tempo 2 = 38 s2 \tempo 2 = 34 s \tempo 2 = 30 s1 |
}

forceBreaks = {
  % page 1
  s\breve * 3 \break
  s\breve * 3 \break
  s\breve * 4 \break
  s\breve * 3 \break
  s\breve * 3 \break
  s\breve * 3 \pageBreak
  
  % page 2
  s\breve * 4 \break
  s\breve * 4 \break
  s\breve * 4 \break
  s\breve * 4 \break
  s\breve * 4 \break
}

fugueNineNotes =
\score {
  \header {
    title = "Fugue 8"
    subtitle = "for 4 voices"
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

%% I decided not to use the articulate script on this piece because it puts
%% too much space between the notes, where it should be legato.

% \include "articulate.ly"

fugueNineMidi =
\book {
  \bookOutputName "fugue-9-bwv-878"
  \score {
    \keepWithTag midi
    % \articulate <<
    <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
