%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveClefA = \once \override Score.Clef.extra-offset = #'(0.5 . 0)
moveNoteColumnA = \once \override Score.NoteColumn.X-offset = 1

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}


%%% Music %%%

global = {
  \time 2/2
  \key fs \major
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne \partial 2 r2 |
  R1 * 3 |
  r2 bs'4.\prall as16 bs |
  cs4 r gs as |
  b4. as16 gs  fs8 es fs gs |
  as8 bs cs as  ds4 fs, |
  fs4\prall es8 ds  cs4 b'! |
  
  \barNumberCheck 9
  b4 as r a |
  a4 gs r gs8 as |
  b4 ds, es2 |
  fs8 es fs gs  as gs as fs |
  ds4 gs~  gs8 fs gs es |
  fs8 as bs css  ds es fs ds |
  es2 fss |
  gs4 ds8 cs  b4 e~ |
  
  \barNumberCheck 17
  e4 \oneVoice ds8 cs  ds4 gs~ |
  gs8 fs es ds  cs b cs as |
  \voiceOne fs4 b~  b8 as b gs |
  as8 b cs ds  es fs16 es ds8 es |
  \oneVoice fs4 r cs ds |
  e4. ds16 cs  b8 as! b cs |
  ds8 es! fs ds  gs4 b, |
  \voiceOne b4\prall as fs' as, |
  
  \barNumberCheck 25
  as4\prall gs es' gs, |
  gs4\prall fs r b |
  b4 as r as |
  as4 gs gs' bs, |
  bs4\prall as fss' as, |
  as4\prall gs r cs |
  cs4 bs r bs |
  bs4 as ds8 cs ds4 |
  
  \barNumberCheck 33
  gs,!4. as8 b!4 cs |
  \moveDottedNoteA fs,4. gs8  as gs as bs |
  cs4 as bs2 |
  cs4 r r2 |
  r4 cs8 ds  e ds fs cs |
  \oneVoice b8 as b cs  ds cs e gs, |
  \voiceOne fs4 b~  b8 as gs gs' |
  \oneVoice cs, es fs as  \voiceOne css,4.\prall bs16 css |
  
  \barNumberCheck 41
  ds4 r as bs |
  cs4. bs16 as  gs!8 fss gs as |
  bs8 css ds bs  es4 gs, |
  gs4\prall fs8 es  fs4 gs |
  es2 fss |
  gs2 r4 e'~ |
  e4 ds8 cs  ds4 gs~ |
  gs8 fs es ds  cs bs cs es |
  
  \barNumberCheck 49
  fs8 b,! b'4~  b8 as b gs |
  as4 fs b4. fs8 |
  gs2 as |
  b4 ds,8 b  cs ds e4 |
  e4 ds r d |
  d4 cs r cs8 ds |
  e2~ e8 b as cs~ |
  cs8 fs, b as  b4 b |
  
  \barNumberCheck 57
  b4 as r as |
  as4 gs e' gs, |
  gs4 fs! ds' fs, |
  fs4 es! r cs' |
  cs4 bs r bs |
  bs4 as fs' as, |
  as4 gs! es' gs, |
  gs4 fs r b! |
  
  \barNumberCheck 65
  b4 as r a |
  a4 gs r gs |
  fs4 b2 as8 gs |
  fs4\prall r r2 |
  R1 * 4 |
  
  \barNumberCheck 73
  R1 * 3 |
  r2 es'4.\prall ds16 es |
  fs4 r cs ds |
  e4. ds16 cs  b8 as b cs |
  ds8 es! fs ds  gs4 b, |
  b4 as as' cs, |
  
  \barNumberCheck 81
  cs4\prall b b' ds, |
  ds4 cs8 ds  es fs gs es |
  fs4. gs8 es4. fs8 |
  fs2\fermata
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour \partial 2 es'4.\prall ds16 es |
  fs4 r cs ds |
  e4. ds16 cs  b8 as b cs |
  ds8 es! fs ds  gs4 b, |
  b4\prall as8 gs  fs4 fs' |
  fs4 es r e |
  e4 ds r ds8 es |
  fs4 as, bs2\prall |
  cs4 gs cs2~ |
  
  \barNumberCheck 9
  cs4. ds8  e4 fs |
  b,4. cs8  ds4 es! |
  fs4 b,2 \voiceDown as8 gs |
  fs2 \voiceUp r4 cs' |
  bs2 css |
  ds2 r4 b'~ |
  b4 as8 gs  as4 ds~ |
  ds8 cs b as  gs fss gs e |
  
  \barNumberCheck 17
  \voiceDown cs4 fs!~  fs8 es! fs ds  |
  es4 cs fs e |
  \voiceUp ds2 es! |
  fs4 r gs2 |
  % third and fourth beats, fs according to the transcription
  \voiceDown cs,4. cs8 fs2 |
  b,4. b8 e2 |
  ds2 cs~ |
  cs2 \voiceUp r4 fs |
  
  \barNumberCheck 25
  fs4 es r es |
  es4 ds b'! ds, |
  ds4 cs! as' cs, |
  cs4 bs r gs' |
  gs4 fss r fss |
  fss4 es cs' es, |
  es4 ds! bs' ds, |
  ds4 cs r fs! |
  
  \barNumberCheck 33
  fs4 es r e |
  e4 ds r ds |
  cs4 fs2 es8 ds |
  gs8 fs gs b!  es,4.\prall ds16 es |
  fs4 r \voiceDown cs ds |
  e4. ds16 cs  b8 as b cs |
  ds8 \voiceUp es! fs ds  gs4 \voiceDown b, |
  b4\prall as \voiceUp r gs' |
  
  \barNumberCheck 41
  gs4 fss r fs |
  fs4 es r es8 fss |
  gs4 \voiceDown bs, css2 |
  ds8 as bs css  \voiceUp ds css ds b! |
  gs4 cs!~  cs8 b cs as |
  b8 ds es fss  gs as b gs |
  as2 bs |
  cs4 gs8 fs \voiceDown es4 as~ |
  
  \barNumberCheck 49
  as4 gs8 fs gs4 \voiceUp cs~ |
  cs8 \voiceDown b as gs  fs e fs as |
  \voiceUp b8 \voiceDown e, \voiceUp e'4~  e8 ds e cs |
  ds b fs gs  as4.\prall gs16 as |
  b4 r fs gs |
  a4. gs16 fs  e8 ds! e fs |
  gs8 as! b gs  cs4 e, |
  e4 ds b' ds, |
  
  \barNumberCheck 57
  ds4 cs as' cs, |
  cs4 b r e |
  e4 ds r ds |
  ds4 cs cs' es, |
  es4 ds bs' ds, |
  ds4 cs r fs |
  fs4 es r es |
  es4 ds gs8 fs gs4 |
  
  \barNumberCheck 65
  cs,4. ds8 e4 fs |
  b,4. cs8  ds cs ds es! |
  fs4 ds es2 |
  fs8 es fs as  cs as fs e |
  ds8 cs ds fs  gs as b fs |
  es8 ds es gs  bs cs16 bs as8 bs |
  cs4 r gs as |
  b!4. as16 gs  fs8 es! fs gs |
  
  \barNumberCheck 73
  as8 bs cs as  ds4 fs, |
  fs4\prall es cs' e, |
  e4\prall ds b' ds, |
  ds4\prall cs r b' |
  b4 as r a |
  a4 gs r gs8 as |
  b4 r es2 |
  fs2 r4 as, |
  
  \barNumberCheck 81
  as4 b r b |
  bs4 cs r b |
  as4. b8 gs4. as8 |
  as2
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
  \partial 2 r2 |
  R1 * 7 |
  r2 es4.\prall ds16 es |
  
  \barNumberCheck 9
  fs4 r cs ds |
  e4. ds16 cs  b8 as! b cs |
  ds8 es! fs ds \voiceTwo gs4 b, |
  b4 as8 gs  fs4 \oneVoice fs'~ |
  fs es8 ds es4 as, |
  ds,4 ds'~  ds8 css ds b |
  gs4 cs!~  cs8 b cs as |
  b8 ds es fss  gs4 cs |
  
  \barNumberCheck 17
  \voiceTwo as2 bs |
  cs4 b! as2~ |
  as4 \oneVoice gs8 fs  gs4 cs |
  fs,4 es8 ds  cs4 b' |
  \voiceTwo b4 as r a |
  a4 gs r gs8 as |
  b4 ds, es2 |
  fs8 es fs gs  as fs ds fs |
  
  \barNumberCheck 25
  \oneVoice b8 as b gs  css bs css as |
  ds8 as ds, css  ds b gs b |
  e8 ds e cs  fss es fss ds |
  gs8 fss gs as  bs as bs gs |
  cs8 bs cs as  dss css dss bs |
  es8 bs es, dss  es cs! as cs |
  fs8 es fs ds  gss fss gss es |
  as8 gss as bs  bs4.\prall as16 bs |
  
  \barNumberCheck 33
  cs4 r gs as |
  b4. as16 gs  fs8 es! fs gs |
  as8 bs cs as  ds4 fs, |
  fs4 es8 ds  cs es gs b |
  b4\prall \voiceTwo as r a |
  a4 gs r gs8 as |
  b4 ds, es2 |
  fs4. fs8  es8 ds es as, |
  
  \barNumberCheck 41
  \oneVoice ds8 css ds es  fs ds gss, gss' |
  as8 gss as bs  cs4. bs16 as |
  gs4. fs!8  es ds es as |
  ds,2 r4 b~ |
  b4 as8 gs  as4 ds, |
  gs4 gs'~  gs8 fss gs e |
  cs4 fs!~  fs8 es! fs ds |
  es8 gs as bs \clef treble \voiceTwo cs2 |
  
  \barNumberCheck 49
  ds2 es |
  fs4 e ds2~ |
  ds4 \moveClefA \clef bass \moveNoteColumnA cs8 b  cs4 fs, |
  \oneVoice b2 r |
  r8 as b cs  ds b es,! es'! |
  fs8 es, fs gs  a4. gs16 fs |
  cs'4 gs as! fs |
  b4 b,8 cs  ds b gs b |
  
  \barNumberCheck 57
  e8 ds e cs  fss es fss ds |
  gs8 fss gs fss  gs e cs  e |
  a8 gs a fs  bs as bs gs |
  cs8 gs cs, ds  es cs as cs |
  fs8 es fs ds  gss fss gss es |
  as8 gss as gss  as fs! ds fs |
  b!8 as b gs css bs css as |
  ds8 as ds, es  es4.\prall ds16 es |
  
  \barNumberCheck 65
  fs4 r cs ds |
  e4. ds16 cs  b8 as! b cs |
  ds8 es! fs ds  gs4 b, |
  b4 as as' cs, |
  cs4 b b' ds, |
  ds4 cs8 ds  ds4.\prall cs16 ds |
  es8 gs as b  cs e, ds cs |
  ds8 fs gs as  b cs16 b as8 b |
  
  \barNumberCheck 73
  cs8 ds es fs  es ds cs bs |
  cs8 cs, cs' b!  as b cs as |
  b8 b, b' as  gs as b gs |
  es!8 fs gs es  cs es gs cs |
  fs,8 es ds gs  a fs bs, bs' |
  cs8 bs cs ds  e e, ds cs |
  b8 cs b as  gs fs gs cs |
  fs,8 es fs as  cs as fs' es |
  
  \barNumberCheck 81
  ds8 cs ds fs  gs ds b' gs |
  es8 ds es gs  cs gs es' cs |
  ds4 b cs cs, |
  fs,2_\fermata
}

tempi = {
  \tempo 2 = 66
  \partial 2 s2 
  s1 * 81 |
  s2 \tempo 2 = 60 s |
  \tempo 2 = 56 s2 \tempo 2 = 44 s |
  \tempo 2 = 20 s2
}

forceBreaks = {
  % page 1
  \partial 2 s2
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 2
  s1 * 5 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \pageBreak
  
  % page 3
  s1 * 4 \break
  s1 * 4 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
}

fugueThirteenNotes =
\score {
  \header {
    title = "Fugue 13"
    subtitle = "for 3 voices"
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

fugueThirteenMidi =
\book {
  \bookOutputName "fugue-13-bwv-882"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
