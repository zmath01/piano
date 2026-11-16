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

moveNoteB = \once {
  \override NoteHead.X-extent = #'(1 . 0)
  \override NoteHead.X-offset = 1
}

%%% Music %%%

global = {
  \time 9/8
  \key cs \minor
  \set Score.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne 
  r4. r8 r gs' cs4\mordent e8 |
  \appoggiatura { e8 } ds4.~  ds8. ds16 e fs  gs4\mordent gs8 |
  gs4 cs,8 fs4.~\mordent  fs4 fs8 |
  fs4 gs8 \appoggiatura { fs } e4.~  e8 ds e |
  ds4.  r8 r ds  \appoggiatura { ds } e4 bs8 |
  \appoggiatura { bs8 } cs4.  cs8. e16 ds cs  \appoggiatura { cs8 } a'4 cs,8 |
  \appoggiatura { \moveNoteA cs8 } bs4 gs8 \appoggiatura { gs } cs2.~\mordent |
  cs4 ds8 \appoggiatura { cs } b!2.~ |
  
  \barNumberCheck 9
  b4.  a4\prall gs8  \appoggiatura { gs } a4 b8 |
  \appoggiatura { a8 } gs4 r8  r r gs  cs4.~ |
  cs4 ds8  \appoggiatura { cs } b4.~\prall  b8 as b |
  \appoggiatura { \moveNoteA b8 } as4.~  as4 b8 cs4.~\parenthesize \mordent |
  cs8 e ds  \appoggiatura { ds } e4.~\mordent  e4 cs8 |
  ds4\mordent e8  fs e ds  es gs fss |
  gs8 fss es  fss4 gs8  as4 fss8 |
  gs4 as8  gs4.(  fss4)\prall gs8 |
  
  \barNumberCheck 17
  gs4. r b\rest |
  s2. s4. |
  r4. r8 r gs  \appoggiatura { gs } a!4 fs8 |
  \appoggiatura { e8 } ds4.~  ds8. fs16 es ds  gs8 b16 a b8 |
  es,8\prall ds cs fs2.~ |
  fs8 e! ds! e2.~ |
  e4.~ e8 ds cs  ds cs b |
  cs4. cs4 fs8  e ds cs |
  
  \barNumberCheck 25
  b4.~ b8 a gs  cs ds e |
  a,8 b cs  \appoggiatura { a } gs8. fs16 e fs  \tag layout { fs4~\prall } 
     \tag midi { fs4~\trill } fs16 e32 fs |
  e8 gs b  e16\parenthesize \mordent ds e8 e  e4\mordent e8 |
  e8 fs16 e ds cs  ds4 es8  \appoggiatura { fs } es4 fs8 |
  fs4.~ fs8 a16 gs fs e!  ds8 fs16 e fs8 |
  \appoggiatura { cs8 } bs4 ds8  gs4.~ gs8. gs16 as b! |
  \tag layout { as4~\prall } \tag midi { as4~\trill } as16 gs32 as
    b8. a16 gs fs  \appoggiatura { fs8 } gs4 es8 |
  \appoggiatura { es8 } fs4 gs8  \appoggiatura { fs } es4.~  es4 fs8 |
  
  \barNumberCheck 33
  fs4.~ fs4 fs16 gs32 a  \appoggiatura { e8 } d4 cs8 |
  \appoggiatura { cs8 } b8. d16 cs b  gs'4.~ gs4 a8 |
  \appoggiatura { gs8 } fs4.~ fs8. a16 gs fs  fs8 es gs |
  \appoggiatura { d8 } cs4 es8  fs4 a8  ds,8 e fs |
  \appoggiatura { \moveNoteA cs8 } bs4 gs8 cs2.~ |
  cs8. e16 ds cs  \appoggiatura { \moveNoteA cs8 } bs4. a'\rest |
  r4. r8 r gs,  cs4\mordent e8 |
  \appoggiatura { e8 } ds4.~ ds8. ds16 e fs  gs4 gs8 |
  
  \barNumberCheck 41
  \appoggiatura { a!8 } gs4 cs,8 fs4.~  fs4 fs8 |
  fs4 gs8  \appoggiatura { fs } e4.~  e8 ds e |
  \appoggiatura { \moveNoteA e8 } ds4.  r8 r ds  \appoggiatura { ds } e4 bs8 |
  \appoggiatura { bs8 } cs4.~ cs8. e16 ds cs  \appoggiatura { cs8 } a'4 cs,8 |
  \appoggiatura { \moveNoteA cs8 } bs4 gs8  gs'4.~ gs4 gs8 |
  gs4. fss  r8 r fs |
  \appoggiatura { \moveNoteA fs8 } es8. ds16 cs ds \appoggiatura { ds8 } e2.~ |
  e8 ds cs  \appoggiatura { \moveNoteA cs } bs4. b~ |
  
  \barNumberCheck 49
  b4 cs8  b8 a gs  \appoggiatura { gs } fs4 e8 |
  \appoggiatura { e8 } ds8. gs16 bs ds  gs fs gs8 gs  gs4 gs8 |
  gs8 a16 gs fs e  fs4 fs8  fs4 fs8 |
  fs4. e8 fs gs  cs, ds e |
  \appoggiatura { \moveNoteA b8 } as4 ds,8  ds'16 cs ds4~  ds8. ds16 es fs! |
  \tag layout { es4~\prall } \tag midi { es4~\trill } es16 ds32 es
    fs8. e16 d cs b4.~ |
  b4 cs8  \appoggiatura { b } a4.~  \tag layout { a4~\prall } 
    \tag midi { a4~\trill } a16 gs32 a |
  gs4 r8  r r gs cs4.~ |
  
  \barNumberCheck 57
  cs4. bs4 cs8 ds4.~ |
  ds4 e8  \appoggiatura { e } fs4.~ fs4 ds8 |
  \appoggiatura { ds8 } e4. es fs |
  e!4. ds8 fs e  fs16 gs a!8 gs |
  \appoggiatura { fs8 } e4 ds8  cs4.( bs4) cs8 |
  \oneVoice <cs, e gs cs>4. r r |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  r4. r e' |
  fs4. gs \voiceDown ds |
  cs4.~  cs8. \voiceUp e'16 ds cs  cs8 bs ds |
  \appoggiatura { a8 } gs4 bs8  cs4.~  cs8 bs cs |
  bs4. r  r8 r gs |
  a4. r  r8 r a |
  gs4.  \voiceDown r8 r gs,  \voiceUp cs4 e8 |
  ds4.~  ds8. ds16 e fs  gs4 gs8 |
  
  \barNumberCheck 9
  gs4 cs,8  fs4.~ fs4 fs8 |
  fs4 gs8 e4.~\prall  e8 ds e |
  ds2. gs4.~ |
  gs4. fss4 gs8 as4.~ |
  as4 b8  cs4.~ cs4 as8 |
  b4. bs cs |
  b!4.  as8 cs b  cs!16 ds e8 ds |
  \appoggiatura { cs8 } b!4 cs8  b4.( as4) b8 |
  
  \barNumberCheck 17
  b4.~ b4 ds8  \appoggiatura { ds } e4 cs8 |
  \oneVoice \appoggiatura { \moveNoteA b8 } as4.~  as8. cs16 b as
    ds8 fs16 e fs8 |
  \voiceFour bs,8\prall as gs cs2.~ |
  cs4. b!2.~ |
  b4. a8 b a  \appoggiatura { \moveNoteB a } gs4 a8 |
  b4.~ b4 cs8  \appoggiatura { b } as4 gs8 |
  cs4 as8  fs4.~ fs4 gs8 |
  e8 ds cs  fs gs a  gs fs e |
  
  \barNumberCheck 25
  ds8 cs b e2.~ |
  e2. ds4. |
  e4 r8 r4. r |
  \voiceDown b8 ds fs  \voiceUp b16 as? b8 b  b4 b8 |
  b8 cs16 b a gs  a4.~ a4 a8 |
  gs4. r8 r gs cs4.~ |
  cs4. r8 r fs,8  b4 gs8 |
  a4 b8  gs4 b16 cs32 d  d8 cs b |
  
  \barNumberCheck 33
  a4. r8 r cs,  fs4 a8 |
  gs4.~ gs8. gs16 a b  cs4 cs8 |
  cs4 fs,8 b4.~  b4 b8 |
  b4 cs8 \appoggiatura { b } a4.~  a8 gs a |
  gs4. r8 r gs  a4\mordent e8 |
  fs4.~ fs8. a16 gs fs \appoggiatura { fs8 } ds'4 fs,8 |
  e2.~ e4 cs'8 |
  cs4. bs  r8 b16 as b8 |
  
  \barNumberCheck 41
  b4. as8. b16 as gs  a4 a8 |
  a8 gs bs  cs4.~ cs8 bs cs |
  bs4. r  r8 r gs |
  a4. r  r8 r a |
  gs4 r8  r r gs  cs16 ds e8 cs |
  \appoggiatura { b!8 } as4.~ as8. cs16 b as  bs8 cs ds |
  gs,4.~ gs8. e!16 fs gs  a!8 cs16 bs cs8 |
  fs,4.~ fs4 gs8  fs es ds |
  
  \barNumberCheck 49
  \appoggiatura { ds8 } es4. fs4 e8  \appoggiatura { e } ds4 cs8 |
  bs4. r r |
  r8 r16 ds gs as  ds cs ds8 ds  ds4 ds8 |
  ds8 e16 ds cs bs  cs8 ds e  as, b cs |
  fss,4. r8 r ds gs4.~ |
  gs4.  \voiceDown cs,8 \voiceUp r r  r r16 a'16 gs fs |
  gs2. fs4.~ |
  fs4 gs8  e4.~\mordent e8 ds e |
  
  \barNumberCheck 57
  \appoggiatura { e8 } ds4.~ ds4 e8 fs4.~\parenthesize \mordent |
  fs8 a gs  \appoggiatura { gs } a4.~  a4 fs8 |
  gs4 a8  b a gs  as cs bs |
  cs8 bs as  bs4 cs8  ds4 bs8 |
  cs4 a8  e4. ds4 e8 |
  s2. s4. |
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
  \mergeDifferentlyDottedOn
  cs8 e gs  cs2.~ |
  cs8 b a  \voiceTwo b4.~  b8. e,16 fs gs |
  \appoggiatura { gs8 } a4.~  a8. gs16 fs e  ds4 fs8 |
  \oneVoice bs,4 gs8 cs4. cs, |
  gs'8 bs ds  gs8. a16 gs fs  gs4\mordent gs8 |
  gs8. cs,16 ds es  fs8.\mordent gs16 fs e  fs4 fs8 |
  fs8 gs16 fs e ds  \voiceTwo e4.~  e8 ds cs |
  \oneVoice fs8 e ds  gs4 fs8 \appoggiatura { \moveNoteA fs } es8. es16 fs gs |
  
  \barNumberCheck 9
  a8 b gs  fs gs e!  ds e cs |
  bs8 as gs  cs ds b  as b gs |
  fss8 es ds  gs b as  b cs ds |
  e!8 fs ds  cs ds b  as16 b cs8 as |
  ds,4.~  ds4 fss'8  \appoggiatura { fss } gs4.~ |
  gs8 fs! e  ds4 gs8  \tag layout { cs,4~\prall } \tag midi { cs4~\trill }
    cs16 bs32 cs |
  \tag layout { css4~\prall } \tag midi { css4~\trill } css16 bs32 css
    ds4.~ ds4 ds'8 |
  e8 ds cs  ds4. ds, |
  
  \barNumberCheck 17
  gs,8 b ds gs2.~ |
  gs8. cs,16 ds e  fs4 fs,8 fs'4.~\mordent |
  fs4. \tag layout { e4~\prall } \tag midi { e4~\trill } e16 ds32 e
    \tag layout { fs4~\prall } \tag midi { fs4~\trill } fs16 e32 fs |
  gs4 a8  gs4 fs8  es8 fs gs |
  cs,4. r8 r cs'  \appoggiatura { cs } d4 b8 |
  \appoggiatura { a8 } gs4.~  gs8. b16 as gs  cs8 e16 ds e8 |
  as,8\prall gs fs  b4\mordent b,8 b'4.~\mordent |
  b8 cs16 b a! gs  a4\mordent a,8 a'4.~\mordent |
  
  \barNumberCheck 25
  a8 b16 a gs fs  gs4 cs8  \appoggiatura { b } a4 gs8 |
  fs8 gs a  b4.\mordent b, |
  e4.~ e8 gs16 fs e ds  cs8 b' as |
  \voiceTwo b4.~ b8. a!16 gs fs  \oneVoice gs4 cs8 |
  fs,8 a cs  fs16\mordent es fs8 fs  fs4\mordent fs8 |
  fs8 gs16 fs e ds  e8\parenthesize \mordent e16 ds e8  e4\mordent e8 |
  e8 fs16 e d cs  d cs d8 d   d4\parenthesize \mordent d8 |
  cs4 b8 cs4. cs, |
  
  \barNumberCheck 33
  fs,8 a cs fs2.~ |
  fs8 e d \appoggiatura { d } e4.~  e8. a,16 b cs |
  d4.~ d8. cs16 b a  gs4 b8 |
  es,4 cs8  fs8. cs'16 ds! e!  fs4 fs8 |
  fs8 gs16 fs e ds  e8 fs16 e ds cs  fs8 a16 gs a8 |
  ds,8 e fs  gs4 ds8  bs4 gs8 |
  cs8. gs'16 as bs  cs8 ds b  a b gs |
  fs8. ds16 e fs  gs8 a fs  \tag layout { es4~\prall } \tag midi { es4~\trill }
    es16 ds32 es |
  
  \barNumberCheck 41
  fs4.~ fs4 e!8  ds8 e cs |
  bs4 gs8 cs4.\mordent cs, |
  gs'8 bs ds  gs8. a16 gs fs  gs4\mordent gs8 |
  gs8. cs,16 ds es  fs8.\mordent gs16 fs e  fs4\mordent fs8 |
  \stemDown fs8. bs,16 cs ds  \stemNeutral e8. fs16 e ds  e4 e8 |
  e8. as,16 bs cs  ds8. e16 ds cs  ds4 ds8 |
  ds8. gs,16 as bs  cs8. ds16 cs bs  \stemUp cs8 ds e \stemNeutral |
  a,!4 a'8  a8.\parenthesize \mordent ds,16 e fs  gs4 gs8 |
  
  \barNumberCheck 49
  gs4 cs,8  fs16 es fs8 fs  fs4 fs8 |
  fs8 gs16 fs e ds  e4.~\prall e4 ds16 e |
  ds8 r r   r r16 e ds cs  bs cs ds8 gs, |
  cs8. ds16 e gs  cs bs cs8 cs  cs4 cs8 |
  cs8 ds16 cs b as  b8 b16 as b8  b4\parenthesize \mordent b8 |
  b8 cs16 b a! gs  a fs gs a b cs  d cs d8 b |
  \appoggiatura { \moveNoteA fs8 } es8. cs16 ds! es  fs8 a16 gs fs e
    ds8 e cs |
  bs16 cs ds8 gs,  cs8 e ds  e fs gs |
  
  \barNumberCheck 57
  a8 b gs  fs gs e  ds16 e fs8 ds |
  gs,4.~ gs4 bs'8  \appoggiatura { bs } cs4.~ |
  cs8 b! a  gs4 cs8  \tag layout { fs,4~\prall } \tag midi { fs4~\trill }
    fs16 es32 fs |
  \tag layout { fss4~\prall } \tag midi { fss4~\trill } fss16 es32 fss
    gs4.~ gs4 gs,8 |
  a8 gs fs << { r4. gs' } \\ { gs,2. } >> |
  cs,4. r r |
}

tempi = {
  \tempo 4. = 44
  s1*9/8 * 59 |
  s2. \tempo 4. = 40 s4. |
  s2. \tempo 4. = 36 s4. |
  \tempo 4. = 10 s4. \tempo 4. = 44 s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\pageBreak
  
  % page 2
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 3 { s1*9/8\noBreak } s1*9/8\pageBreak
  
  % page 3
  \grace { s8 } \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 2 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \grace { s8 } 
}

preludeFourNotes =
\score {
  \header {
    title = "Prelude 4"
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

preludeFourMidi =
\book {
  \bookOutputName "prelude-4-bwv-873"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
