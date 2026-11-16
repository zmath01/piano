%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0) (0 . -1) (0 . -2) (0 . 0)) \etc
tieShapeB = \shape #'((0.5 . 0.5) (0 . 0.5) (0 . 0.5) (-0.75 . 0.5)) \etc
tieShapeC = \shape #'((0 . 2) (0 . 2) (0 . 2) (0.75 . 2)) \etc

moveNoteA = \once \override NoteColumn.force-hshift = -1
moveNoteB = \once \override NoteColumn.force-hshift = 0
moveNoteC = \once \override NoteColumn.force-hshift = -0.5

moveDotA = \once \override Dots.extra-offset = #'(-0.6 . 0)

moveMMRestA = \once {
  \override MultiMeasureRest.staff-position = -7.5
  \override MultiMeasureRest.X-offset = -1
}
moveMMRestB = \once \override MultiMeasureRest.staff-position = -8
moveMMRestC = \once \override MultiMeasureRest.staff-position = -8

beamPositionsA = \once \override Beam.positions = #'(3.5 . 3.5)
beamPositionsB = \once \override Beam.positions = #'(3.5 . 3.5)
beamPositionsC = \once \override Beam.positions = #'(1.5 . 2.5)

%%% Music %%%

global = {
  \time 4/4
  \key ds \minor
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  s1 * 7 |
  \voiceOne R1 |
  
  \barNumberCheck 9
  r8 as' as as  gss as bs4~ |
  bs8 as ds4~  ds8 cs16 bs  es8 ds |
  cs4~ cs8 ds16 e  as,8 ds4 cs8~ |
  cs8 b as4~  as8 gs gs'4~ |
  gs8 fs!4 es16 ds  css8 es fs css |
  ds16 cs! b as  gs8 as  b as gs4~ |
  gs8 fs es e  ds4~ ds8 cs16 ds |
  e4. ds16 es  fs4. es16 fss |
  
  \barNumberCheck 17
  gs8 r r4 r2 |
  s1* 3 |
  r8 ds' ds ds  css ds es4~ |
  es8 ds gs4~  gs8 fs16 es  as8 gs |
  fs8 as ds,4~  ds4. css8 |
  \once \override Stem.length = 7 ds8 r b'4\rest r2 |
  
  \barNumberCheck 25
  s1 * 2 |
  r2 r8 \beamPositionsA cs, cs cs |
  bs8 cs ds4~  ds8 cs fs4~ |
  fs8 e16 ds  gs8 fs  es cs fs4~ |
  fs4 es  \moveDotA fs4. e8 |
  ds4. cs16 b  as4 as'~ | 
  as8 gs16 fss gs4~  gs4. fss 8|
  
  \barNumberCheck 33
  gs4. fs!8 \moveNoteC es2-\tieShapeC ~ |
  es8 ds16 cs!  b!8 as  gss4 \moveNoteA as~ |
  as4 gss  as4. gs8 |
  fss8 cs' b! as~  as gs cs4~ |
  cs8 b16 as  b8 e  css as gs'4~ |
  gs8 fs16 es  fs8 b  gss es  as16 gs fss es |
  ds4~ ds16 fs! es ds  css es ds cs  bs ds cs b |
  as4~ as8 gs~  gs16 es fs as  ds as fs'8 |
  
  \barNumberCheck 41
  es8 r r b'!  as r r gs |
  css,8 r r es  as, ds16 css  ds8 gs, |
  fs4 es  ds8 ds' ds ds |
  css8 ds es4~  es8 ds gs4~ |
  gs8 fs16 es  as8 gs  fs css! 
    << 
      { ds4~ | ds4 css } 
      \new Voice { \voiceThree s8 b! | as2 } 
    >> <fss as ds>2 |
  \bar "|."
}

rightHandLower = \relative {
  r8 ds' ds ds  css ds es4~ |
  es8 ds  gs4. fs16 es  as8 gs |
  fs8 es  ds cs16 ds  es4. ds16 es |
  fs4. es16 fss  gs!4. fss16 gss |
  as8 bs cs4~  cs8 fss, gs! as |
  ds,8 gs4 fss8  b4. as16 gs |
  fs!8 gs as b  es,16 fs es ds  css ds es fs |
  \voiceFour gs16 as gs fs es4~  es8 fs16 gs  fs8 es |
  
  \barNumberCheck 9
  ds8 css  ds16 es fs8  es4. fs16 es |
  ds8 cs r cs'  bs as  gs16 as bs8~ |
  bs8 as16 gss  as8 gs  fss as  ds,16 es! fss gs |
  as8 gs r4 s2 |
  s1 * 4 |
  
  \barNumberCheck 17
  r8 gs gs gs  es! fs! gs4~ |
  \voiceOne gs8 fs b4~  b8 as16 gs  cs8 b |
  as8 gs16 fs  es fss gs8~  gs8 fss16 gs as4~ |
  as8 gs16 fss  gs8 as16 b cs2~ |
  \voiceFour cs8 b16 as  b gs fs! es!  fs8. fs16  es fs gs8~ |
  gs8 fs r fs'  es r r es |
  ds8 cs!~  cs b!16 as  gs ds gs8  gs gs |
  \voiceThree fss8 gs as4~  as8 gs cs4~ |
  
  \barNumberCheck 25
  cs8 b16 as  ds8 cs  b as gs4~ |
  gs8 fs es4~  es8 as16 gs  fs8 e |
  \voiceFour ds8 ds'~  ds16 b as gs  as4. a8 |
  gs4 a8 gs16 fs  e8 fs16 gs a4 |
  gs4. a16 b  cs4. \voiceThree ds8 |
  \beamPositionsB cs8 b! b b  \beamPositionsC as! b \voiceFour cs4~ |
  cs8 b e4-\tieShapeA ~  e8 ds16 cs  fs8 e |
  ds4 r8 gs,  as b cs4~ |
  
  \barNumberCheck 33
  cs8 b16 as! \voiceThree b4-\tieShapeB _~  \moveNoteB b8 as16 gs  as4~ |
  \voiceFour <fs as>8. <es gs>16  <ds fs>8 <cs es>  \voiceThree ds16 es fs8
    \voiceTwo es8 fs16 dss |
  \voiceFour es4. ds!8  cs ds es e |
  ds4. cs8  \voiceDown b4 as8 \voiceUp as' |
  ds,8 gs16 fss gs4~  gs8  fs \voiceDown es! \voiceUp es' |
  as,8 ds16 css ds4~  ds8 cs16 bs cs4~ |
  cs16 cs b! as b4  as4 gs~ |
  gs16 gs fs es  ds fs es ds  css8 \voiceDown ds \voiceUp r gss |
  
  \barNumberCheck 41
  as8 r r css  fs r r b, |
  as8 r r es  fs fs16 es  ds8 es~ |
  es8 ds4 css8  ds fs16 es  fs as gs fs |
  es16 gs fs as  b as b8~  b8 as  r16 ds css! bs |
  css8 ds16 es  fs8 css  ds gs,  fs16( es) fs8~ |
  fs8 gs!16 fs  es fs gs8  s2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  R1 * 2 |
  r8 as as as  gss as bs4~ |
  bs8 as  ds4~ ds8 cs16 bs  es8 ds |
  cs8 bs as as'  ds,4. cs8 |
  b!4 as  gs8 gs' css,4 |
  \voiceUp ds8 \voiceDown es, fs gs  as4. gs16 as |
  b4. as16 bs  cs!4. bs16 css |
  
  \barNumberCheck 9
  ds8 gs,  fs16 gs as bs  cs8 bs16 as gss4~ |
  gss8 as16 \once \omit Accidental gss  as8 r  r ds bs es |
  es4 r  r8 cs b! cs |
  fss,8 e'4 ds16 css  ds4. \voiceUp b'8 |
  as8 \voiceDown ds, \voiceUp gs4~  gs8 \voiceDown css, ds es |
  as,8 ds4 \voiceUp css8  fs4. es16 ds |
  css8 ds4 cs8~  cs16 b as gs  fss gs as b |
  cs16 ds cs b  as gs \voiceDown fs! es!  ds4 r8 as' |
  
  \barNumberCheck 17
  ds16 e ds cs  b cs ds8~  ds16 cs b as  gs as b gs |
  as8 \voiceUp ds \voiceDown gs, \voiceUp gs' cs,2~ |
  cs8 cs cs cs  as b cs4~ |
  cs8 b e4~  e8 ds16 cs  fs8 e |
  \voiceDown ds8 fss, gs gss  as4. gs16 as |
  b!4. as16 bs  cs!4. bs16 css |
  ds4~ ds16 e ds cs  b4. as16 gs |
  as8 \voiceUp e' e e  ds es fss gs |
  
  \barNumberCheck 25
  as8 gs fss4  gs8 fs4 es16 ds |
  css8 ds4 css16 bs  css4 \voiceDown cs!4~ |
  cs8 b!16 as  b8 e  cs as ds e! |
  ds8 cs4 bs8  cs4. ds8 |
  bs8 cs d4  cs8 ds16 \voiceUp es  fs gs a8~ |
  a8 gs16 fs gs4  fs8 r g,4\rest |
  s1 |
  \voiceDown r8 ds' ds ds  cs ds e4~ |
  
  \barNumberCheck 33
  e8 ds \voiceUp gs4~  gs8 fs16 es!  as8 gs |
  s2 bs,4 \voiceFour cs |
  \voiceDown bs8 cs16 as bs4  as8 bs cs4~ |
  \voiceTwo cs8 fss, gs as  ds,8 gs4 fss8 |
  b4. as16 gs  as8 ds4 css8 |
  \clef treble \voiceThree fs4~ fs8 es16 ds  es8 as4 gs8 |
  fss8 ds gs4~  gs8 fs~  fs16 fs es ds |
  \clef bass css16 es ds cs  bs8 b  as4 r8 bs |
  
  \barNumberCheck 41
  es8 r r es  as, r r ds |
  es8 r r css  ds as16 gs  as8 b |  
  as4~  as8. gs16  fs8 as as as |
  b8 as gs4~  gs8 as es4~ |
  es8 fs16 gs  ds8 es  fs b as ds,16 es |
  fs8 es16 ds  as'8 \staffUp \voiceTwo es' ds2 |
}

leftHandLower = \relative {
  s1 * 6 |
  \voiceTwo r8 ds ds ds  css ds es4~ |
  es8 ds gs4~  gs8 fs16 es  as8 gs |
  
  \barNumberCheck 9
  fs8 es  ds cs!16 ds  es4. ds16 es |
  fs4. es16 fss  gs4. fss16 gss |
  as8 bs cs4~  cs8 fss, gs as |
  ds,8 gs4 fss8  b4. as16 gs |
  ds'8 cs b4  as4. gs8 |
  fs4 es  ds8 cs b b' |
  \oneVoice as8 as, as as  fss gs as4~ |
  as8 gs \voiceTwo cs4~  cs8 b16 as  ds8 cs |
  
  \barNumberCheck 17
  b8. as16  gs as b gs  cs8 ds es![ cs] |
  fs4. es16 ds  es gs cs, ds  es fs gs es |
  \oneVoice fs8 es16 ds  \stemDown cs ds e cs  ds4~ \stemNeutral ds16 ds, es!
    fss |
  gs4~ gs8 fss16 gs  as4~ as8 gs16 as |
  \voiceTwo b2 as8 bs  css8 bs16 css |
  ds8 css16 ds es4~  es8 ds16 es fs4~ |
  fs8 es16 fss gs4~  gs8 fs e4 |
  ds4 \oneVoice cs!  b4. as16 gs |
  
  \barNumberCheck 25
  fss8 ds' ds ds  css ds es4~ |
  es8 ds gs4~  gs8 fs16 es  \voiceTwo as8 gs |
  fss8 ds gs4~  gs8 fss16 es!  fss8 fs~ |
  fs8 e ds gs  a4. gs16 fs |
  gs8 as! b4~  b8 as16 gs  as8 bs |
  \oneVoice cs4 cs,  fs16 es fs gs  as fs es as |
  b16 cs ds b  cs b as gs  fs gs fs e  ds cs b as |
  \voiceTwo b8 b'16 as  b8 cs16 b  as4 a |
  
  \barNumberCheck 33
  gs4~ gs16 fs es! ds  \oneVoice css4. bs16 as |
  ds8 ds, ds' es  fs es16 ds  \voiceTwo cs bs as cs |
  es,2 as8 r r4 |
  \moveMMRestA R1 |
  \moveMMRestB R1 |
  \moveMMRestC R1 |
  R1 |
  r2 r8 ds ds ds |
  
  \barNumberCheck 41
  css8 ds es4~  es8 ds gs!4~ |
  gs8 fs16 es  as8 gs  fs ds16 es  fs8 gs |
  as4 as, ds2~ |
  ds8 ds16 css  ds fs es ds  css8 fs  r16 b, as gs |
  as8. gs16  fs8 as  ds es fs gss, |
  as2 \oneVoice ds, |
}

leftHand =  {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 4 = 44
  s1 * 45 |
  \tempo 4 = 40 s4 \tempo 4 = 36 s \tempo 4 = 28 s2 |
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \pageBreak
  
  % page 3
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 3 \break
}

fugueEightNotes =
\score {
  \header {
    title = "Fugue 8"
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

fugueEightMidi =
\book {
  \bookOutputName "fugue-8-bwv-877"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
