%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((-0.5 . 0.25) (-0.5 . 0.5) (0.5 . 0.5) (0.5 . 0.25)) \etc

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}

moveNoteA = \once \override Score.NoteColumn.X-offset = -3

stemLengthA = \once \override Stem.length = 7

%%% Music %%%

global = {
  \time 6/8
  \key gs \minor
  \set Score.extraNatural = ##f
  \mergeDifferentlyDottedOn
}

rightHandUpper = \relative {
  \voiceOne gs'8 as b  as ds ds, |
  gs8 b as  b as gs |
  as8 b cs  b e gs, |
  as cs b  cs b as |
  b4 bs8 cs4.~ |
  cs4. bs |
  cs4 css8 ds4.~ |
  ds4. css |
  
  \barNumberCheck 9
  ds8 cs!4~  cs8 as bs |
  cs8 b!4~  b8 gs as |
  b4.~ b8 as cs |
  fss,8 ds' gs, cs4.~ |
  cs8 e ds  cs b as |
  b4 ds8 gs4.~ |
  gs4 fss8  gs4 b8 |
  cs,4 ds8  e ds cs |
  
  \barNumberCheck 17
  ds4. \moveDottedNoteA cs |
  b4. \moveDottedNoteA as |
  gs8 r r  r4 r8 |
  r8 r ds'  ds4 css8 |
  ds4 r8  r4 r8 |
  r8 r e  ds4 cs8 |
  b4 gs8  as4 bs8 |
  cs8 gs cs~  cs as bs |
  
  \barNumberCheck 25
  e4. ds~ |
  ds8 cs a'~  a fss gs |
  cs,2. |
  b2. |
  as4. as4 css8 |
  ds8 es fs~  fs es gs |
  css,8 es as,  ds4.~ |
  ds4. css |
  
  \barNumberCheck 33
  ds4 r8 gs,4 r8 |
  fs4 r8  r4 r8 |
  R2. * 2 |
  r4 r8  r r e |
  fs8 a gs  a gs fs |
  e8 gs16 fs gs as! b4.~ |
  b4. as |
  
  \barNumberCheck 41
  b4. cs |
  ds4. e!8 ds cs |
  b8 ds fs~  fs ds es~ |
  es8 as, ds~  ds bs css |
  \oneVoice ds8 es fs  es as as, |
  ds8 fs es  fs es ds |
  es8 fs gs  fs b ds, |
  \voiceOne es8 gs fs  gs fs es |
  
  \barNumberCheck 49
  fs4 fss8  gs4 fs8 |
  e4 es8  fs4 e8 |
  ds4. cs~ |
  cs4 b8~  b as cs |
  fss,4 as8~  as ds, gs~ |
  gs4 cs8 \moveDottedNoteA fss,4. |
  gs4 ds8  cs b as |
  b4 r8  r r b' |
  
  \barNumberCheck 57
  cs8 ds e  ds cs b |
  cs8 as4~  as ds8 |
  ds2.~ |
  ds4. \moveDottedNoteA css |
  ds4 ds8  css4 cs8 |
  bs4 b8  as4 bs8 |
  cs4 css8 ds4.~ |
  ds4. css\prall |
  
  \barNumberCheck 65
  ds4 cs!8  b4 as8 |
  gs4 cs8~  cs as bs |
  cs8 gs as  b! cs b |
  as8 ds cs  b e ds |
  cs8 ds e  as, ds cs |
  b8 cs ds  gs, cs ds |
  e4. ds |
  cs4. b8 gs'4 |
  
  \barNumberCheck 73
  fs8 e ds~  ds cs16 bs cs8 |
  ds2.~ |
  ds8 gs, cs~  cs b16 as b8 |
  as2.~ |
  as4 gs8 cs4. |
  b4. as~ |
  \oneVoice as8 gs gs'  fss4 fs8 |
  es4 e8  ds4 es8 |
  
  \barNumberCheck 81
  fs4 fss8 gs4.~ |
  gs4. fss~ |
  fss8 es fss  gs4 gss8 |
  \voiceOne as2.~ |
  as8 fs gs as4.~ |
  as8 gs4~  gs8 es fs! |
  es4 fs8 gs4.~ |
  gs8 fs4~  fs8 ds e! |
  
  \barNumberCheck 89
  ds4 cs8 b4. |
  as4 bs8  cs16 ds e8 ds |
  gs,4. cs~ |
  cs8 b cs  ds16 cs b as b e! |
  as,4 r8  e'4 as8 |
  ds,4 gs8  \moveDottedNoteA cs,8. e16 ds cs |
  b4.~ b8 as16 gs fss es |
  ds8 ds' gs,~  gs fss cs' |
  
  \barNumberCheck 97
  b4 r8  r4 r8 |
  R2. * 5 |
  ds8 es fs  \oneVoice es as as, |
  ds8 fs! es  fs es ds |
  
  \barNumberCheck 105
  es8 fs gs  fs b ds, |
  es8 gs fs  gs fs es |
  \voiceOne fs4. es4 e8 |
  ds4. css4 cs8 |
  b8 ds gs~  gs fs!16 e! fs8~ |
  fs8 b, e~  e ds16 cs ds8 |
  cs8 ds e  ds4 d8 |
  cs4 c8  b4 cs8 |
  
  \barNumberCheck 113
  d4 ds8 e4.~ |
  e4. ds |
  e4 gs,8  as!4 bs8 |
  cs4 a8  fs4 gs8 |
  e4 r8  r4 r8 |
  r4 r8  r r b'~ |
  b8 as bs cs4.~ |
  cs8 bs css ds4.~ |
  
  \barNumberCheck 121
  ds8 css ds es4.~ |
  es8 ds16 css ds8~  ds cs16 b! cs8~ |
  \oneVoice cs8 ds cs  b e! ds |
  cs8 ds e  as, ds cs |
  b4 r8  r4 r8 |
  \voiceOne r8 r cs,  fs4 gs8~ |
  gs8 fs e!  ds gs b |
  es,4. as~ |
  
  \barNumberCheck 129
  as4 gs8~  gs4 fss8 |
  gs4 r8  r ds' cs |
  \oneVoice ds8 cs b  cs b as |
  b4.~ b8 as gs |
  as4.~ as8 gs fss |
  gs4.~ gs8 es fss |
  \voiceOne gs8 as b  as ds ds, |
  gs8 b as  b as gs |
  
  \barNumberCheck 137
  as8 b cs  b e! gs, |
  as8 cs b  cs b as |
  b8 cs ds~  ds cs b |
  as es' as, as4.~ |
  as8 e'! ds ds4.~ |
  ds8 cs b  \appoggiatura { ds } cs b as |
  gs2. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  R2. * 4 |
  ds'8 es fs  es as as, |
  ds8 fs es  fs es ds |
  es8 fs gs  fs b! ds, |
  es8 gs fs  gs fs es |
  
  \barNumberCheck 9
  fs4 fss8  gs4 fs8 |
  e4 es8  fs4 e8 |
  ds8 gs gs, cs4.~ |
  cs4 b8  as gs' fss |
  gs4.~ gs4 fss8 |
  gs4 r8  r r b |
  cs8 ds e  ds cs b~ |
  b8 as gs fs!4.~ |
  
  \barNumberCheck 17
  fs8 fs b~  b gs as~ |
  as8 ds, \moveNoteA gs~  gs es fss |
  gs8 as b  as ds ds, |
  gs8 b as  b as gs |
  as8 b cs!  b e gs, |
  as8 cs b  cs b as |
  b8 \voiceDown b, e~  e cs ds |
  gs,4. r4 r8 |
  
  \barNumberCheck 25
  \voiceUp r8 r a'  fs4 gs8 |
  \voiceDown e4. ds |
  \voiceUp es8 fss gs  as4.~ |
  as8 gs fs!  es gs ds |
  css8 ds es  fs4.~ |
  fs8 gs as  gs4.~ |
  gs4. fs8 as ds, |
  es8 fs gs~  gs as es |
  
  \barNumberCheck 33
  fs8 es ds~  ds css es~ |
  es8 ds css  ds4 b'8 |
  cs,!4 b'8  as gs fs |
  gs8 b, as  b gs' b, |
  as4 bs8 cs4.~ |
  cs4. bs |
  cs4 r8  r8 ds gs |
  cs,8 e ds  e ds cs |
  
  \barNumberCheck 41
  ds4 gs8  es4 fss8 |
  b4. as |
  \voiceDown ds,4 css8  ds4 \voiceUp gs8 |
  fs4. es |
  \voiceDown ds8 css bs  css8 fs4~ |
  fs8 ds css  ds gs4~ |
  gs4 es8  cs ds fs |
  \voiceUp b4. as~ |
  
  \barNumberCheck 49
  as8 cs!4~  cs8 as bs |
  cs8 b!4~  b8 gs as |
  b4. as~ |
  as8 ds, gs e4.~ |
  e8 ds cs b4. |
  as8 cs e~  e ds cs |
  b8 as gs~  gs4 fss8 |
  gs4 ds'8  gs4.~ |
  
  \barNumberCheck 57
  gs4 fss8 gs4.~ |
  gs4 gs8  fss4 r8 |
  r8 r as  b4 fss8 |
  gs8 as b~  b as gs~ |
  gs8 fss r  r4 r8 |
  R2. * 3 |
  
  \barNumberCheck 65
  R2. |
  r8 r gs  fss4 fs8 |
  es4 e8  ds4 es8 |
  fs!4 fss8 gs4.~ |
  gs4. fss\prall |
  gs4 fs!8  e4 ds8 |
  cs8 e a~  a gs16 fs gs8~ |
  gs8 \voiceDown cs, fs~  fs e16 ds e8 |
  
  \barNumberCheck 73
  ds8 gs fs  e \voiceUp a gs |
  fs8 gs a  ds, gs fs |
  e2.~ |
  e8 cs fs~  fs e16 ds e8 |
  ds4. e |
  ds4. cs |
  \voiceDown b4 cs8~  cs as bs |
  cs4.~ cs8 b!4~ |
  
  \barNumberCheck 81
  b8 as4  r8 ds, fs!~ |
  fs8 es b'!~  b as16 gs as fss |
  gs4 bs8  es4 r8 |
  \voiceUp r8 as bs  cs4 css8 |
  ds4.~ ds8 ds cs! |
  bs4 cs8 ds4.~ |
  ds8 cs4~  cs8 as b! |
  as4 b8 cs4.~ |
  
  \barNumberCheck 89
  cs8 b as~  as fs gs~ |
  gs8 fs4~ fs4.~ |
  fs8 es fss  gs16 as b!8 as |
  ds,4. gs~  |
  gs8 fss ds'~  ds cs4~ |
  cs8 b4~  b8 as4~ |
  as8 \voiceDown gs16 fs e ds cs4.~ |
  cs4 b8  as16 gs as8 ds, |
  
  \barNumberCheck 97
  gs4 \voiceUp gs'8 fss4 fs8 |
  es4 e8  ds4 es8 |
  fs4 fss8 gs4.~ |
  gs4. fss |
  gs8 b ds,  e ds cs |
  b16 ds gs8 fs!  es as gs |
  fs4 \voiceDown ds8  css4 cs8 |
  bs4 b8  as4 bs8 |
  
  \barNumberCheck 105
  cs4 css8 ds4.~ |
  ds4. css |
  ds8 \voiceUp as' ds~  ds cs!16 b cs8~ |
  cs8 fs, b~  b as16 gs as8 |
  b4. as4 a8 |
  gs4. fss4 fs8 |
  e8 fs gs  fs b \voiceDown b, |
  \voiceUp e8 gs fs  gs fs e |
  
  \barNumberCheck 113
  fs8 gs a  gs cs e, |
  fs8 a gs  a gs fs |
  gs4 gs8  fss4 fs8 |
  es4 e8 ds4.~ |
  ds8 cs a'8~  a8 gs16 fs gs8~ |
  gs8 cs, fs~  fs es16 ds es8 |
  fs4.~ fs8 es fss |
  gs4.~ gs8 fss gss |
  
  \barNumberCheck 121
  as4.~ as4 gs!8 |
  fs8 r r  r r as |
  \voiceDown ds,4.~ ds8 cs b |
  as8 b cs  ds4 ds,8 |
  gs8 as b  as ds ds, |
  \voiceUp gs8 b as  b as gs |
  as8 b cs  b e gs, |
  as8 cs b  cs b as |
  
  \barNumberCheck 129
  b4. as8 ds cs |
  ds8 cs b  cs \voiceDown b as |
  b8 as gs  as gs fss |
  gs4.~ gs8 cs! b |
  cs8 b as b4.~ |
  b4. as |
  ds,4 \voiceUp gs'8 fss4 \stemLengthA fs8 |
  es4 e8 ds4 es8 |
  
  \barNumberCheck 137
  fs4 fss8 gs4.~ |
  gs4. fss |
  gs2.~ |
  gs4.~ gs8 fss es |
  fss2. |
  gs4.~ gs4 fss8 |
  gs2. |
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
  R2. * 8 |
  
  \barNumberCheck 9
  R2. * 4 |
  gs8 as b  as ds ds, |
  gs8 b as  b as gs |
  as8 b cs  b e gs, |
  as cs b  cs b as |
  
  \barNumberCheck 17
  b4 gs8 es4 fss8 |
  gs4 e!8 cs4 ds8 |
  e4 es8 fs!4.~ |
  fs4. es |
  fs4 fss8 gs4.~ |
  gs4. fss |
  \voiceTwo gs4. fs! |
  e4. ds |
  
  
  \barNumberCheck 25
  \oneVoice cs8 gs' cs~  cs as! bs |
  \voiceTwo cs4. b!~ |
  \oneVoice b8 as! gs  fss as ds, |
  gs4 gs,8  gs'4.~ |
  gs8 fs es  ds fs as, |
  \tag layout { b2.\prallmordent } \tag midi { b2.\prall } |
  as2. |
  R2. |
  
  \barNumberCheck 33
  ds8 es fs  es as as, |
  ds8 fs es  fs es ds |
  es8 fs gs  fs b ds, |
  es8 gs fs  gs fs es |
  fs8 e! ds  e a cs, |
  ds4 r8  gs,4 r8 |
  cs8 e cs  gs'4 fs8 |
  e8 fs gs  cs,4 fs8 |
  
  \barNumberCheck 41
  b,8 fs' b~  b gs as~ |
  as8 ds, gs~  gs es fss |
  \voiceTwo gs4 as8  b4 \oneVoice css,8 |
  ds4 b8  gs4 as8 |
  \voiceTwo ds4. r8 r fs8 |
  b4. r8 r bs |
  cs4 b!8  as4 a8 |
  \oneVoice gs8 b ds,  css as css |
  
  \barNumberCheck 49
  ds4 r8  gs,4 r8 |
  cs4 r8  fs,4 r8 |
  b8 ds gs~  gs fss as |
  b,4 r8  cs4 r8 |
  ds4 fss,8  gs4 b8 |
  cs8 e as,  ds4 ds,8 |
  gs8 as b  as ds ds, |
  gs8 b as  b as gs |
  
  \barNumberCheck 57
  as8 b cs b e gs, |
  as8 cs b  cs b as |
  b8 ds fss,  gs b ds, |
  e2.\prall |
  ds4 ds'8  es gs fss |
  gs8 ds gs-\tieShapeA ~  gs fs!16 es fs8 |
  es8 as gs  fs b! as |
  gs8 as b  es, as gs |
  
  \barNumberCheck 65
  fss8 gs as  ds, gs fs |
  e8 fs e  ds e ds |
  cs4 cs,8  gs' fss gs |
  ds4 r8  r4 r8 |
  R2. * 2 |
  r8 r cs''  bs4 b8 |
  \voiceTwo as4 a8  gs4 as8 |
  
  \barNumberCheck 73
  b4 bs8  cs4.~ |
  \oneVoice cs4. bs |
  cs4 b!8  as!4 gs8 |
  fs4 e8  ds4 cs8 |
  b fs' b~  b as16 gs as8~ |
  as8 ds, gs~  gs fss16 es fss8 |
  \voiceTwo gs4 e!8 ds4. |
  as'8 gs fss  gs4 css,8 |
  
  \barNumberCheck 81
  ds4 as8  b4 bs8 |
  cs4 css8  ds4 dss8 |
  es4. r8 es ds! |
  \oneVoice cs8 cs' bs  as as' gs |
  fs8 ds es  fs4 fss8 |
  gs8 gs, as  b4 bs8 |
  cs8 cs, ds  e4 es8 |
  fs8 fs, gs  a4 as8 |
  
  \barNumberCheck 89
  b4 cs8  ds4 es8 |
  fs4 gs8  as4 bs8 |
  cs8 cs, ds  es4 fss8 |
  gs4 as8  b16 cs ds8 cs |
  ds2.~ |
  ds2.~ |
  \voiceTwo ds4 r8  r4 r8 |
  R2. |
  
  \barNumberCheck 97
  gs,,8 as b  \oneVoice as ds ds, |
  gs8 b as  b as gs |
  as8 b cs  b e gs, |
  as8 cs b  cs b as |
  b8 ds gs~  gs fss16 es fss8 |
  gs8 b ds~  ds css16 bs css8 |
  \voiceTwo ds4 ds,8 as'4 fss8 |
  gs4 css,8 ds4. |
  
  \barNumberCheck 105
  as'4.~  as8 gs fs |
  gs4. as |
  ds,4 \oneVoice b8  gs4 as8 |
  b4 ds8 es4 fss8 |
  gs4 b8 cs4 ds8 |
  e4 cs8  as!4 bs8 |
  cs8 bs as  b as gs |
  a4 ds,!8 e4 e,8 |
  
  \barNumberCheck 113
  b'4 bs8  cs4 gs'8 |
  a4 cs8  fs,4 b!8 |
  e,8 b' e~  e ds16 cs ds8~ |
  ds8 gs, cs~  cs bs16 as! bs8 |
  cs8 cs, cs'  bs4 b8 |
  as4 a8  gs4 cs8 |
  fs,8 e! ds  cs b! as |
  gs8 gs' as  b! cs! b |
  
  \barNumberCheck 121
  as8 as, bs  css bs css |
  ds8 gs fs  es as gs |
  \voiceTwo fss8 ds fss gs4.~ |
  gs4. fss |
  gs4 gs,8  fss4 fs8 |
  \oneVoice es4 e8  ds4 es8 |
  fs4 fss8 gs4.~ |
  gs4. fss8 ds' cs |
  
  \barNumberCheck 129
  ds8 cs b  cs b as |
  b8 as gs  \voiceTwo ds'4.~ |
  ds4 gs,8 e'4.~ |
  e8 ds css  ds4.~ |
  ds2.~ |
  ds8 cs b  cs b as |
  b8 cs16 b as gs \oneVoice ds4.~ |
  ds4 cs8 gs'4 cs,8 |
  
  \barNumberCheck 137
  fs4 ds8 gs4 b8 |
  e4 cs8  as4 ds8 |
  gs,4 b8  e, e' ds |
  css4.~ css8 as bs |
  cs!4.~ cs8 b! as |
  b8 as gs  ds'4 ds,8 |
  gs2. |
}

tempi = {
  \tempo 4. = 40
  s2. * 140 |
  s4. \tempo 4. = 38 s |
  \tempo 4. = 36 s4. \tempo 4. = 30 s |
  s2. |
}

forceBreaks = {
  % page 1
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  % page 2
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  % page 3
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 5 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  % page 4
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
}

fugueEighteenNotes =
\score {
  \header {
    title = "Fugue 18"
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

fugueEighteenMidi =
\book {
  \bookOutputName "fugue-18-bwv-887"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
