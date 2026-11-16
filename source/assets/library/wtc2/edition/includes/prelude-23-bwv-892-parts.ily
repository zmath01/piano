%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 4/4
  \key b \major
}

rightHandUpper = \relative {
  r16 b cs ds  e fs gs as  b8.\mordent cs16  \tag layout { cs8.\prallprall }
    \tag midi { cs8.\trill } b32 cs |
  ds16 as b ds  e as, b e  fs b, gs' fs  e ds cs b |
  as16 es fs cs'  as cs fs, cs'  as es fs cs'  as cs fs, cs' |
  b16 es, fs ds'  b ds fs, ds'  b es, fs ds'  b ds fs, ds' |
  cs16 es, fs e'!  cs e as, e'  cs es,! fs e'!  cs e as, e' |
  ds16 as b fs'  ds fs b, fs'  ds as b fs'  ds fs b, fs' |
  a16 e fs a  ds, fs b, fs'  a fs e ds  e ds cs b |
  gs'16 e ds cs  ds cs b as!  fs' ds cs b  cs b as gs |
  
  \barNumberCheck 9
  e'16 ds cs ds  e8 gs,  fs16 gs as b  cs ds e cs |
  ds16 e ds cs  b as gs fs  es cs es gs cs4~ |
  cs16 b as gs  fs es ds cs' b as gs fs  \voiceOne es ds cs b' |
  <fs as>4 r  r8 cs' fs ds |
  e2~ e8 ds e es |
  fs2~ fs8 es fs fss |
  gs4~ gs16 ds gs fs!  e! ds cs b  as b cs gs |
  \oneVoice fss gs as e  ds cs b as  b ds gs b,  as gs' as, fss' |
  
  \barNumberCheck 17
  gs16 b, cs ds  gs, r r8  r16 \clef bass as b cs  b as gs fs! |
  es16 gs as b  s8. \voiceDown fs16  gs as s8  s16 \staffUp \clef treble 
    \oneVoice es' fs gs |
  as16 fs es ds  cs r r8  \voiceDown r16 gs as b  as gs fs e! |
  ds16 fs gs a  s8. e16  fs gs s8  s16 \staffUp \oneVoice ds' e fs |
  gs16 e ds cs b r r8  r16 ds e fs  e ds cs b |
  as!16 cs ds e  s8. b16  cs ds s8  s16 \stemUp as' b cs |
  \stemNeutral ds16 b as gs  fs r r8  r \schleiferGrace { ds' } fs
    \appoggiatura { e16 } ds8 \appoggiatura { cs16 } b8 |
  \voiceOne b'2~ b8 gs \appoggiatura { fs16 } es8 \appoggiatura { ds16 } cs8 |
  
  \barNumberCheck 25
  as'2~ as8 fs \appoggiatura { e16 } ds8 \appoggiatura { cs16 } b8 |
  es16 fs  gs4 cs,8  fss32 gs as16  cs,4 as'8 |
  as8( gs) gs( fs!)  \tag layout { fs4.\prallprall } \tag midi { fs4.\trill }
    es16 fs |
  es2 \oneVoice es,16 fs gs as  gs fs es ds | 
  \voiceOne css16 es fs gs  s8. ds16  es fs s8  s16 css' ds es |
  \oneVoice fs16 ds as fs  \voiceDown ds cs! bs as  bs[ ds gs] \voiceUp bs
    ds fs e! ds |
  \oneVoice e16 cs gs e  \voiceDown cs b! as gs  as[ cs fs] \staffUp \oneVoice 
    as  cs e ds cs |
  ds16 b fs ds  \voiceDown b a gs fs  gs[ b d] \staffUp \oneVoice es
    gs b as! gs |
    
  \barNumberCheck 33
  as16 ds,! e! cs'  as cs e, cs'  as ds, e cs'  as cs e, cs' |
  fs,16 cs d cs'  fs, cs' d, cs'  fs, cs d b'  fs b d, b' |
  d,16 as b es  d es b es  d as b es  d es b es |
  \voiceOne d16 as b fs'  cs fs b, es  fs8 r r4 |
  \oneVoice r16 b as gs  fs e ds cs  ds b'[ cs ds]  e fs gs as |
  b16 fs ds b  cs b' a gs  a8 fs ds a' |
  gs16 e b gs  as! gs' fs e  fs8 ds bs fs' |
  e16 cs gs e  fs e' ds cs  ds b as gs  as gs fs es |
  
  \barNumberCheck 41
  cs'16 as gs fs  gs fs es ds  b' gs fs es  fs es ds cs |
  as'16 gs fs gs  as8 cs,  b16 cs ds e  fs gs a fs |
  gs16 a gs fs  e ds cs b  as! fs' b, fs'  e b as e' |
  \clef bass ds16 cs b as  b ds fs a,  gs fs' e ds  cs ds e b |
  as!16 b cs gs  fs e ds cs  ds fs b ds,  cs b' e, as |
  <ds, fs b>8 r r4 r2 |
  \bar "|."
} 

rightHandLower = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 2 |
  s2. s8 \voiceFour cs'~ |
  cs4 r  r8 as' bs4 |
  cs8 gs a as b!2~ |
  b8 as b bs cs2~ |
  cs16 cs b as  b r r8 s2 |
  s1 |
  
  \barNumberCheck 17
  s1 * 7 |
  r8 gs' ds fs  es r r4 |
  
  \barNumberCheck 25
  r8 fs cs e!  ds r r4 |
  r8 b16 as b4  r8 as16 gs  as8 cs |
  cs8 b ds ds ds2~ |
  ds16 ds css bs  css as b gs! s2 |
  s1 * 4 |
  
  \barNumberCheck 33
  s1 * 3 |
  d4 as8 gs  <as cs>8 r r4 |
  s1 * 4 |
  
  \barNumberCheck 41
  s1 * 6 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 5 |
  \voiceThree cs8 r s2. |
  s1 * 2 |
  
  \barNumberCheck 25
  s1 * 4 |
  es8 r s2. |
  s1 |
  gs8 r s2. |
  fs8 r s2. |
  
  \barNumberCheck 33
  s1 * 2 |
  r8 gs gs gs  gs gs gs gs |
  fs2~ fs8 r r4 |
  s1 * 4 |
  
  \barNumberCheck 41
  s1 * 6 |
}

leftHandLower = \relative {
  b,8 r r4  r16 b' as gs  fs e ds cs |
  b8 r \tag layout { cs8.\upprall } \tag midi { cs8.\trill } b32 cs
    ds8[ r16 e16]  \tag layout { e8.\prallprall } \tag midi { e8.\trill } 
    ds32 e |
  fs8 as cs as  fs as cs e,! |
  ds8 b' ds b  fs b ds b |
  as,8 cs' e! cs  as cs as fs |
  b,8 ds' fs ds  b ds b fs |
  ds8 b' fs ds  b fs' b fs |
  e8 gs as,! gs'  ds fs gs, fs' |
  
  \barNumberCheck 9
  cs16 ds e fs  gs as b gs  as8 cs as fs |
  b8 b, b'4~\mordent  b16 as gs fs  es cs es gs |
  as8 cs ds, fs  gs b cs, es |
  fs16 fs, gs as  b cs ds es  fs gs fs e  ds gs fs gs |
  cs,16 ds e cs  fs e ds cs  b cs b as  gs cs b cs |
  fs, cs' fs e  ds gs fs gs  cs, ds cs b!  as ds cs ds |
  gs,8 ds' gs b,  cs ds e as, |
  ds8 cs b fss  gs e cs ds |
  
  \barNumberCheck 17
  gs4 r16 ds' es fss  gs r r8 r4 |
  cs,,8 r  cs'16 ds es s  s8 b'16 cs  ds s8. |
  fs,,8 r  r16 b' as gs  fs r r8 r4 |
  \voiceTwo b,,8 r  b'16 cs ds s  s8 a'16 b  cs s8. |
  \oneVoice e,,8 r  r16 a' gs fs  e fs gs a  gs fs e ds |
  \voiceTwo fs,8 r  \oneVoice fs'16 gs as s  s8 \voiceUp e'16 fs  gs s8. |
  \staffDown \oneVoice b,,8 r  r16 e' ds cs  b ds fs, ds'  b ds fs, ds' |
  gs,16 b ds, b'  gs b ds, b'  gs cs es, cs'  gs cs es, cs' |
  
  \barNumberCheck 25
  fs,16 as cs, as'  fs as cs, as' fs as ds, b'  fs b ds, b' |
  gs16 cs es, cs'  gs cs es, cs'  as ds fss, ds'  as ds fss, ds' |
  b16 ds gs, ds'  b ds gs, ds'  bs ds gss, ds'  bs ds gss, ds' |
  as2 r16 ds, es fs  es ds css bs |
  \voiceTwo as8 r \oneVoice as'16 bs css s  s8 \voiceUp gs'16 as  bs s8. |
  \staffDown\oneVoice ds,,8 r r4  gs8 r r4 |
  \voiceTwo cs,8 r r4  fs8 r r4 |
  b,8 r r4  es8 r r4 |
  
  \barNumberCheck 33
  \oneVoice fs8 fs, as cs  fs as cs as |
  b8 fs d fs  d b d fs |
  \voiceTwo fs,8 fs fs fs  fs fs fs fs |
  fs2~ fs16 gs as b  cs ds! e! cs |
  \oneVoice ds b cs ds  e fs gs as  b8 r \tag layout { cs8.\prallprall }
    \tag midi { cs8.\trill } b32 cs |
  ds8 r \tag layout { es8.\prallprall } \tag midi { es8.\trill } ds32 es
    fs16 e ds cs  b a gs fs |
  e8 ds' cs as!  ds16 cs bs as  gs fs e ds |
  cs8 b'! as fs  b, ds es gs |
  
  \barNumberCheck 41
  as,8 cs ds fs  gs, b cs es |
  fs,16 gs as b  cs ds e! cs  ds8 fs ds b |
  e8 e, e'4~\parenthesize \mordent  e8 ds cs fs |
  b,8 cs ds b  e, gs e cs |
  fs8 gs as fs  b gs e fs |
  <b, b'>8 r8 r4 r2 |
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
  \tempo 4 = 96
  s1 * 35 |
  \tempo 4 = 88 s4 \tempo 4 = 80 s \tempo 4 = 96 s2 |
  s1 * 8 |
  s2 \tempo 4 = 88 s4 \tempo 4 = 76 s |
  \tempo 4 = 20 s8 \tempo 4 = 96 s s2. |
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2 
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 3
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
}

preludeTwentyThreeNotes =
\score {
  \header {
    title = "Prelude 23"
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

preludeTwentyThreeMidi =
\book {
  \bookOutputName "prelude-23-bwv-892"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
