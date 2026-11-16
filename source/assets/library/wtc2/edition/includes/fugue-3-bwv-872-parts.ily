%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . 0.25) (0 . 0.25) (0.25 . 0.25) (0.25 . 0.25)) \etc
tieShapeB = \shape #'((0 . 0.25) (0 . 0.25) (0 . 0) (0 . 0)) \etc

beamPositionsA = \once \override Beam.positions = #'(-5.5 . -6.5)

%%% Music %%%

global = {
  \time 4/4
  \key cs \major
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne 
  r2 r8 gs' bs gs |
  cs8 r b r  as16 gs fs8~ fs16 gs as fs |
  gs8 r cs r cs r bs r |
  r8 cs es cs  gs' r fs r |
  es16 ds cs8~  cs16 ds es cs  r16 ds fs ds  gs8 r |
  fs8 r es8. es16  fss8 gs~  gs16 gs fss8 |
  gs8 r r4 r2 |
  r8 es, gs es  as r gs r |
  
  \barNumberCheck 9
  fs16 gs as bs  css ds es32 ds css16  ds8 r r ds |
  bs8 ds gs, cs  as r bs r |
  cs8 gs' es gs  cs, r  r16 b as gs |
  as4~ as16 as ds8  gs,4~ gs16 gs cs8 |
  fs,4~ fs16 es fs8  es4~ es16 ds es8~ |
  es8. es16 ds4  es8 r r es' |
  \oneVoice cs8 es as, r  r as' fss as |
  ds,8 r es r  fs!16 gs as8~  as16 gs fs gs |
  
  \barNumberCheck 17
  es16 fs gs8~  gs16 fs es fs  ds gs fs es  ds cs bs32 cs ds16 |
  cs16 as bs cs  ds es fs32 es ds16  \voiceOne cs bs as gs  cs8 r |
  as8 r \oneVoice fs' r  r16 fs es ds  es32 fs gs16 cs,32 ds es16 |
  as,16 es' ds cs  ds32 es fs16 bs,32 cs ds16  gs, ds' cs bs  \voiceOne 
    cs32 ds es16 gs,32 as b16 |
  as8. fs16 gs8. es16  fs8. ds16 es4~ |
  es4~  es16 ds fs ds  bs!8 bs16 ds  gs8. fs16 |
  es8 es16 gs  cs8. b16  as8 as16 cs  fs4~ |
  fs16 as, bs! cs  ds es fs32 es ds16  es fs es ds  cs bs as32 bs cs16 |
  
  \barNumberCheck 25
  bs8 gs' es gs  \oneVoice cs,16 es fs gs  as bs cs as |
  \voiceOne fs16 gs fs es  ds cs bs32 cs ds16  gs,2-\tieShapeB ~ |
  gs16 cs, ds es  fs gs as fs  ds es fs gs  as bs cs32 bs as16 |
  bs8 ds16 cs  bs8 ds  \oneVoice gs, cs e cs |
  fs16 a gs fs  e ds cs32 ds e16  fss, gs as! bs  \voiceOne cs ds e32 ds
    cs16 |
  bs8 ds gs4~  gs fs~ |
  fs4 es~  es8~ es32 ds cs b  as gs fs es fs8~ |
  fs4~ <ds fs>8 <cs es~>  es32 es ds cs ds8~ ds4~ |
  
  \barNumberCheck 33
  ds8 cs~ cs16 cs bs8  cs4~ cs16 gs b gs |
  as4~  as16 as cs as  ds4~ ds16 es fs8~ |
  fs16 es ds fs~  fs as gs fs  es2\fermata |
}

rightHandLower = \relative {
  \voiceFour 
  R1 |
  r8 gs' es gs  cs, r ds r |
  es16 fs gs8~  gs16 fs es gs  ds es fs8~  fs16 es ds fs |
  es8 r r4  r8 gs bs gs |
  cs8 r b r  as r  r16 as css as |
  ds8 r  r16 ds cs!8~  cs16 bs8 bs16  as8. cs16 |
  bs8 r r4  r8 gs, bs gs |
  cs8 r b r  \voiceDown as16 \voiceUp bs css ds  es fs gs32 fs es16 |
  
  \barNumberCheck 9
  fs8 r \voiceDown es r  \voiceUp r as fs as |
  ds,8 fs! es gs~  gs16 gs fs es \beamPositionsA ds cs \voiceDown bs32 cs
    ds16 |
  gs,8 r r cs  \voiceUp es cs gs' r |
  r16 gs fs es  fs8. fs16~  fs fs es ds  es8. es16~ |
  es16 es ds cs  ds8. ds16~  ds ds cs bs  cs8. bs16 |
  as16 gss as8~  as16 cs bs as  gss8 r r4 |
  \voiceDown r8 as css as  ds r cs r |
  bs16 as gs8-\tieShapeA ~  gs16 as b32 as gs16  as bs cs32 bs as16  bs cs
    ds32 cs bs16 |
  
  \barNumberCheck 17
  cs2~ cs8 cs bs es |
  as,4. ds8  gs,4 \voiceUp r16 gs' es gs |
  cs,8 r  \voiceDown r16 bs gs bs  cs8 gs cs4~ |
  cs8 as fs4~  fs8 gs es \voiceUp es'~ |
  es16 cs ds8~  ds16 bs cs8~  cs16 as bs8  r16 cs gs b |
  as2  r16 gs8.~  gs16 cs bs8 |
  r16 cs8.~  cs16 fs es8  r16 fs8.~  fs16 b as ds |
  gs,8 r r4  \voiceDown r16 bs, cs ds  es fss gs fss |
  
  \barNumberCheck 25
  \voiceUp gs8 r \voiceDown cs,4  es cs |
  fs8 \voiceUp r r fs~  fs16 as gs fs  es ds cs32 ds es16 |
  as,4 r8 ds  \voiceDown as ds fs, \voiceUp fs'~ |
  fs16 gs fs \voiceDown e  ds cs bs32 cs ds16  e fs e ds  cs bs as32 bs cs16 |
  bs8 ds cs e  \voiceUp r4 r8 fss |
  gs8 r r es'!  css es as, ds |
  bs8 ds gs, cs  as16 cs fs,8 r  r32 es ds cs |
  << 
    { bs!16 ds gs,8~ gs4  cs8~ cs32 cs bs as  bs4~ } 
    \new Voice { 
      \voiceOne s16 ds8.~ \hideNoteHead ds8 \hideNoteHead cs8_~ \hideNoteHead
      cs8 s4.
    } 
  >> |
  
  \barNumberCheck 33
  bs16 gs8 fss16  bs8. fs16~  fs fs \voiceDown es ds  es4~ |
  es16 gs fs es  fs4~  fs \voiceUp r8 r16 gs |
  as4 bs <gs cs>2 |
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
  r8 \stemDown cs es cs  gs' r fs r |
  es16 ds cs8~  cs16 ds es cs  fs8 r \stemNeutral fs, r |
  r8 cs' as cs  fs, as ds, gs |
  cs,8 r r cs''  bs ds gs, r |
  \stemDown r8 cs, es cs  fs r es r \stemNeutral |
  r16 ds bs ds  gss,8 as  ds, es cs ds |
  r8 gs bs gs  cs r bs r |
  as16 bs cs ds  es fs gs32 fs es16  fs8 r css r |
  
  \barNumberCheck 9
  ds8 r r as'  fs as ds, fss |
  gs16 gs, as bs  cs! ds es32 ds cs16  fs8 ds r gs |
  es8 gs cs, r  \stemDown r cs es cs |
  fs8 as ds, fs  bs,! gs' cs, es \stemNeutral |
  as,8 fs' bs, ds  gss, es as gs |
  fs8 es fs4_\prall  \voiceTwo es8 es' gss es |
  as8 r gs! r  fss16 es ds8~  ds16 es fss32 es ds16 |
  gs8 r r4 r2 |
  
  \barNumberCheck 17
  r8 cs, es cs gs'2~ |
  gs8 gs fs4~  fs8 fs es \oneVoice r |
  r16 as fs as  \voiceTwo ds,8 r  cs r  r16 cs es cs |
  fs8 r r ds  bs r r cs |
  \oneVoice fs, fs' es as,  ds gs, cs cs, |
  fs16 cs' as cs  fs4~  fs8 fs es gs |
  cs,8 b' as cs  fs, es ds fs |
  bs,8 gs' bs gs  \voiceTwo cs8 r as r |
  
  \barNumberCheck 25
  \oneVoice r16 gs as bs  \voiceTwo cs ds es cs  as8 as cs as |
  ds8 ds, bs ds  \oneVoice es es, cs es |
  fs4 ds' \voiceTwo fs ds |
  gs1~ |
  << 
    { gs1~ | gs16 as } 
    \new Voice 
    { 
      \voiceThree s2 as!8 cs_~ 
      << { \voiceTwo cs4 | s8 } \new Voice { \voiceThree e4 | ds8 } >> 
    } 
  >> gs,16 fs  es! ds css32 ds es16  as, as' bs css  ds es fs32 es ds16 |
  gs16 fs es ds  cs b as32 b cs16  \oneVoice fs,8 ds, fs ds |
  << 
    { \voiceTwo gs4~ gs8~ gs32 as gs fss  gs4~ gs32 as bs cs ds es fs! ds } 
    \new Voice { \voiceThree r8 r32 fs es ds  es ds cs bs cs8  r fss gs4 } 
  >> |
  
  \barNumberCheck 33
  << 
    { r4 gs, cs,2~ | cs1~ | cs1\fermata | } 
    \new Voice {  
      \voiceFive es'8 e ds4 cs2_~ | 
      cs2_~  cs16 cs bs as  bs4 | 
      cs4 ds cs2\fermata |
    } 
  >>
}

tempi = {
  \tempo 4 = 66
  s1 * 30 |
  s2 \tempo 4 = 60 s |
  s1 |
  \tempo 4 = 56 s1 |
  \tempo 4 = 52 s1 |
  \tempo 4 = 48 s4 \tempo 4 = 44 s \tempo 4 = 30 s2 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
}

fugueThreeNotes =
\score {
  \header {
    title = "Fugue 3"
    subtitle = "for 3 voices"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 11
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

fugueThreeMidi =
\book {
  \bookOutputName "fugue-3-bwv-872"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
