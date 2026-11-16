%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 4/4
  \key cs \major
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne 
  b'16\rest es, gs cs~ cs4  b16\rest es, gs cs~ cs4 |
  b16\rest fs as cs~ cs4  b16\rest fs gs ds'~ ds4 |
  b16\rest es, gs ds'~ ds4  b16\rest es, gs cs ~ cs4 |
  b16\rest ds, fss as~ as4  b16\rest ds, gs bs ~ bs4 |
  b16\rest es, as cs~ cs4  b16\rest ds, as' cs~ cs4 |
  b16\rest ds, as' cs~ cs4  b16\rest ds, gs bs~ bs4 |
  b16\rest es, as css~ css4  b16\rest ds, as' ds~ ds4 |
  b16\rest es, gss ds'~ ds4  b16\rest es, as cs~ cs4 |
  
  \barNumberCheck 9
  b16\rest fs! bs ds~ ds4  b16\rest gs! bs es~ es4 |
  b16\rest fs cs' es~ es4  b16\rest fs gs ds'~ ds4 |
  b16\rest fs gs ds'~ ds4  b16\rest es, gs cs~ cs4 |
  b16\rest ds, fs cs'~ cs4  b16\rest ds, fs b~ b4 |
  b16\rest cs, es b'~ b4  b16\rest cs, fs as~ as4 |
  b16\rest ds, fs gs~ gs4  b16\rest as, es' gs~ gs4 |
  b16\rest css, es gs~ gs4  b16\rest cs, ds fss~ fss4 |
  b16\rest bs, ds fs!~ fs4  b16\rest b, cs es~ es4 |
  
  \barNumberCheck 17
  b'16\rest as, cs es~ es4  b'16\rest as, cs ds~ ds4 |
  b'16\rest gs, bs ds~ ds4  b'16\rest gs, cs es~ es4 |
  b'16\rest as, ds fs~ fs4  b16\rest gs, ds' fs~ fs4 |
  b16\rest gs, ds' fs~ fs4  b16\rest gs, cs es~ es4 |
  b'16\rest as, ds fss~ fss4  b16\rest b, ds gs~ gs4 |
  b16\rest b, ds gs~ gs4  b16\rest b, css gs'~ gs4 |
  b16\rest b, ds gs~ gs4  b16\rest css, es gs~ gs4 |
  b16\rest cs,! e gs~ gs4  b16\rest cs, ds fss~ fss4 |
  
  \barNumberCheck 25
  \bar "||"
  \time 3/8
  \tempo "Allegro"
  \oneVoice <bs, ds gs>8\noBeam ds16 cs ds es |
  \appoggiatura { es8 } fs4.~ |
  fs8 es-. as-. |
  ds,8 gs4~\mordent |
  gs8 fs16 es fs gs |
  \appoggiatura { fs8 } es4. |
  ds8 gs16 fss gs as |
  \stemUp bs16 gs cs ds cs bs \stemNeutral |
  
  \barNumberCheck 33
  \voiceOne as16 bs bs8.\prall cs16 |
  cs8 es ds |
  cs8 fs16 gs fs es |
  ds4~ ds16 ds |
  cs8. bs16 cs ds |
  gs,8 cs16 ds cs bs |
  as8 bs8. bs16 |
  cs4~ cs16 cs |
  
  \barNumberCheck 41
  bs8 r r |
  r8 as16 gs as bs |
  cs4.~ |
  cs8 bs es |
  as,4 ds8 |
  gs,4 cs8~ |
  cs8 bs!16 as bs ds |
  gs,8 cs ds, |
  es8 ds4 |
  cs4.\fermata
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  s4 gs'16 fs gs es  s4 gs16 fs gs es |
  s4 as16 gs as fs  s4 gs16 fs gs fs |
  s4 gs16 fs gs fs  s4 gs16 fs gs es |
  s4 fss16 es fss ds  s4 gs16 fss gs ds |
  s4 as'16 gs as es  s4 as16 gs as ds, |
  s4 as'16 gs as ds,  s4 gs16 fss gs ds |
  s4 as'16 gs as es  s4 as16 gs as ds, |
  s4 gss16 fss gss es  s4 as16 gss as es |
  
  \barNumberCheck 9
  s4 bs'16 as bs fs  s4 bs16 as bs gs |
  s4 cs16 bs cs fs,  s4 gs16 fs gs fs |
  s4 gs16 fs gs fs  s4 gs16 fs gs es |
  s4 fs16 es fs ds  s4 fs16 es fs ds |
  s4 es16 ds es cs  s4 fs16 es fs cs |
  s4 fs16 es fs ds  s4 es16 ds es css |
  s4 es16 ds es css  s4 ds16 cs ds cs |
  s4 ds16 cs ds bs  s4 cs16 b cs b |
  
  \barNumberCheck 17
  s4 cs16 bs! cs as  s4 cs16 bs cs as |
  s4 bs16 as bs gs  s4 cs16 bs cs gs |
  s4 ds'16 cs ds as  s4 ds16 cs ds gs, |
  s4 ds'16 cs ds gs,  s4 cs16 bs cs gs |
  s4 ds'16 cs ds as  s4 ds16 cs ds b |
  s4 ds16 cs ds b  s4 ds16 css ds css |
  s4 ds16 cs! ds b  s4 es16 ds es css |
  s4 e16 ds e cs  s4 ds16 cs ds cs |
  
  \barNumberCheck 25
  \time 3/8
  s4. * 8 |
  
  \barNumberCheck 33
  s4. * 8 |
  
  \barNumberCheck 41
  s4. * 8 |
  s4 \voiceDown r16 fs, |
  es4. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  gs8 gs cs cs  b b b b |
  as8 as fs fs  bs! bs bs bs |
  cs8 cs cs cs  gs gs es es |
  as8 as as as  gs gs ds gs |
  gs8 gs gs gs  fss fss fss fss |
  gs8 fss es fss  gs gs bs bs |
  as8 es css as  ds ds fs! fs |
  bs,8 bs es es  es es cs' cs |
  
  \barNumberCheck 9
  bs8 fs' ds bs  es es es es |
  cs8 cs as as  ds ds bs bs |
  gs8 gs bs bs  cs cs b b |
  as8 as as as  b b b b |
  gs8 gs gs gs  as as as as |
  ds,8 ds ds ds  es es as as |
  b8 b b b  as as as as |
  gs8 gs gs gs  gs gs gs gs |
  
  \barNumberCheck 17
  fs8 fs fs fs  fs fs fs fs |
  ds8 ds ds ds  cs cs gs cs |
  cs8 cs bs as  bs bs bs bs |
  cs8 bs as bs  cs cs es es |
  ds8 fss as fss  ds ds gs gs |
  gs8 gs gs gs  gs gs gs gs |
  gs8 gs gs gs  b b b b |
  as8 as as as  as as as as |
  
  \barNumberCheck 25
  \time 3/8
  gs8 r r |
  r as16 gs as bs |
  \appoggiatura { bs8 } cs4.~ |
  cs8 bs es |
  as,8 ds4~\mordent |
  ds8 cs4~ |
  cs8 bs16 as bs cs |
  ds8 gs, cs |
  
  \barNumberCheck 33
  \voiceUp fs4.~ |
  fs16 es8. gs8~ |
  gs16 \voiceDown es cs es ds cs |
  bs8 \voiceUp bs' es,~ |
  es16 es fs!4~ |
  fs16 es~ es4 |
  fss16 ds gs fss gs8~ |
  gs16 gs fss es fss8 |
  
  \barNumberCheck 41
  gs8 ds16 cs ds es |
  fs4.~ |
  fs8 es as |
  gss4 gs8~ |
  gs8 fss fs ~ |
  fs8 es e |
  ds4.~ |
  ds8 cs ds~ |
  ds16 cs8 as16 bs8 |
  gs4. |
}

leftHandLower = \relative {
  \voiceTwo 
  cs4 r cs r |
  cs4 r cs r |
  cs4 r cs r |
  cs4 r bs r |
  as4 r ds r |
  gs,4 r gs r |
  gs4 r fs r |
  es4 r as r |
  
  \barNumberCheck 9
  as'4 r gs r |
  as4 r bs r |
  es,4 r es r |
  fs4 r gs r |
  cs,4 r fs r |
  bs,!4 r css r |
  ds4 r ds r |
  ds4 r cs r |
  
  \barNumberCheck 17
  fs,4 r fs r |
  fs4 r es r |
  ds4 r gs r |
  cs,4 r cs r |
  cs'4 r b r |
  e4 r es r |
  ds4 r ds r |
  ds4 r ds r |
  
  \barNumberCheck 25
  \time 3/8
  gs,8 r r |
  R4. * 4 |
  r8 es'16 ds es fs |
  gs4.~ |
  gs8 es as |
  
  \barNumberCheck 33
  ds, gs gs, |
  cs8 cs'16 ds cs bs |
  as4.~ |
  as16 as gss fss gss es |
  \oneVoice as8 as,16 gs! as bs |
  cs4.~ |
  cs8 bs es |
  as,8 ds ds, |
  
  \barNumberCheck 41
  gs16 fss gs as bs cs |
  ds16 css ds es fs gs |
  as16 gss as bs cs ds |
  es16 ds es fs es ds |
  css16 as ds es ds cs |
  bs16 gs cs b as gs |
  fss16 ds gs as gs fs |
  es16 fs es ds es fs |
  \voiceTwo gs8 fs, gs |
  cs,4._\fermata |
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
  \tempo 4 = 76
  s1 * 24 |
  \tempo 4. = 60
  s4. * 24 |
  \tempo 4. = 54 s8 \tempo 4. = 48 s \tempo 4. = 42 s |
  \tempo 4. = 36 s4. |
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
  s4. * 7 \break
  s4. * 6 \break
  s4. * 6 \break
}

preludeThreeNotes =
\score {
  \header {
    title = "Prelude 3"
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

preludeThreeMidi =
\book {
  \bookOutputName "prelude-3-bwv-872"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
