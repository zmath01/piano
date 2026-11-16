%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

%% The rhythmic motif 8. 32 32 32 is mathematically incorrect, but it's clear
%% from the manuscript that it should be played 8~ 32 32 32 32.  Therefore
%% the LilyPond source for the rhythm is written 8.*5/6 32 32 32.

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO None

%%% Music %%%

global = {
  \time 3/4
  \key fs \major
  \set Score.extraNatural = ##f
}

rightHand = \relative {
  \global
  cs''8.*5/6 b32 as gs  fs4. r16 fs' |
  es8. fs32 gs  cs,4. r16 fs |
  b,8. ds16 gs,8. b16 es,8. cs'16 |
  as16 cs fs, gs  as fs cs' as  fs as gs fs |
  gs16 cs es, fs  gs es cs' gs  es gs fs es |
  fs16 as ds, es  fs ds as' fs  ds fs es ds |
  es16 gs cs, ds  es cs gs' es  cs b' as gs |
  as16 cs fs, gs  as fs cs' as  fs gs fs es |
  
  \barNumberCheck 9
  ds16 as' ds, es  fss ds as' fss  ds cs' bs as |
  \stemDown bs16 ds gs, as  \stemNeutral bs gs ds' bs  gs as gs fs! |
  es16 bs' es, fss  gss es bs' gss  es ds' cs bs |
  cs8. as16 fs'!4~\parenthesize \mordent fs8.*5/6 es32 ds cs |
  ds8. bs16 gs'4~ gs8.*5/6 fs32 es ds |
  es8. cs16 as'8.*5/6 gs32 fs es  ds8. fs16 |
  \appoggiatura { cs8 } bs8.*5/6 ds32 es fs  gs8. bs,16 cs8. gs16 |
  as8.*5/6 gs32 fs es  ds8. cs'16 gs8. bs16 |
  
  \barNumberCheck 17
  cs16 gs cs ds  es cs gs' es  cs es ds cs |
  ds16 gs gs, as  bs gs ds' bs  gs fs' es ds |
  cs16 gs cs ds  es cs gs' es  cs b' as gs |
  fs8.*5/6 b,32 as gs  fs4. r16 fs' |
  es8. fs32 gs  cs,4~ cs16 ds cs b |
  \tag layout { as8.\prall } \tag midi { as8.\trill } gs32 fs  e'8. cs16 as8.
    e'16 |
  ds16 fs b, cs  ds b fs' ds  b ds cs b |
  cs16 fs as, b  cs as fs' cs  \stemDown as cs b as |
  
  
  \barNumberCheck 25
  b16 ds gs, as  b gs ds' b  \stemNeutral gs b as gs |
  as8. cs16 \tag layout { cs8.\prall } \tag midi { cs8.\trill } bs32 cs
    \tag layout { cs8.\prall } \tag midi { cs8.\trill } bs32 cs |
  gs8. cs16 \tag layout { cs8.\prall } \tag midi { cs8.\trill } bs32 cs
    \tag layout { cs8.\prall } \tag midi { cs8.\trill } bs32 cs |
  fs,8. cs'16 as'8. cs,16 \tag layout { bs8.\prall } \tag midi { bs8.\trill }
    cs16 |
  cs4. r32 cs ds es  \tag layout { es8.\prall } \tag midi { es8.\trill } ds32
    es |
  fs16 cs fs, gs  as fs cs' as  e gs fs e |
  ds4. r32 ds' css ds  \tag layout { ds8.\prall } \tag midi { ds8.\trill }
    css32 ds |
  es16 b es, fs  gs es b' es,  ds fs es ds |
  
  \barNumberCheck 33
  css8. ds32 es  as,4~ as16 gs' fs! es |
  ds16 fs as fs  ds' as fs' ds  as ds css bs |
  css16 es as, bs  css as gs' es  css b'! as gs |
  fs16 as ds, es  fs ds as' fs  ds fs es ds |
  es16 as as, bs  css as es' css  as gs' fs es |
  fs8. css16 ds8.*5/6 fs,32 es ds  \tag layout { gss8.\prall }
    \tag midi { gss8.\trill } fss32 gss |
  as16 es as bs  cs as es' cs  as' gs! fs! es |
  ds16 css ds8 r  r32 ds es fss  gs8. gs16 |
  
  \barNumberCheck 41
  gs16 es css ds  es css gs b  \appoggiatura { ds,8 } css8. b'16 |
  as8.*5/6 gs32 fs es  ds4. r16 ds' |
  \appoggiatura { ds8 } css8.*5/6 ds32 es fs  gs4. r16 as |
  \appoggiatura { gs8 } fs8. es16  \tag layout { css4.\lineprall }
    \tag midi { css4.\trill } ds8 |
  ds16 as fs gs  as fs ds' as  fs gs fs es |
  fss16 ds' fss, gs  as fss ds' as  fss as gs fss |
  \stemDown gs16 ds' gs, as  \stemNeutral b gs ds' b  gs b as gs |
  as16 ds as b  cs as e' cs  \stemDown as cs b as |
  
  \barNumberCheck 49
  \stemNeutral b8. fss16 gs8. b16  ds8.*5/6 gs32 fs! es! |
  fs8. fss,16 gs8. bs16  ds8.*5/6 fs!32 es ds |
  es8. fss,16 gs8. cs16  es8.*5/6 gs,32 fs es |
  fs8. as16 ds,8. cs'16  \tag layout { bs8.\prall } \tag midi { bs8.\trill }
    as32 bs |
  cs16 gs es fs  gs es cs' gs  es fs es ds |
  cs16 gs' es fs  gs es cs' gs  es gs fs es |
  fs16 cs' fs, gs  as fs cs' as  fs as gs fs |
  gs16 cs gs as  b gs ds' b  gs b as gs |
  
  
  \barNumberCheck 57
  as16 cs32 \sdb1 b  as gs fs es  fs4. r16 fs' |
  es8. fs32 gs cs,4. r16 fs |
  b,8. ds16 gs,8. b16 es,8. cs'16 |
  as16 cs fs, gs  as fs cs' as  fs e' ds cs |
  ds16 fs b, cs  ds b fs' ds  \stemDown as cs b as |
  gs16 ds' gs, as  \stemNeutral bs gs ds' bs  gs fs' es ds |
  es16 gs cs, ds  es cs gs' es  b! ds cs b |
  as16 es' as, bs  css as es' css  as gs' fs es |
  
  \barNumberCheck 65
  fs8. ds16 b'4~ b8.*5/6 as32 gs fs |
  gs8. b16 cs,4~  cs16 ds32 es fs16 gs |
  as8. gs16 \tag layout { es4.\lineprall } \tag midi { es4.\trill } fs8 |
  fs16 as cs, es  fs cs as' fs  cs gs' fs es |
  fs16 cs as b  cs as fs' cs  as b as gs |
  fs16 a bs, es!  fs bs, a' fs  bs, gs' fs es |
  fs16 a cs b!  a cs fs, a  cs a cs es |
  fs16 a ds, es  fs ds a' fs  ds fs es ds |
  
  \barNumberCheck 73
  <<
    { 
      <es gs>4 b8\rest b16\rest es  fs16. es64 ds cs32 b as gs |
      fs8. ds'16  fs,4( es8.)\prall fs16 |
      fs2. |
    }
    \\
    { 
      <gs cs>4 s8. q16 <fs cs'> r r8 |
      r8. fs16 cs2 |
      cs2. |
    }
  >> 
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  fs8. gs16 as8. gs16 as8. fs16 |
  cs'8. b16 as8. ds16 cs8. ds16 |
  gs,8. as16 b8. gs16 cs8. cs,16 |
  fs8. cs'16 cs8. cs16 as8. cs16 |
  es,8. cs'16 cs8. cs16 gs8. cs16 |
  ds,8. cs'16 cs8. cs16 fs,8. bs16 |
  cs,8. gs'32 as  b!8. gs16 es8. cs16 |
  fs8. cs16 fs,4 r |
  
  \barNumberCheck 9
  fss'8. as32 b  cs8. as16 fss8. ds16 |
  gs8. ds16 gs,4 r |
  gss'8. bs32 cs  ds8. bs16  gss8. es16 |
  as4~ as8.*5/6 as32 bs cs  ds8. fs16 |
  bs,4~ bs8.*5/6 cs32 bs as  bs8. gs16 |
  cs16 cs, ds es  fs fs, fs' es  fs fs, fs' es |
  fs4~ fs8.*5/6 ds32 es fs  es8.*5/6 cs32 ds es |
  fs8. ds16 gs8.*5/6 as32 gs fs  gs8. gs,16 |
  
  \barNumberCheck 17
  \stemDown cs8.*5/6 es32 ds cs  \stemNeutral gs'4. r16 cs |
  bs8. cs32 ds gs,4~ gs16 as gs fs |
  es8. ds32 cs  b'!8. gs16 es8. b'16 |
  as16 cs fs, gs  as fs cs' as  fs as gs fs |
  gs16 cs cs, ds  es cs gs' es  cs b' as gs |
  fs16 cs fs gs  as fs cs' as  fs e' ds cs |
  b8. fs16 fs8. b16 ds8. fs,16 |
  as8. fs16 fs8. as16 cs8. fs,16 |
  
  \barNumberCheck 25
  gs8. fs16 fs8. gs16 b8. es,16 |
  fs16 cs' fs, gs  as fs cs' as  fs as gs fs |
  es16 cs' es, fs  gs es cs' gs  es gs fs es |
  ds16 cs' ds, es  fs ds cs' fs,  ds fs es ds |
  cs16 cs' cs, ds  es cs gs' es  b! ds cs b |
  as4. r32 fs' gs as  \tag layout { as8.\prall } \tag midi { as8.\trill } gs32
    as |
  b16 fs b, cs  ds b fs' ds  as cs b as |
  gs4. r32 gs' fss gs  \tag layout { gss8.\prall } \tag midi { gss8.\trill }
    fss32 gss |
  
  \barNumberCheck 33
  as16 es as, bs  css as es' css  gs! b as gs |
  fs8. as'16 as8. fs16 fs8. ds16 |
  es,8. as'16 as8. es16 es8. css16 |
  ds,8. as''16 as8. ds,16 ds8. bs16 |
  css,8. as''16 as8. css,16 css8. as16 |
  ds16 as' ds, es  fs ds as' fs  ds fs es ds |
  cs!16 as' cs, ds  es ds as' es  \stemDown cs es ds cs |
  \stemNeutral b!16 as' b, cs!  ds b gs' ds  b ds cs b |
  
  \barNumberCheck 41
  as16 as' as, bs  css as es' css  gs b as gs |
  fs16 as ds es  fs ds fs gs  as fs b b |
  b4~ b8.*5/6 as32 gs fs  es8. css'16 |
  ds8. gs,16  as8.*5/6 b32 as gs  as8. as,16 |
  ds8. ds'16 ds8. ds16 as8. ds16 |
  cs,8. ds'16 ds8. ds16 as8. ds16 |
  b,8. ds'16 ds8. ds16 b8. ds16 |
  fss,8. ds'16 ds8. ds16 cs8. ds16 |
  
  \barNumberCheck 49
  gs,16 ds gs, as  b gs ds' b  gs cs b as |
  bs16 gs' bs, cs  ds bs gs' ds  bs ds cs bs |
  cs16 gs' cs, ds  es cs gs' es  \stemDown cs es ds cs |
  \stemNeutral ds16 gs ds es  fs ds as' fs  ds fs es ds |
  es16 gs cs gs  es gs cs, es  gs cs, gs' as |
  b8.*5/6 cs32 b as  b4~ b8.*5/6 gs32 as b |
  as16 fs as gs  fs as cs, fs  as fs gs as |
  es8. cs'16  \stemDown cs,8.*5/6 cs32 ds es  \tag layout { es8.\prallprall }
    \tag midi { es8.\trill } ds32 es |
  
  \barNumberCheck 57
  \stemNeutral fs8. gs16 as8. gs16 as8. fs16 |
  cs'8. b16 as8. ds16 cs8. ds16 |
  gs,8. as16 b8. gs16 cs8. cs,16 |
  fs8. e32 ds  \stemUp e8. cs16 \stemNeutral as8. fs16 |
  b8. fs'16 b4 r |
  bs,8. ds32 es  fs8. ds16 bs8. gs16 |
  cs8. gs'16 cs4 r |
  css,8. es32 fs  gs8. es16 css8. as16 |
  
  \barNumberCheck 65
  ds4~ ds8.*5/6 ds32 es fs  gs8. b16 |
  es,4~ es8.*5/6 fs32 es ds  es8. cs16 |
  fs8. b16 cs8.*5/6 gs32 as b 
    \mergeDifferentlyDottedOn
    << 
      { cs,8. b'16 | as8 s } 
      \\ 
      { cs,4 | fs8. cs'16 } 
    >> cs8. cs16 as8. cs16 |
  e,8. cs'16 as8. e16 e8. ds16 |
  ds8. a'16 a8. a16 fs8. a16 |
  cs,8. es16 fs8. cs16 cs8. bs16 |
  bs8. bs'16 bs8. ds16 gs,8. fs16 |
  
  \barNumberCheck 73
  << { es4 } \\ { b! } >> r8 r16 b' as!8 r |
  r8. 
    <<
      { as16 gs8. as16 b!4 | as2. | }
      \\
      { bs,16 cs2 | fs,2. | }
    >> 
}

tempi = {
  \tempo 4 = 63
  s2. * 71 |
  s2 \tempo 4 = 58 s4 |
  \tempo 4 = 54 s2. |
  s4 \tempo 4 = 50 s \tempo 4 = 40 s |
  s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  
}

preludeThirteenNotes =
\score {
  \header {
    title = "Prelude 13"
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

preludeThirteenMidi =
\book {
  \bookOutputName "prelude-13-bwv-882"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
