%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0.75 . 0.75) (0.75 . 1.1) (0 . 1.1) (0 . 0.75)) \etc
tieShapeB = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc

moveMMRestA = \override MultiMeasureRest.staff-position = 5
moveMMRestB = \once \override MultiMeasureRest.staff-position = 6.5
moveMMRestC = \once \override MultiMeasureRest.staff-position = 5
moveMMRestD = \once \override MultiMeasureRest.staff-position = 5
moveMMRestE = \once \override MultiMeasureRest.staff-position = 4
moveMMRestOff = \revert MultiMeasureRest.staff-position

moveRestA = \offset Rest.Y-offset 0 \etc

moveNoteA = \once \override NoteColumn.force-hshift = -0.7
moveNoteB = \once \override NoteColumn.force-hshift = -1
moveNoteC = \once \override NoteColumn.force-hshift = 0
moveNoteD = \once \override NoteColumn.force-hshift = -0.4
moveNoteE = \once \override NoteColumn.force-hshift = -1
moveNoteF = \once \override NoteColumn.force-hshift = 0

beamPositionsA = \once \override Beam.positions = #'(-3.5 . -4)

%%% Music %%%

global = {
  \time 2/2
  \key b \major
}

rightHandUpper = \relative {
  R1 * 8 |
  
  \barNumberCheck 9
  R1 |
  \voiceOne R1 * 3 |
  \moveMMRestB R1 |
  fs'2 as |
  ds2  b |
  gs2 es' |
  
  \barNumberCheck 17
  fs4 es8 ds  cs4 b |
  as8 gs b2 as8 gs |
  fs8 gs a2 gs8 fs |
  e8 b' ds2 cs8 b |
  as8 e' gs2 fs8 e |
  ds1~ |
  ds4 fss gs cs, |
  b1~ |
  
  \barNumberCheck 25
  b8 as b2~ b8 as |
  gs8 b ds2 cs8 b |
  as2 r |
  r4 fs'8 e  ds e fs ds |
  b8 cs ds b  gs as b4~ |
  b8 gs as b cs2~ |
  cs8 fs, gs as b2~ |
  b2 as8 b cs as |
  
  \barNumberCheck 33
  fs4 b'8 as  gs as b gs |
  e8 fs gs e  cs ds e4~ |
  e4 ds8 cs b2~ |
  b4 cs8 b  as4 gs |
  fss4 r r gs8 fss |
  gs4 r r2 |
  R1 |
  \moveMMRestC R1 |
  
  \barNumberCheck 41
  R1 |
  \moveNoteB fs2 as |
  ds2 b |
  gs2 es' |
  fs2~ fs8 es fs gs |
  as2~ as8 as gs fs |
  es4 fss8 gs  fss gs as fss |
  ds2 r |
  
  \barNumberCheck 49
  r4 gs8 fs  e fs gs e |
  cs8 ds e cs  as b cs4~ |
  cs8 as b4~  b4. b8~ |
  b8 gs as4~  as4. a8~ |
  a8 fss gs4~  gs8 bs cs4~ |
  cs4 cs ds2~ |
  ds4 a2 gs8 fs |
  e4 gs cs2~ |
  
  \barNumberCheck 57
  cs4 fs8 e  fs4 ds |
  b4 <gs cs>8 <a ds>  <b e>4 a4 |
  gs4. a8 fs2 |
  e2 r4 b''8 a |
  gs8 a b gs  e fs gs e |
  cs8 ds e2 ds4~ |
  ds4 gs~  gs8 fs gs4 |
  fs1~ |
  
  \barNumberCheck 65
  fs4 e~  e8 ds e4 |
  ds1~ |
  ds4 cs~  cs8 b cs4 |
  b4. b8  e4. e8 |
  ds4. ds8  gs4. gs8 |
  fs4. fs8  b4. b8 |
  \moveNoteE as4. cs,8  a'4. fs8 |
  gs1~ |
  
  \barNumberCheck 73
  gs8 gs fs e  ds e fs ds |
  e1 |
  ds2. cs4 |
  b2~ b8 b e fs! |
  gs2~ gs8 gs fs e |
  ds1~ |
  ds1~ |
  ds8 ds css bs  css ds es fs |
  
  \barNumberCheck 81
  gs2 fs~ |
  fs2~ fs8 fs es ds |
  css2~ css8 as ds4~ |
  ds8 bs css es  gs, b as gs |
  fs1 |
  \moveMMRestD R1 |
  s1 * 2 |
  
  \barNumberCheck 89
  s1 * 3 |
  R1 |
  \moveNoteD b2 ds |
  gs2 e |
  cs2 as' |
  b2 e,~ |
  
  \barNumberCheck 97
  e1~ |
  e8 ds e ds  e4 r |
  ds8 cs ds cs  ds4 r |
  r8 es, d' cs  b cs d b |
  gs8 a b gs  es d' cs b |
  as!2 r8 fs b4~ |
  b4 as8 gs as2 |
  b1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 |
  \voiceThree b2 ds |
  gs2 e |
  cs2 as' |
  b4 as8 gs  fs4 e |
  \voiceFour ds8 cs e2 \staffDown \voiceOne  ds8 cs |
  b8 \voiceUp fs' as2  gs8 fs! |
  es8 b' ds2 cs8 b |
  
  \barNumberCheck 17
  as4 b as gs |
  fs4 es8 ds  cs ds e4~ |
  e4 ds8 cs  b cs ds4 |
  e4. fs8 gs2 |
  as4. b8 cs2~ |
  cs8 cs b as  gs fss gs fss |
  gs8 b as cs  b4 as~ |
  as8 as gs fs  es fs es fs |
  
  \barNumberCheck 25
  gs2 cs,4 fs~ |
  fs2 es |
  fs2 r |
  R1 |
  s1 * 4 |
  
  \barNumberCheck 33
  R1 * 2 |
  b,2 ds |
  gs2 e |
  cs2 as' |
  b2^~ \beamPositionsA b8 b as gs |
  \voiceOne fs2~ fs8 a gs fs |
  es8 fs gs es fs2~ |
  
  \barNumberCheck 41
  fs2 es |
  \voiceFour fs2 \moveRestA r |
  r4 b8 as  gs as b gs |
  es8 fs! gs es  \staffDown \voiceOne css \voiceUp ds es4~ |
  es8 ds \once \omit Accidental es fs gs2~ |
  gs8 fs gs as b2~ |
  b8 b as gs  as b cs4~ |
  cs8 cs b as  gs as b gs |
  
  \barNumberCheck 49
  \voiceDown cs,8 bs cs2 \voiceUp gs'4~ |
  gs4 fss r r8 as |
  ds,4. fs!8  es gs cs,4~ |
  cs4. e!8  ds8 fs b,4~ |
  b4. bs8  e4. es8 |
  fs!4 a8 gs  fs gs a fs |
  ds8 e fs ds  bs cs ds4~ |
  ds4 cs2 e4 |
  
  \barNumberCheck 57
  a2 r4 a-\tieShapeA ~ |
  a4 s2 fs4~ |
  fs8 ds e4~  e8 cs ds4 |
  e8 b' e4~  e8 cs ds4 |
  \voiceDown r4 gs,2 e4~ |
  e4 \voiceUp cs'8 b  as b cs as |
  b2 as~ |
  as8 e'! ds cs!  bs cs ds bs |
  
  \barNumberCheck 65
  gs2 fss4. cs'8~ |
  cs8 cs b as  gs as b gs |
  es4 fss8 gs  as4. as8~ |
  as8 fss gs4~  gs8 gs cs4~ |
  cs8 as b4~  b8 b e4~ |
  e8 cs ds4~  ds8 ds gs4~ |
  \moveNoteF gs8 es fs4-\tieShapeB ~  fs16 gs fs e ds4~ |
  ds8 e fs ds  e bs cs e |
  
  \barNumberCheck 73
  as,2 b!~ |
  b8 cs ds b  cs gs as cs |
  fs,4 b as2~ |
  as4 gs8 fss  gs4. b8 |
  e2~ e8 e ds cs |
  b2~ b8 fss gs as |
  b8 as cs fss, gs2~ |
  gs4 r r2 |
  
  \barNumberCheck 81
  r4 es'2 ds8 cs! |
  b!4 ds gs,2~ |
  gs8 b as gs fs2 |
  es1~ |
  es8 es ds css ds2 |
  \voiceOne d'4\rest fs,8 e!  ds e fs ds |
  b8 cs ds b  gs as b4_~ |
  b8 b as gs  as4 a'~ |
  
  \barNumberCheck 89
  a4 a gs fs~ |
  fs4 e8 ds  e fs gs4~ |
  gs4 gs fs e~ |
  e4 ds8 cs  ds e fs4_~ |
  \voiceThree \moveNoteC fs8 gs fs e  ds4 \voiceFour b'4~ |
  b4 gs2 cs4 |
  fs,8 gs as fs  cs' e ds cs |
  fs8 e ds fs b,2~ |
  
  \barNumberCheck 97
  b8 as gs b  as b cs as |
  fs2~ fs4 r |
  b2~ b4 r |
  r2 r4 es,~ |
  es2 r4 cs~ |
  cs8 gs' fs e  ds4. d8 |
  cs8 ds! e!4~  e8 gs fs e |
  ds1 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree \moveMMRestA R1 * 4 |
  \moveMMRestOff fs2 as |
  ds2 b |
  gs2 es' |
  fs4 es8 ds  cs4 b |
  
  \barNumberCheck 9
  as8 gs b2 as8 gs |
  fs8 gs a2 gs8 fs |
  e8 \voiceUp b' ds2 cs8 b! |
  \voiceDown as8 \voiceUp e' gs2 fs8 e |
  ds4 e ds cs |
  \voiceDown b4 as8 gs fs2_~ |
  fs4. fss8  gs as b gs |
  cs4. b8  as gs as4 |
  
  \barNumberCheck 17
  ds4 ds,2 es4 |
  fs4 gs as fs |
  b4 fs8 e  fs4 b~ |
  b4. as!8  b gs as b |
  cs2~ cs8 cs fs4~ |
  fs4 fs8 e  ds4 cs |
  b4 cs ds e |
  ds4. cs8  b4 d |
  
  \barNumberCheck 25
  cs4. gs8  as b cs4~ |
  cs4 b8 as  gs fs gs4 |
  fs2 as |
  ds2 b |
  gs2 es' |
  fs2~ fs8 e! ds cs |
  \voiceUp ds2. ds4 |
  cs8 ds e2 \voiceDown as,4 |
  
  \barNumberCheck 33
  b1~ |
  b2~ b8 as gs as |
  b8 fs b as  gs as b gs |
  e4 r r2 |
  \staffUp \voiceTwo r4 e' ds cs |
  ds2 e |
  ds8 cs b cs d2 |
  cs2~ cs8 b as b |
  
  \barNumberCheck 41
  gs2~ gs8 gs as b |
  \moveNoteA cs2~ cs8 e! \voiceDown ds cs |
  b4 r r2 |
  r4 b as4. gs8 |
  fs4 r r2 |
  R1 * 3 |
  
  \barNumberCheck 49
  s1 * 3 |
  \moveMMRestE R1 |
  e2 gs |
  cs2 a |
  fs2 ds' |
  e2. cs4 |
  
  \barNumberCheck 57
  \staffUp \voiceTwo fs2 s4 fs |
  ds4 e r cs |
  \voiceDown b2~ b4. a8 |
  gs2 b |
  \voiceTwo e2 cs |
  as2 fss' |
  \oneVoice gs8 fs! es ds  css ds es css |
  ds2~ ds8 e! fs ds |
  
  \barNumberCheck 65
  e8 ds cs b!  as b cs as |
  b2~ b8 cs ds b |
  cs8 b as gs  fss gs as fss |
  gs4~ gs16 fs! e! ds  cs8 b' as fs |
  b4~ b16 as gs fs  e8 ds' cs as |
  ds4~ ds16 cs b as  gs8 fs' es cs |
  \clef treble fs8 gs as fs  ds e! fs ds |
  bs8 cs ds bs  cs ds e4~ |
  
  \barNumberCheck 73
  e8 e ds cs  b! cs ds b |
  \clef bass \voiceThree gs8 as b gs  as b cs4~ |
  cs8 b as gs  fss gs as fss |
  gs8 b cs ds  e4 b~ |
  b8 gs as b  cs4 fs~ |
  fs8 gs fs e ds2~ |
  ds8 e ds cs b2~ |
  b4 r r2 |
  
  \barNumberCheck 81
  s1 * 3 |
  R1 |
  fs2 as |
  \voiceUp ds2 b |
  gs2 es' |
  fs2-\tieShapeC ^~  fs8 cs fs4~ |
  
  \barNumberCheck 89
  fs4 bs,8 fs'  e4 ds~ |
  ds4 cs8 bs  cs ds e4~ |
  e4 as,8 e'  ds4 cs~ |
  cs4 b8 as  b cs ds4~ |
  ds8 e ds \voiceDown cs  b cs b a |
  gs8 b e ds  cs ds e cs |
  as!8 b cs as  fs gs as4~ |
  as8 fs b as gs2~ |
  
  \barNumberCheck 97
  gs8 fs e gs cs2~ |
  cs8 b cs b  cs4 r |
  fs8 e fs e  fs4 r |
  r4 b, d2~ |
  d2 r4 gs, |
  fs4 r r2 |
  r4 r8 cs fs2~ |
  fs1 |
}

leftHandLower = \relative {
  \voiceTwo b,2 ds |
  gs2 e |
  cs2 as' |
  b4 as8 gs  fs4 e |
  ds8 cs e2 ds8 cs |
  b8 fs' as2 gs8 fs |
  es8 b' ds2 cs8 b |
  as4 b as gs |
  
  \barNumberCheck 9
  fs4 es8 ds  cs ds e4~ |
  e4 ds8 cs b2~ |
  b4. bs8  cs ds e cs |
  fs4. e8  ds cs ds4 |
  gs4 gs,2 as4 |
  b4r r2 |
  R1 * 2 |
  
  \barNumberCheck 17
  R1 * 2 |
  b2 ds |
  gs2 e |
  cs2 as' |
  b4 ds8 cs  b4 as |
  gs2~ gs8 fss gs fss |
  gs4 b8 as  gs4 fs |
  
  \barNumberCheck 25
  es2 fs |
  cs1 |
  fs,2 r |
  R1 * 3 |
  \oneVoice r4 b'8 as  gs as b gs |
  \voiceTwo e8 fs gs e  cs ds e4~ |
  
  \barNumberCheck 33
  e8 cs ds4  e b |
  cs8 ds e cs fs2 |
  b,4 r r2 |
  r8 b e ds  cs ds e cs |
  \oneVoice as8 b cs as  fss gs as4~ |
  as8 gs as b cs2~ |
  cs8 fs, gs as b2~ |
  b8 as! b cs  ds!4 cs |
  
  \barNumberCheck 41
  b8 gs as b  cs4 b~ |
  b8 b as gs fs4 \voiceTwo r |
  r8 ds' es fss  gs fss gs4~ | 
  gs4 gs2 css,4 |
  ds4 r r2 |
  R1 * 2 |
  gs,2 b |
  
  \barNumberCheck 49
  e2 cs |
  \oneVoice as2 fss' |
  gs2~ gs8 fs es gs |
  \voiceTwo fs2~ fs8 e ds fs |
  e4. ds8  cs ds e cs |
  a8 cs fs2 bs,4~ |
  bs8 cs ds \once \omit Accidental bs  gs as! bs gs |
  cs8 ds e cs  a b! cs a |
  
  \barNumberCheck 57
  \oneVoice fs8 gs a fs  ds e fs ds |
  gs8 fs e fs  gs fs gs a |
  \voiceTwo b1 |
  e2 r |
  s1 * 4 |
  
  \barNumberCheck 65
  s1 * 8 |
  
  \barNumberCheck 73
  s1 |
  R1 |
  b2 ds |
  gs2 e |
  cs2 as' |
  b2~ b8 cs b as |
  gs2~ gs8 as gs fs! |
  es2~ es8 fs es ds |
  
  \barNumberCheck 81
  \oneVoice css8 as bs css  ds es fs ds |
  gs8 fs gs as  b as b gs
  as2~ as4. gss8 |
  \voiceTwo as2 as, |
  ds2~ ds8 e! ds cs! |
  \oneVoice b8 as b4~  b8 cs ds4~ |
  ds8 cs b ds  cs b as gs |
  fs8 cs' fs4~  fs8 e! ds cs |
  
  \barNumberCheck 89
  bs8 cs ds bs  gs as! bs gs |
  cs8 ds e4~  e8 ds cs b! |
  as8 b cs as  fs gs as fs |
  b8 cs ds4~  ds8 cs b ds |
  \voiceTwo gs2~ gs8 a gs fs |
  e1~ |
  e2. fs8 e |
  ds2~ ds8 cs b ds |
  
  \barNumberCheck 97
  cs2~ cs8 ds e cs |
  as'2~ as8 gs fs gs |
  a2~ a8 gs fs a |
  gs1 |
  b2 r4 es, |
  fs8 e! ds! cs  b cs ds es, |
  fs1 |
  b1\fermata |
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
  \tempo 2 = 52
  s1 * 101 |
  s2 \tempo 2 = 48 s |
  \tempo 2 = 44 s2 \tempo 2 = 40 s4 \tempo 2 = 36 s |
  \tempo 2 = 30 s1 |
}

forceBreaks = {
  % page 1
  s1 * 7 \break
  s1 * 6 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 6 \break
  s1 * 5 \pageBreak
  
  % page 2
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 3
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
}

fugueTwentyThreeNotes =
\score {
  \header {
    title = "Fugue 23"
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

fugueTwentyThreeMidi =
\book {
  \bookOutputName "fugue-23-bwv-892"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
