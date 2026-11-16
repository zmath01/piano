%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(-6 . -6.5)

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}

%%% Music %%%

global = {
  \time 4/4
  \key fs \minor
}

rightHand = \relative {
  \global
  R1 * 3 |
  r4 r8 fs'  e cs a'4~ |
  a8 gs16 fs gs4~  gs8 cs fs,4~ |
  fs8 e16 ds  e8 \tag layout { cs ds2\prallprall } \tag midi { s8 ds2\trill } |
  cs8 cs' fs,4~  fs8 b e,4~ |
  e8 a4 gs fs es8 |
  
  \barNumberCheck 9
  fs4 r8 b  gs e! r a |
  \voiceOne fs8 ds r gs  es cs fs4~ |
  fs4 es  fs8 a b d |
  r8 gs, a cs  r fs,16 gs  \tag layout { gs8.\prall } \tag midi { gs8.\trill }
    fs32 gs |
  a4. ds8  bs gs \oneVoice r cs |
  fs4 ds  gs8 e fs a |
  r8 d,! e gs  r cs, b a |
  gs4 r8 cs  a fs \voiceOne d'4~ |
  
  \barNumberCheck 17
  d8 cs16 b cs4~  cs8 fs b,4~ |
  b8 a16 gs  a8 fs gs2 |
  \moveDottedNoteA fs4. b8  e, gs a cs |
  fs,4 gs a r |
  r2 r8 d8[ cs8. b16] |
  as8 fs b2 as8 a~ |
  a8[ b a8. gs!16] fs2 |
  e4. a8  b4. gs8 |
  
  \barNumberCheck 25
  cs4. a8 d2~ |
  d8[ d cs8. b16] a4 fs'~ |
  \oneVoice fs8[ e d8. cs16]  d8 b e4~ |
  e8 fs d b  cs4 r8 \voiceOne as |
  b8[ d cs8. b16]  \moveDottedNoteA a!4. d8 |
  g,4. cs8 fs,4 r |
  r8 es fs a  ds, fs b4~ |
  b8 a16 gs a8 cs  fs, a d4~ |
  
  \barNumberCheck 33
  d8[ d cs8. b16] a2~ |
  a8 gs16 fs gs8 ds  e![ e' ds8. cs16] |
  bs8 fs' e ds  e4 r8 ds16 cs |
  gs'8 bs, cs2 bs4 |
  cs4 r8 cs  b!16 cs b a  b a gs b |
  a16 b a gs  a gs fs a  gs8 cs fs, as |
  b8 fs b2 a4~ |
  a4 gs2 fs4 |
  
  \barNumberCheck 41
  gs8 bs cs e  b\rest e ds fs~ |
  fs8 bs, cs4~  cs8 fss, gs4~ |
  gs8 as ds, fss  gs4 r16 a b gs |
  a16 b a gs  a gs fs a  gs a b gs cs4~ |
  cs8 cs b4~  b16 b a gs  a b cs a |
  \oneVoice d16 e d cs  d cs b d  cs d cs b  cs b a cs |
  \voiceOne b2~  b16 gs as b  as b cs as |
  b16 as b cs  b cs d! b  cs b cs d  cs d e! cs |
  
  \barNumberCheck 49
  d16 e d cs  d cs b d g,2~ |
  g16 \once \omit Accidental g fs e  fs e d fs  b,4 cs |
  d8 fs b4~  b8 as16 gs as4 |
  b4 r8 e  \moveDottedNoteA a,!4. d8 |
  g,4. c8 as fs~  fs16 b cs d |
  es,8 cs' fs,4~  fs8 es16 fs  gs a b gs |
  b16 a gs fs d'4~  d8 cs16 b cs4~ |
  cs8 fs b,4~  b8 a16 gs  a8 fs |
  
  \barNumberCheck 57
  gs2 fs8 cs' fs a |
  gs2~ gs8 a gs fs |
  e2~ e8 e ds fs |
  bs,4. ds8  gs,4 r8 cs |
  b!16 cs b a  b a gs b  a b a gs  a gs fs a |
  gs16 a gs fs  gs fs e gs  fs gs fs e  fs e ds fs |
  e4 r  r8 g fs e |
  d4 r  r8 fs e d |
  
  \barNumberCheck 65
  cs4. cs8  fs4~ fs8 es16 fs |
  gs8 fs16 gs  a8 r r4 r8 cs |
  a8 fs d'!4~  d8 cs16 b cs4~ |
  cs8 fs b,4~  b8 a16 gs a8 fs |
  gs2~ gs16 fs8 es16~  es fs8 gs16 |
  cs,8 fs4 es8 fs2\fermata |
  \bar "|."
}

leftHandUpper = \relative {
  \voiceThree r4 r8 cs'  a fs d'4~ |
  d8 cs16 b cs4~  cs8 fs b,4~ |
  b8 a16 gs a8 fs \tag layout { gs2\prall } \tag midi { gs2\trill } |
  fs8 gs a b  cs4 r8 ds |
  e4 r8 e  as,4 r8 bs |
  cs4 r8 cs~  cs8 bs16 as bs8 gs |
  e'4. a,!8  d!4. gs,8 |
  cs4 b a gs |
  
  \barNumberCheck 9
  fs4 r r e |
  \voiceUp a4 d8 b  gs4 r8 a |
  b8 d r gs,  a cs \voiceDown r8 fs, |
  gs8 b r a \voiceUp d4 \voiceDown b |
  \voiceUp e8 cs ds fs  \voiceDown r8 bs, cs e |
  r8 as,16 bs  \tag layout { bs8.\prall } \tag midi { bs8.\trill } as32 bs
    cs4 r8 fs |
  d!8 b! r e  cs a r cs |
  b8 a gs4\prall  fs \voiceUp r8 b' |
  
  \barNumberCheck 17
  e,!4. e8  a4~ a8 gs16 fs |
  gs8 es fs4~  fs8 e16 ds e4~ |
  e8 d!16 cs d2 cs4~ |
  cs8 d b e  cs4 r |
  r8 \beamPositionsA cs8[ b8. \voiceDown a16]  gs4. cs8 |
  fs,8[ \voiceUp fs' e8. d16]  cs8[ g' fs8. e16] |
  ds8 b e2 ds8 d~ |
  d8 cs16 b cs8 fs  d b e4~ |
  
  \barNumberCheck 25
  e8 cs fs4~  fs8[ a gs8. fs16] |
  e8 b' a gs  fs \voiceDown e d cs |
  b4 fs'~  fs8[ d cs8. b16] |
  as8 fs b2 as8 \voiceUp fs' |
  d8 \voiceDown b \voiceUp g'4~  g8 fs16 e fs4~ |
  fs8 b e,4~  e8 d16 cs d8 b |
  cs2 b4. gs'8 |
  e2 d!4. b'8 |
  
  \barNumberCheck 33
  gs8 es r gs~  gs8 fs16 es fs8 ds |
  bs2 cs8 r r4 |
  r8 ds'[ cs8. bs16]  cs8 b a fs |
  \voiceDown bs,8 ds gs, \voiceUp gs'  fs16 gs fs e  fs e ds fs |
  e16 fs e ds \voiceDown e ds cs e  ds8 gs cs, es |
  fs16 d! cs b  cs a \voiceUp d8~  d8 \voiceDown gs, \voiceUp as cs |
  \voiceDown fs,8 r \voiceUp r fs'  e16 fs e ds  e ds cs e |
  ds16 e ds cs  ds cs bs ds  cs ds cs bs  cs e ds cs |
  
  \barNumberCheck 41
  bs8 ds e gs  s gs fs a~ |
  a8 gs16 fs  gs8 as  ds,16 e ds cs  ds cs b! ds |
  cs16 ds cs b  cs b as cs  b cs ds b e4~ |
  e4 ds e  r16 b' a gs |
  fs4. fs8 e4 r |
  \voiceDown r8 a gs4~  gs8 cs, fs4~ |
  fs16 \voiceUp a gs fs  gs fs es gs  fs8 \voiceDown cs d4~ |
  d8 ds e4~  e8 es \voiceUp fs4~ |
  
  \barNumberCheck 49
  fs2~ fs16 fs e d  e d cs e |
  a,2~ a16 a g fs  g fs e g |
  fs8 r r b  e4 r8 fs |
  d8 b g'4~  g8 fs16 e fs4~ |
  fs8 b e,4~  e8 d16 cs!  d8 b |
  cs2 \voiceDown b4 r |
  \voiceUp r4 r16 cs' b a  gs4~  gs16 b a gs |
  fs8[ a gs8. fs16]  es8 cs fs4~ |
  
  \barNumberCheck 57
  fs4 es fs r |
  r8 gs cs e ds2~ |
  ds8 gs, cs b a2~ |
  a8 ds, gs fs~  fs16 fs e ds  cs ds e cs |
  ds4 \voiceDown r8 e  cs[ e ds8. cs16] |
  bs8 gs cs2 bs4 |
  \voiceUp cs8 gs cs e  as,4 b!8 cs~ |
  cs8 fs, b d  gs,!4 a!8 b~ |
  
  \barNumberCheck 65
  b8 a16 gs a4~  a8 b16 cs d4~ |
  d16 cs ds es  fs gs a fs  b cs b a  b a gs a |
  fs8 r r fs  e!16 fs \voiceDown e d  e d cs e |
  d16 e d cs  d cs b \voiceUp d  cs d cs b  cs \voiceDown b a \voiceUp cs |
  b16 cs b \voiceDown a  b a gs b  \voiceUp a8 b cs d |
  a4 gs fs2 |
}

leftHandLower = \relative {
  \voiceTwo R1 * 7 |
  r2 r4 r8 cs |
  
  \barNumberCheck 9
  a8 fs d'4~  d8 cs16 b cs4~ |
  \oneVoice cs8 fs b,4~  b8 a16 gs a8 fs |
  \tag layout { gs2\prallprall } \tag midi { gs2\trill } fs4 \voiceTwo d'~ |
  d4 cs b r8 e! |
  \oneVoice cs8 a fs'2 \voiceTwo e4 |
  ds4 r8 gs  e cs a'4~ |
  a4 gs4~  gs8 cs, fs4~ |
  fs4 es  fs8 a b d |
  
  \barNumberCheck 17
  \oneVoice gs,8 e a cs  fs, ds gs b |
  es,8 cs fs a  b gs cs b |
  as8 fs b a  gs e fs a |
  d,8 b e e,  a[ a' gs8. fs16] |
  \voiceTwo es8 cs fs2 es8 e~ |
  e8 d cs b  \oneVoice e cs fs fs, |
  b4 r8 cs a[ cs' b8.  a16] |
  gs8 e a2 gs8 e |
  
  \barNumberCheck 25
  a4. fs8 b4. gs8 |
  cs2~ \voiceTwo cs8[ cs b8. a16] |
  gs4 as b g |
  fs4 r8 g  e cs \voiceTwo fs4~ |
  fs4 e8 d  \oneVoice cs a d cs |
  b8[ d cs8. b16]  as8 fs b4~ |
  b8 a!16 gs a4~  a8 gs16 fs gs8 e! |
  cs'8 cs, cs'4~  cs8 b16 a b8 gs |
  
  \barNumberCheck 33
  es8 gs' es cs  fs gs a fs |
  gs8 gs, r gs'  e cs a'4~ |
  a8 gs16 fs gs4~  gs8 cs \voiceTwo fs,4~ |
  fs8 e16 ds e8 cs  \oneVoice ds4 gs |
  cs,4 \voiceTwo r r2 |
  r4 r8 fs  e!16 fs e d  e d cs e |
  d16 e d cs  d cs b d  \oneVoice cs8 fs, fs' a! |
  b,8 b' e, gs  a, gs a a' |
  
  \barNumberCheck 41
  gs16 a gs fs  gs fs e gs  fs gs fs e  fs e ds fs |
  e16 fs e ds  e ds cs e  fss,8 as b e |
  as,8 cs ds ds,  gs gs'16 fs!  gs8 cs, |
  fs,8 fs'16 e fs8 b,  e16 fs gs e  a b cs a |
  d!16 e d cs  d cs b d  cs d cs b  cs b a cs |
  \voiceTwo b4. e8 a,4. d8 |
  gs,8 b es, cs  fs4. fs8 |
  g!4. gs8  a!4. as8 |
  
  \barNumberCheck 49
  \oneVoice b8 fs b, d  e fs g e |
  cs8 a d fs,  g? b e, a |
  d16 cs d e d g fs g  cs, b cs d  cs fs e fs |
  b,16 cs d b  e d cs b  cs e d cs  d e fs d |
  e16 d e fs  g fs e g  fs gs as fs  b b, b'8~ |
  b16 a! gs b  a gs fs a  gs a gs fs  es fs gs es |
  \oneVoice fs8 gs16 a  b a gs fs  e! fs e d  e d cs e |
  d16 e d cs  d cs b d  cs d cs b  cs b a cs |
  
  \barNumberCheck 57
  b16 cs b a  b a gs b  a gs fs gs  a b cs ds |
  e!16 ds cs ds  e fs gs as  bs as bs cs  bs cs ds bs |
  cs16 ds e ds cs b! a! gs  fs e fs gs  fs gs a fs |
  gs16 fs gs a  gs fs e ds  e8 cs a'4~ |
  a8 gs16 fs \voiceTwo gs4~  gs8 cs fs,4~ |
  fs8 e16 ds  e8 cs ds2 |
  \oneVoice cs16 bs cs ds  e fs g e  fs g fs e  d cs b as |
  b16 fs b cs d e fs d  e fs e d  cs b a gs |
  
  \barNumberCheck 65
  a16 e a b  cs d e cs  \stemUp d e d cs  b a gs fs |
  \stemNeutral es8 cs fs2 es4 |
  fs16 fs' gs a  b cs b a  \voiceTwo gs4 r8 as |
  b8[ a! gs8. fs16]  es8 cs fs4~ |
  fs4 es  fs8 d a b |
  \oneVoice cs4 cs, fs2_\fermata |
}

leftHand = \relative {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \tempo 4 = 50
  s1 * 68 |
  s2 \tempo 4 = 46 s |
  \tempo 4 = 42 s4 \tempo 4 = 38 s \tempo 4 = 30 s2 |
}

forceBreaks = {
  % page 1
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
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
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 4
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
}

fugueFourteenNotes =
\score {
  \header {
    title = "Fugue 14"
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

fugueFourteenMidi =
\book {
  \bookOutputName "fugue-14-bwv-883"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
