%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveNoteA = \once {
  \override NoteHead.X-extent = #'(0 . 0.9)
  \override Stem.X-extent = #'(0 . 0)
  \override Flag.X-extent = #'(0 . 0)
}

beamPositionsA = \once \override Beam.positions = #'(-3.5 . -3.5)
beamPositionsB = \once \override Beam.positions = #'(-6 . -6)
beamPositionsC = \once \override Beam.positions = #'(5.5 . 5.5)
beamPositionsD = \once \override Beam.positions = #'(7 . 7)
beamPositionsE = \once \override Beam.positions = #'(4.5 . 4.5)
beamPositionsF = \once \override Beam.positions = #'(-6.5 . -6.5)

%%% Music %%%

global = {
  \time 12/16
  \key cs \minor
  \beamTwelveSixteen
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  R2. |
  r4. gs'16 fss gs  as gs as |
  ds,16 es fss  gs as b  cs b cs  as ds cs |
  \voiceOne b16 as b  gs cs b  a gs a  fs! b a |
  gs8. fs4. e8. |
  ds8. ds' gs, a!~ |
  a8. gs4. fs8.~ |
  fs16 gs a  gs a fs  e4. |
  
  \barNumberCheck 9
  ds8. d'\rest  gs,16 fs gs  e a gs |
  fs16 e fs  ds gs fs  es ds cs  fs8.~ |
  fs8. e!4.  ds16 cs b |
  \oneVoice cs4. b |
  a16 gs a  fs b a  gs b e~  e ds cs |
  b16 e gs~  gs fs e  \voiceOne ds8. es |
  fs8. r as bs |
  cs16 bs cs  ds cs ds  gs, as bs  cs ds e |
  
  \barNumberCheck 17
  fs16 e fs  ds gs fs  e ds e  cs b! cs |
  as'8. ds, es fss |
  gs8. e!4. ds8. |
  e4. ds8. d |
  cs8. ds!16 e fs  b,8. cs16 ds e |
  a,8. b16 cs ds  gs,8.~ gs16 b as |
  b8.~ b16 ds cs  ds8.~ ds16 fs e |
  fs16 gs fs  e fs e  b' as gs  fs e ds |
  
  \barNumberCheck 25
  cs16 ds cs  e b cs  ds e ds  fs cs ds |
  \beamPositionsE e8. es  a,8 r16  r8 fs'16 |
  es8 e16  ds!8 d16  cs8 fs16  es8 e16 |
  ds!8 es16 fs4. e8.~ |
  e8. ds~  ds8 cs16  bs8 b16 |
  as8 a16  fs' e! fs  bs, cs ds gs,8. |
  as8. bs cs a~ |
  a8. gs4. fs8. |
  
  \barNumberCheck 33
  gs16 ds gs~  gs fs e  ds fs a!~ a gs fs |
  e8. fs \oneVoice gs8 r16 r8. |
  fs'4. es8. e |
  \voiceOne ds8. gs cs, fs~ |
  fs8. e ds e~ |
  e8. ds~  ds16 cs b  cs ds e!~ |
  e16 ds cs  b cs b  as8. r |
  ds16 cs ds  b e ds  cs b cs  as ds cs |
  
  \barNumberCheck 41
  bs16 as gs  cs4. b8.~ |
  b8. a!16 gs fs gs4. |
  \oneVoice fs4. e16 ds e  cs fs e |
  ds16 fs b~  b a gs  fs es' fs  gs cs, b |
  \voiceOne a8. r16 r fs'  e8. ds!~ |
  ds16 cs ds  e a,! gs  fs ds' e  fs b,! a |
  gs16 gs' a  b e, d cs4.~ |
  cs16 bs cs  ds! cs ds  gs, as bs  cs ds e |
  
  \barNumberCheck 49
  fs16 e fs  ds gs fs  e8. ds |
  cs8.~ cs16 cs e!  ds8. cs |
  b8.~ b16 b d  cs b cs  fs, b a |
  gs16 fs gs  e a gs  fs e fs  gs fs gs |
  a4.~ a8. gs |
  a16 cs b  cs b a  \oneVoice b es, fs  es8 r16 |
  \voiceOne cs'4. bs8. b |
  as8. ds gs, cs~ |
  
  \barNumberCheck 57
  cs8. bs  cs8 r16  a gs a |
  fs16 b a  gs fs gs  e a gs fs8.~ |
  fs16 e ds  e gs cs~  cs bs as  bs ds gs~ |
  gs16 fs e  ds e cs  bs cs ds  gs, gs' fs |
  e16 ds e  fss,8.\prall gs4.~ |
  gs8. fs!~  fs16 e! fs  ds gs fs |
  es8. e~  e16 ds e  cs fs e |
  ds16 cs b e8.~  e16 ds cs  ds es fs |
  
  \barNumberCheck 65
  gs4.~  gs16 fs es  fs a cs |
  \oneVoice fs4. es8. e |
  \voiceOne ds8. gs cs,4.~ |
  cs16 bs as  bs as gs  gs'8. fss |
  fs!8. es e  ds8[ cs16] |
  bs8 gs16 cs4. bs8. |
  cs8. r r4. |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 3 |
  \voiceFour R2. |
  cs'16 bs cs  ds cs ds  gs, as bs  cs ds e |
  fs16 e fs  ds gs fs  e ds e  cs fs e |
  ds16 cs ds  b e ds  cs ds e  ds e cs |
  bs4.~ bs8. cs~ |
  
  \barNumberCheck 9
  cs8. bs cs4.~ |
  cs8. b4.  a16 gs fs |
  gs4. fs |
  \voiceDown e16 ds e  cs fs e  ds cs b  e8.~ |
  e8. ds e fs |
  gs8. as \voiceUp b4.~ |
  b16 a! b  cs ds e  fs e fs  ds gs fs |
  e8. r r4. |
  
  \barNumberCheck 17
  r4. gs16 fss gs  as gs as |
  \voiceDown ds, es fss  \voiceUp gs as b  cs b cs  as ds cs |
  b16 as b  gs cs b  a gs a  fs b a |
  gs16 fs gs  as gs as  b4.~ |
  b8. a!~ a gs~ |
  gs8. fs~ fs e |
  ds8. gs fs b~ |
  b8 a!16~  \beamPositionsA a8 \voiceDown gs16  fs8. \voiceUp b~ |
  
  \barNumberCheck 25
  b8 as16  gs8 g16  fs8 \voiceDown bs,16  cs8 r16 |
  \voiceUp cs'16 ds cs  b cs b  fs' e d  cs b a |
  gs16 a gs  b fs gs  a b a  cs gs as |
  b8.~ b8[ a!16]  gs8 bs16 cs8. |
  fs,8.~ fs16 e fs  gs8.~ gs16 fs gs |
  \voiceDown cs,16 bs cs  ds cs ds  gs, as bs  \voiceUp cs ds e |
  fs16 e fs  ds gs fs  e ds e  cs fs e |
  ds16 cs ds  b! e ds  cs ds e  ds e cs |
  
  \barNumberCheck 33
  bs8. cs ds bs |
  \beamPositionsB cs16 \voiceDown gs cs~  cs b! a!  gs b d~  d cs b |
  a16 b cs~  cs fs, b~  b as gs as8. |
  b8. \voiceUp b' as a |
  gs8. cs~  cs16 b! as  b cs b |
  as16 b cs  b cs as gs4. |
  fss8. gs4. fss8. |
  gs4.~ gs8. fs!~ |
  
  \barNumberCheck 41
  fs8. e16 ds cs ds4. |
  cs4. \voiceDown b16 a! b  gs cs b |
  as16 gs fs b8.~  b as |
  b8. cs ds es |
  fs16 cs fs~  fs e! d  cs \voiceUp bs' cs  ds gs, fs |
  e8 \voiceDown gs,16  cs8.~ cs16 b cs  ds e fs |
  e16 r r  r8. \voiceUp r16 es fs  gs cs, \voiceDown b |
  a8 \voiceUp a'16  \voiceDown \appoggiatura { \moveNoteA cs,8 } bs8. cs4.~ |
  
  \barNumberCheck 49
  cs8. bs  cs16 \voiceUp e a!~  a fss gs~ |
  gs16 fs! es fs8.~  fs16 ds gs~  gs es fs~ |
  fs16 e! ds e8.~  e ds! |
  d8. cs c b |
  cs!16 d cs  b cs b  e d cs  \beamPositionsF b \voiceDown a gs |
  fs16 a gs  a e fs  gs a gs  b fs gs |
  a8. \voiceUp a'~  a16 gs fs  es fs gs |
  cs,8. \voiceDown bs  \voiceUp gs'16 fs gs  e a gs |
  
  \barNumberCheck 57
  fs16 e fs  ds gs fs  e ds e  \voiceDown cs \voiceUp fs e |
  ds16 cs ds  \voiceDown b \voiceUp e \voiceDown ds  cs8.~  cs16 bs as |
  bs8. cs ds fs |
  e16 ds cs  \voiceUp fss8.\prall  gs8 r16 r8. |
  \voiceDown gs,16 fss gs  as gs as  ds, es fss  gs as b |
  \voiceUp cs16 b cs  as ds cs  bs8. b~ |
  b16 as b  gs cs b  as8. a~ |
  a8.  \voiceDown gs16 fs e  \beamPositionsC fs gs \voiceUp as b8.~ |
  
  \barNumberCheck 65
  b16 cs d  cs d b  a!8 r16 r8. |
  \voiceDown cs16 bs cs  ds cs ds  gs, as bs  cs ds e |
  fs16 e fs  ds gs fs  \beamPositionsD e \voiceUp ds e  cs a' gs |
  fs4. \voiceDown es8. e |
  ds8. \voiceUp gs \voiceDown cs, \voiceUp fs~ |
  fs8. e8[ ds16]  e a! gs  fs! e ds |
  es8. r r4. |
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
  \mergeDifferentlyDottedOn
  cs16 bs cs  ds cs ds  gs, as bs  cs ds e |
  fs16 e fs  ds gs fs  e ds e  cs8.~ |
  cs8. b as fss' |
  gs,8. e'!4. ds8. |
  e8. bs cs cs'~ |
  cs8. bs cs fs, |
  b!8. e, a4. |
  gs4.~  gs16 fs gs  e a gs |
  
  \barNumberCheck 9
  fs16 e fs  ds gs fs  e ds e  cs fs e |
  ds8. gs cs,4.~ |
  cs16 b cs  gs cs b  as gs fs b8.~ |
  \voiceTwo b8. a!4. gs16 fs e |
  fs8. b e, r |
  r4.  b'16 a! b  cs b cs |
  \oneVoice fs,8. e! ds gs |
  cs16 ds e  fs8.~  fs16 e ds  e fs gs |
  
  \barNumberCheck 17
  a!16 gs fs  gs as bs  \voiceTwo cs4.~ |
  cs8. b! as ds |
  \oneVoice gs,8. cs fs,! b |
  e,16 ds e  fs e fs  b, cs ds  e fs gs |
  a!16 gs a  fs b a  gs fs gs  e a gs |
  fs16 e fs  ds gs fs  e ds e  cs8 r16 |
  gs'16 fs gs  e8 r16  b' as b  gs8 r16 |
  \voiceTwo ds'8. e~ e  ds16 cs b |
  
  \barNumberCheck 25
  fs'8 fs,16  gs8 as16  b8 gs!16  as8 bs16 |
  \oneVoice cs16 b! a!  gs8.\prall  fs r |
  R2. |
  gs16 a gs  fs gs fs  cs' b a  gs fs e |
  ds16 e ds  fs cs ds  e fs e  gs ds es |
  \voiceTwo fs4.~ fs8. e! |
  \oneVoice ds8. gs cs, fs |
  b,8. e a,4.\prall |
  
  \barNumberCheck 33
  gs8. as bs gs |
  \voiceTwo cs8. ds e es |
  fs8. d  cs fs16 e fs |
  b,16 gs' fs  es ds! es  fs gs e  ds e cs |
  \oneVoice bs16 cs ds  e ds cs  gs'8 ds16 gs8. |
  fss8. fs es as |
  ds,8.~ ds16 e! ds  cs b cs  as ds cs |
  b16 as b  gs cs b  as8. ds |
  
  \barNumberCheck 41
  gs,8. r  gs'16 fs gs  ds gs fs |
  \voiceTwo es16 ds cs fs4. e8.~ |
  e8. ds16 cs b  cs8. fs |
  b,8. r16 r b'  a8. gs |
  fs8. gs as bs |
  cs8 r16  r r cs,  ds8 r16  r r ds' |
  e16 e, fs  gs fs gs  a gs fs  es ds es |
  fs4. es8. e |
  
  \barNumberCheck 49
  ds8. gs cs, b! |
  \oneVoice a8. r16 r as  b8. a |
  gs8. r16 r gs'  a gs a  b a b |
  e,8. a ds,! e |
  a,16 b cs  d e d  \voiceTwo cs b a e'8.~ |
  e8. ds d cs~ |
  cs16 bs cs  ds! cs ds  \oneVoice gs, as bs  cs ds es |
  \voiceTwo fs16 e! fs  ds gs fs  e ds e  cs fs e |
  
  \barNumberCheck 57
  ds8. gs cs, fs |
  b!8. e, a ds, |
  gs2.~ |
  gs4.~ gs8 fs!16  e8 ds16 |
  cs4. bs8. b |
  \oneVoice as8. ds gs,8 r16  gs' fs gs |
  cs,8 r16  cs b cs  fs,8 r16  fs' e fs |
  \voiceTwo b,4.~ b8.~  b16 cs d |
  
  \barNumberCheck 65
  \oneVoice es,8. es'  fs8 gs16  \voiceTwo a8.~ |
  a8 gs16 fs8. gs4.~ |
  gs4.~ gs16 fs gs  a! gs a |
  ds,16 e fs  gs as bs  cs bs cs  as ds cs |
  bs16 as bs  gs cs b  a gs a  bs, cs ds |
  \oneVoice e16 ds e  fss, gs as gs4. |
  cs,8. r r4. |
}

tempi = {
  \tempo 8. = 120
  s2. * 69 |
  \tempo 8. = 112 s4. \tempo 8. = 104 s8. \tempo 8. = 96 s |
  \tempo 8. = 30 s8. \tempo 8. = 120 s8. s4. |
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
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 4
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 4 \break
}

fugueFourNotes =
\score {
  \header {
    title = "Fugue 4"
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

fugueFourMidi =
\book {
  \bookOutputName "fugue-4-bwv-873"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
