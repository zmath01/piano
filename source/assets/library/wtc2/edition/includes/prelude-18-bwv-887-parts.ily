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

%%% Music %%%

global = {
  \time 4/4
  \key gs \minor
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  \repeat volta 2 {
    gs'16 as b cs  ds b as gs  fss gs as e  ds r r8 |
    r8 \voiceOne b' \appoggiatura { b } cs4 b8\rest b \appoggiatura { b } as4 |
    \oneVoice gs16\p as b cs  ds b as gs  fss gs as e  ds r r8 |
    r8 \voiceOne gs' \appoggiatura { gs } as4 b,8\rest gs' 
      \appoggiatura { \moveNoteA gs } fss4 
    b,8\rest\f b16 as  b8 gs' b,\rest b b\rest as16 gs |
    b8\rest as16 gs  as8 fs' b,\rest as b\rest gs16 fs |
    b8\rest gs16 fs  gs8 es' b\rest gs b\rest fs16 es |
    fs4 \oneVoice r16 as gs fs  es ds es gs  fss es fss as |
    
    \barNumberCheck 9
    as8( gs)  r16 fs! e! ds  cs bs cs e  ds cs ds fs |
    fs8( e)  \clef bass r16 ds cs b!  as! gs as cs  bs as bs ds |
    gs,16 fss gs b!  as gs as cs  fss, e' ds cs  \clef treble as' cs, as' cs, |
    bs16 a' gs fs  ds' fs, ds' fs,  es d' cs b  gs' b, gs' b, |
    as g fs e!  cs' e, cs' e,  ds fs gs as  b fs es ds |
    css16 b' as gs  es' gs, es' gs,  fs as ds es  fs ds bs ds |
    gss,16 fs' es ds  bs' ds, bs' ds,  css ds es as  as, r r8 |
    s4. \voiceOne b'8 b as b,4\rest |
    
    \barNumberCheck 17
    b8\rest fs' \appoggiatura { \moveNoteA fs } gs4 b,8\rest fs' 
      \appoggiatura { fs } es4 |
    \oneVoice r8 ds  ds16\prall css ds8  r ds  cs16 b cs as' |
    \voiceOne b,8 r cs r b r as r |
    r8 es'16 ds  es8 gs  css, es as,4~ |
    as8 as16 gs  as8 fs' b,\rest ds b\rest bs |
    b8\rest gs16 fs  gs8 es'  b\rest cs b\rest as |
    b8\rest gss as ds  b\rest ds css b' |
    as4 r16 as es gs  gs8 fss b,4\rest |
  }
  \repeat volta 2 {
    \barNumberCheck 25
    \oneVoice ds16 es fss gs  as e ds cs  bs cs ds a  gs fs! e ds |
    e16 cs' e, cs'  es, d' es, d'  cs a gs fs  es d' cs b |
    as!16 b cs ds!  e b a? gs  fss gs as e  ds cs b as |
    b16 gs' b, gs'  bs, a' bs, a'  gs e ds cs  bs a' gs fs |
    es16 fs gs as?  b! d cs b  as b cs gs  fs e ds! cs |
    ds e fs gs  a cs b a  gs a b fs  e d cs b |
    \voiceOne cs8 a' \appoggiatura { a } b4 b8\rest a \appoggiatura { a } gs4 |
    b8\rest fs16 gs  a8 cs  b\rest e ds cs |
    
    \barNumberCheck 33
    b8\rest b16 as  b8 ds  b\rest fs'! es ds |
    css16 s8.  \oneVoice es16 gs, es' gs,  fss e' ds cs  as' cs, as' cs, |
    bs16 a gs fs!  ds' fs, ds' fs,  es d' cs b  gs' b, gs' b, |
    as16 cs ds es  fs8 as,  gss fs' es gs, |
    fss16 as bs css  ds8 fs,  es d' cs e, |
    ds16 fss gs as  b8 ds,  css b' as cs, |
    bs8 a' gs b,  as! gs' fss a, |
    \voiceOne gs8 fs'! es e  e ds \oneVoice r4 |
    
    \barNumberCheck 41
    gs16 as b cs  ds b as gs  fss gs as e  ds r r8 |
    r8 \voiceOne gs' \appoggiatura { gs } as4  b,8\rest gs' 
      \appoggiatura { \moveNoteA gs } fss4 |
    b,16\rest fss gs as  b32 as gs16 e'8  e ds b4\rest |
    b8\rest b cs( bs)  b\rest cs fs ds |
    b8\rest e fs( es)  b\rest as' as as |
    as4  \oneVoice r16 e ds cs  b cs ds gs,  b as gs fss |
    gs16 b gs b  fs! ds' fs, ds'  es, cs' es, cs'  cs, b' cs, b' |
    fs16 as! fs as  e! cs' e, cs'  ds, b'! ds, b'  b, as' b, as' |
    
    \barNumberCheck 49
    e16 gs! e gs  ds b' ds, b'  css, as' css, as'  as, gs' as, gs' |
    \voiceOne fss16 ds gs as  b8 as~  as gs \oneVoice r4 |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1 |
    s8 \voiceFour gs' \appoggiatura { gs } as4 s8 gs \appoggiatura { gs }
      fss4 |
    s1 |
    s8 b \appoggiatura { b } cs4 s8 b \appoggiatura { b } as4 |
    s8 gs16 fss  gs8 b s gs s es |
    s8 fs16 es  fs8 as s fs s ds |
    s8 css16 ds  es8 gs s es s css |
    ds4 s2. |
    
    \barNumberCheck 9
    s1 * 7 |
    b'16\rest css ds es   fs32 es ds16 gs8  gs css, s4 |
    
    \barNumberCheck 17
    s8 ds \appoggiatura { ds } es4 s8 ds \appoggiatura { ds } css4 |
    s1 |
    r8 ds,  ds16\prall css ds8  r e32 ds css16  ds8 ds' |
    gs,2~ gs8. fs16  es ds es css |
    ds8 fs16 es  fs8 as s fs  s es16 ds |
    s8 es16 ds  es8 gs s es s ds16 css |
    s8 fs16 es  fs ds bs'8  s8 bs16 as  b gs gs'8~ |
    gs8 fs32 es ds16  css4~ css8 ds s4 |
  }
  \repeat volta 2 {
    \barNumberCheck 25
    s1 * 6 |
    s8 cs, \appoggiatura { cs } d4 s8 cs \appoggiatura { cs } b4 |
    s8 a16 b  cs8 gs'  s fss gs as |
    
    \barNumberCheck 33
    s8 gs16 fss  gs8 as  s gss as bs |
    es,16 b'! as gs s2. |
    s1 * 5 |
    s4 r8 gs,  gs fss s4 |
    
    \barNumberCheck 41
    s1 |
    s8 b' \appoggiatura { b } cs4 s8 b \appoggiatura { b } as4 |
    s4. cs8  cs fss, s4 |
    s8 gs a( gs)  s gs a fs |
    s8 gs d'( cs) s 
      << 
        { cs cs cs | cs4 } 
        \new Voice { \voiceThree e16 ds e8 e | e4 } 
      >> s2. |
    s1 * 2 |
    
    \barNumberCheck 49
    s1 |
    << 
      { r16 ds,8.~  ds16 ds8 cs16~  cs8 b } 
      \new Voice { s8 \voiceFour gs'~ \voiceThree gs[ fss]~  fss[ ds] } 
    >> s4 |
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    \voiceThree ds'4 s cs s |
    s1 |
    ds4 s cs s |
    s1 * 5 |
    
    \barNumberCheck 9
    s1 * 8 |
    
    \barNumberCheck 17
    s1 * 8 |
  }
  \repeat volta 2 {
    \barNumberCheck 25
    s1 * 8 |
    
    \barNumberCheck 33
    s1 * 8 |
    
    \barNumberCheck 41
    s1 * 6 |
    s4. << { a8 } \new Voice { \voiceFive ds, } >>  s gs gs gs |
    fs4 s8 << { g } \new Voice { \voiceFive cs, } >>  s fs fs fs |
    
    \barNumberCheck 49
    e4 s8 << { fs } \new Voice { \voiceFive b, } >>  s es es e |
    ds8 s4. s2 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    << 
      { \voiceTwo gs4 d\rest gs } 
      \new Voice { \voiceFive b s as } 
    >> \oneVoice r16 cs b as |
    gs16 ds' gs, ds'  fss, ds' fss, ds'  gs, ds' gs, ds'  ds, ds' ds, ds' |
    << 
      { \voiceTwo gs,4 d\rest gs } 
      \new Voice { \voiceFive b s as } 
    >> \oneVoice r16 cs b as |
    gs16 ds' gs, ds'  fss, ds' fss, ds'  gs, ds' gs, ds'  ds, ds' ds, ds' |
    gs,16 ds' gs, ds'  fs,! ds' fs, ds'  es, cs' es, cs'  cs, cs' cs, cs' |
    fs,16 cs' fs, cs'  es, cs' es, cs'  ds, b' ds, b'  b, b' b, b' |
    es,16 b' es, b'  ds, b' ds, b'  css, as' css, as'  as, as' as, as' |
    ds,16 fs gs as  b8 ds,  css b' as cs, |
    
    \barNumberCheck 9
    bs16 ds es fss  gs8 b,!  as fss'! fs a, |
    gs16 bs cs ds  e8 gs,  fss e' ds fs, |
    es8 d' cs e,  ds es fss ds |
    gs8 as! bs gs  cs ds es cs |
    fs8 gs! as fs  b as gs fs |
    es8 ds css as  ds cs bs as |
    bs8 as gss es  as r  \clef treble r16 gs''! fs es |
    ds16 es fs gs  as fs es ds  css ds es b  \clef bass as gs fs es |
    
    \barNumberCheck 17
    ds16 as' ds, as'  css, as' css, as'  ds, as' ds, as'  as, gs' as, gs' |
    \stemUp b,16 fs' b, fs'  as, fs' as, fs'  b, fs' b, fs'  fss, e' fss, e' |
    \stemNeutral gs,16 ds' gs, ds'  fss, ds' fss, ds'  gs, ds' gs, ds'
      fs, ds' fs, ds' |
    es,16 ds' css bs  css gs' es gs  as, as' bs, as'  css, as' as, gs' |
    ds16 fs ds fs  cs! as' cs, as'  bs, gs' bs, gs'  gs, gs' gs, fs' |
    cs16 es cs es  bs gs' bs, gs'  as, fs' as, fs'  fs, fs' fs, es' |
    bs16 ds bs ds  as fs' as, fs'  gss, es' gss, es'  es, es' es, ds' |
    css16 as ds fs  as8 as,  ds,8. fss32 as ds4 |
  }
  \repeat volta 2 {
    \barNumberCheck 25
    r8 ds16 es  fss8 as  ds cs bs gs |
    cs8 cs, b! b'!  a a, gs gs' |
    fs8 fs, cs' e  as,! cs fss, ds' |
    gs8 gs, fs! fs'!  e8 e, ds ds' |
    cs8 cs,  r16 cs'' ds! es  fs8 fs,  r16 fs gs as |
    b8 b,  r16 b cs ds  e8 e,  r16 e fs gs |
    a16 e' a, e'  gs, e' gs, e'  a, e' a, e'  es, d' es, d' |
    fs,16 cs' fs, cs'  e,! cs' e, cs'  ds, fss as! cs  b as gs fss |
    
    \barNumberCheck 33
    gs16 ds' gs, ds'  fs,! ds' fs, ds'  es, gss bs ds  cs bs as gss |
    as8 bs css as  ds es fss ds |
    gs8 as bs gs  cs ds! es cs |
    fs4 r16 es ds cs  bs as bs ds  css bs css es |
    es8( ds)  r16 cs! b! as  gs fss gs b  as gs as cs |
    cs8( b)  r16 as gs fs!  es ds es gs  fss es fss as |
    ds, css ds fs!  e! ds e gs  css, bs css es  ds css ds fs |
    bs,16 as! bs ds  cs! bs cs e  as, b cs as  ds, fss as cs |
    
    \barNumberCheck 41
    b16 as gs as  b cs ds e  e8( fss,)  r16 cs'' b as |
    gs16 ds' gs, ds'  fss, ds' fss, ds'  gs, ds' gs, ds'  ds, ds' ds, ds' |
    gs,16 as b cs  ds b as gs  fss gs as e  ds cs b as |
    gs16 gs' gs, gs'  fs ds' fs, ds'  e, cs' e, cs'  ds, bs' ds, bs' |
    cs,16 cs' cs, cs'  \clef treble b! gs' b, gs'  as, fss' as, fss'
      gs, gs' gs, gs' |
    fss16 gs as e  \clef bass ds cs b as  gs8 b cs ds |
    e8 e, r \voiceTwo bs  d8\rest cs16 ds  es8 es |
    e!8 fs, d'\rest as  d\rest b16 cs  ds8 ds |
    
    \barNumberCheck 49
    ds8 e, d'\rest gs,  d'\rest as16 bs  css8 cs~ |
    cs8 b!16 cs  \oneVoice ds8 ds,  gs8. b32 ds  gs4 |
  }
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
  \repeat volta 2 {
    \tempo 4 = 92
    s1 * 23 |
    \tempo 4 = 84 s4 \tempo 4 = 76 s \tempo 4 = 69 s \tempo 4 = 63 s |
  }
  \repeat volta 2 {
    \tempo 4 = 92
    s1 * 25 |
    \tempo 4 = 84 s4 \tempo 4 = 76 s \tempo 4 = 69 s \tempo 4 = 63 s |
  }
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 3
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page four
  s1 * 2 \break
  s1 * 2 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 2 \break
}

preludeEighteenNotes =
\score {
  \header {
    title = "Prelude 18"
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

preludeEighteenMidi =
\book {
  \bookOutputName "prelude-18-bwv-887"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
