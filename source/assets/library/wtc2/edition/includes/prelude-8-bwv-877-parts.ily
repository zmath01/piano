%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% TODO none

%%% Music %%%

global = {
  \time 4/4
  \key ds \minor
  \set Score.extraNatural = ##f
}

rightHand = \relative {
  \global
  \repeat volta 2 { 
    ds'16 fs es gs  fs as gs b  as ds css bs  as gs fs es |
    ds8 css ds ds'  css16\prall bs as8 r css\turn |
    ds16 fs es gs  fs es ds cs!  b!8 ds gs4~\mordent |
    gs16 es fs ds  es gs cs, b  as8 cs fs4~\mordent |
    fs16 es ds css  ds fs gs, fs'  es ds cs bs  cs es fs, e' |
    ds16 cs b! as  b ds es,! ds'  b ds fs, ds'  \stemUp b ds gs, ds' |
    cs16 b as gs  as cs ds, cs'  as cs es, cs'  as cs fs, cs' |
    b16 as gs fs  gs b cs, b'  gs b ds, b' gs b es, b' \stemNeutral |
    
    \barNumberCheck 9
    as16 fs es ds'  cs as fs fs'  es\prall ds cs8 r4 |
    fs,16 as gs b  as cs b ds  cs fs es ds  cs b as gs |
    as16 cs bs ds  cs es ds fs  es as gss fss  es ds cs bs |
    cs8 gss as fs'!  gss,32 fss es16 ds'8  r16 gss, as bs |
    es,16 cs' bs ds  cs bs as gss  cs as gss bs  as gs fs es |
    ds16 cs' bs ds  cs bs as gss  fss' cs bs as  gss'8.\trill fss32 gss |
    as16 gs!32 fs! es16 ds  cs as' bs, gss'  as as, ds32 cs bs16  cs bs32 as
      gss as bs16 |
    es,32 as gs! fs es16 ds  cs bs32 cs ds cs bs16  as cs es gss  gss8( as) |
  }
  \repeat volta 2 { 
    \barNumberCheck 17
    gs'!16 es32 css as8~  as16 css32 es fs es ds16  css16 es32 gs b!8~  b16
      es,32 ds es fs gs16 |
    fs16 es ds css  ds fs gs, fs'  ds fs as, fs'  ds fs bs, fs' |
    cs!16 es ds fs  es gs fs as  gs b as gs  fs es ds cs |
    fs16 b, as gs  as e'8 ds16  cs fs8 e16  ds fs b fss |
    gs16 e ds fs!  e ds cs bs  e cs b ds  cs b as gs |
    fss8 as ds4~\mordent  ds16 b cs as  b ds gs, fs |
    e8 gs cs4~\mordent  cs16 e, ds css  ds8. as'16 |
    ds16 cs!32 b as b cs16  b gs' as, fss'  gs e ds cs  ds gs, fss cs' |
    
    \barNumberCheck 25
    b16 as gs fss  gs b cs, b'  gs b ds, b'  gs b es, b' |
    as16 gs fs es  fs as bs, as'  fs as css, as'  fs as ds, as' |
    gs16 fs es ds  es gs as, gs'  es gs bs, gs'  es gs css, gs' |
    fs16 as css es  as, css es gs  fs32 es ds16 es8 r4 |
    ds,16 fs es gs  fs as gs b  as ds css bs  as gs fs es |
    fs16 as gs b!  as gs fs es  ds fs es gs  fs es ds css |
    ds16 gs fss as  gs fs es ds  css es ds fs  es ds css bs |
    as8 as'  gs16 fs es fs  ds fss es gs  fss as gs b |
    
    \barNumberCheck 33
    as16 cs b as  gs fss es! ds  ds' bs32 gss es8~  es16 gss32 bs cs bs as16 |
    gss16 bs32 ds fs8~  fs16 bs,32 as bs css ds16  css es ds fs  es gs! fs as |
    gs16 b! as gs  fs es ds css  ds es32 fs gs fs es16  fs es32 ds css ds
      es16 |
    as,32 ds cs! b as16 gs  fs es32 fs gs fs es16  ds fs as css  css8( ds) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 { 
    ds4\mordent ds, r2 |
    ds'16 fs es gs  fs as gs b  as ds css bs  as gs fs es |
    fs8 css ds fs  gs16 b! as cs!  b as gs fs |
    es8 gs cs4~\mordent  cs16 as b gs  as cs fs, es |
    ds8 fs b4\mordent  cs,8 es as4\mordent |
    b,8 ds gs cs,  ds b' gs es |
    as,8 cs fs b,  cs as' fs ds |
    gs,8 b es as,  b gs' es cs |
    
    \barNumberCheck 9
    fs,16 as gs b  as cs b ds  cs fs es ds  cs b as gs |
    as8 cs fs gs  as b cs cs, |
    fs8 ds es bs  cs ds es es, |
    as16 cs bs ds  cs es ds fs  es as gss fss  es ds cs bs |
    cs16 es ds fs  es ds cs bs  as cs bs ds  cs bs as gs |
    fss as gss bs  as gs fs es  dss8 dss'  r16 fs! es ds |
    cs16 bs cs ds  es fs ds es  fs8 fs, es ds |
    cs8 cs'16 ds  es8 es, as2 |
  }
  \repeat volta 2 { 
    \barNumberCheck 17
    as16 css bs ds  css es ds fs  es gs fs es  ds css! bs! as |
    ds8 fs bs es,  fs ds' bs gs |
    b!16 gs32 es cs8~  cs16 es32 gs as gs fs16  es gs32 b ds8~  ds16 gs,32
      fs gs as b16 |
    as16 gs fs es  fs as b, as'  fs as cs, as'  fs as ds, as' |
    e16 gs fs a  gs fs e ds  cs8 e as4~\mordent |
    as16 fss gs es!  fss as ds, cs  b8 ds gs4~\mordent |
    gs16 fs e ds  e gs cs, b  as gs' fss es  fss as ds, cs! |
    b8 e cs ds  gs, as b as |
    
    \barNumberCheck 25
    gs8 b es! as,  b gs' es cs |
    fs, as ds gs,  as fs' ds b! |
    es,8 gs css fs,  gs es' css as |
    ds,16 fs es gs  fs as gs b  as ds css bs  as gs fs es |
    fs as css es  as, css es gs  fs32 es ds16 es8  r as |
    ds,8 b'! cs,! as'  b, gs' as, as' |
    b16 gs as cs  b as gs b  as es fs as  gs fs es gs |
    fs css ds fs  as8 as,  cs'!16 as32 fss ds8~  ds16 fss32 as b! as gs16 |
    
    \barNumberCheck 33
    fss16 as32 cs e8~  e16 as,32 gs as b cs16  es,! gss fss! as  gss bs as cs |
    bs16 ds cs bs  as gss fss es  gs es32 css as8~  as16 css32 es as8~ |
    as16 gs32 es css16 b'  as gs32 fs es fs gs16  fs8 b, as gs |
    fs8 fs'16 gs  as8 as, ds,2 |
  }
}

tempi = {
  \repeat volta 2 { 
    \tempo 4 = 76
    s1 * 15 |
    s2 \tempo 4 = 66 s4 \tempo 4 = 56 s |
  }
  \repeat volta 2 { 
    \tempo 4 = 76
    s1 * 19 |
    s2 \tempo 4 = 66 s4 \tempo 4 = 56 s |
  }
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
}

preludeEightNotes =
\score {
  \header {
    title = "Prelude 8"
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

preludeEightMidi =
\book {
  \bookOutputName "prelude-8-bwv-877"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
