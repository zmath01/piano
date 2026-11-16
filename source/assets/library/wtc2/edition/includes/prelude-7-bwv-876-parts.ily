%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% moveNoteA = \once {
%   \override NoteHead.X-extent = #'(0 . 0.9)
%   \override Stem.X-extent = #'(0 . 0)
%   \override Flag.X-extent = #'(0 . 0)
% }

%%% Music %%%

global = {
  \time 9/8
  \key ef \major
}

rightHandUpper = \relative {
  \voiceOne 
  bf'4. \oneVoice r r8 \voiceOne g8 ef' |
  \appoggiatura { ef8 } d4. \oneVoice  r r8 f, g |
  af!8 c, ef  d f bf  bf, f' af |
  \appoggiatura { \slurUp af8 } g4. r \clef bass r8 ef, d |
  ef8 g f  g bf af  bf df g, |
  af8 c bf \clef treble c ef df  ef af c, |
  d!8 f ef  f af g  af f' af, |
  g8 bf af  bf ef d  ef g f |
  
  \barNumberCheck 9
  \set tieWaitForNote = ##t
  s4. \voiceOne ef2.*1/2~ c4.~ |
  <c ef>4. \oneVoice r4. r8 \voiceOne a ef' |
  \set tieWaitForNote = ##f
  \oneVoice d8 bf f  g ef d  c bf' a |
  \voiceOne bf4. \oneVoice r  r8 bf, a |
  bf8 d c  d f ef  f af! d, |
  ef8 g f  g bf af  bf ef g, |
  a8 c bf  c ef d  ef c' ef, |
  \voiceOne d8 bf a  bf d c  d f ef |
  
  \barNumberCheck 17
  <d f>4. \oneVoice r  r8 g, f |
  g4. r  r8 \voiceOne d' ef |
  f4. \oneVoice r8 r \voiceOne f8 b,4 c8 |
  b4. \oneVoice r8 b, d  f ef d |
  ef8 g c  ef d c  r ef, c' |
  f,8 af c  ef d c  r g c |
  af8 b c  ef d c  r f,! b |
  c8 g ef  c r r r4. |
  
  \barNumberCheck 25
  r8 ef' d  ef c a  f r r |
  r8 f ef  \voiceOne f bf c  df \oneVoice r r |
  r8 df c  df bf g  ef r r |
  r8 ef df  \voiceOne ef af bf  c \oneVoice r r |
  r8 d,! af'  c bf af  r8 df, bf' |
  r8 c, g'  bf af g  r c, af' |
  r8 bf, af'  r af g  r c ef, |
  r8 d c  d bf a  bf d f |
  
  \barNumberCheck 33
  af8 f ef  f d c  d f af |
  c8 ef, d  bf' df, c  af' cf, bf |
  r8 g' f  g ef d!  ef g bf |
  df8 bf af  bf g f  g bf df |
  f8 af, g  ef' gf, f  df' ff, ef |
  r8 c' bf  c af g!  af c ef |
  g8 bf, a  f' af, g  ef' gf, f |
  r8 d' c  d bf a  bf d f |
  
  \barNumberCheck 41
  af!8 c, b  g' bf, a  f' af, g |
  r8 ef' d  ef c b  c ef g |
  c4 b8  c g af  r fs g |
  c4 fs,8  g d ef  r cs d |
  bf'8 g d  ef g c  bf a g |
  fs16 g a8 d,  ef d c  bf c a |
  bf d g  bf a g  r bf, g' |
  c,8 ef g  bf a g  r d g |
  
  
  \barNumberCheck 49
  ef fs g  bf, a g  r c,! fs |
  g8 bf d  g r r bf,4.~\parenthesize \mordent |
  bf8 df c  df bf g  e4 bf'8~ |
  bf8 af g \voiceOne af c f  af4 \oneVoice r8 |
  r af g  af f d  bf4 af'8~ |
  af8 g f  g ef bf  g bf df~ |
  df8 c bf  af g f~  f ef gf~ |
  gf8 f ef  d c bf  \voiceDown af! g! f |
  
  \barNumberCheck 57
  \staffUp \oneVoice r8 ef' d  ef bf af  \voiceDown g f ef |
  \staffUp \oneVoice r8 f' ef  f d bf  \voiceDown af g f |
  \staffUp \oneVoice r8 g' f  g ef c  \voiceDown bf af g |
  \staffUp \oneVoice r8 af' g  af f d  \voiceDown c bf af |
  \staffUp \voiceOne bf'4. \oneVoice r  r8 \voiceOne g ef' |
  \appoggiatura { ef8 } d4. \oneVoice r  r8 f, g |
  af!8 c, ef  d f bf  bf, f' af |
  g8 bf, df  c ef af  af, ef' g |
  
  \barNumberCheck 65
  f8 af, c  bf d g  g, d' f |
  ef g, bf  af c f  f, c' ef |
  \voiceOne d!4. \oneVoice r8 \voiceOne r <f' af>  <ef g>4 \oneVoice r8 |
  r8 r \voiceOne <c f>  
    << { ef4. d4\prall ef8 } \new Voice { \voiceThree bf2. } >> |
  ef8 bf af \oneVoice bf g f  g ef d |
  \voiceOne ef8 \staffDown bf af  bf g f  g ef d |
  ef4.\mordent ef, \oneVoice r4. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceFour 
  g'4. s s8 g4 |
  f4. s2. |
  s4. d bf |
  <bf ef>4. s2. |
  s4. s8 s \voiceDown ef,,  ef'4 df8 |
  c4 ef8  af,4 bf8  c4 af8 |
  f'4 af8  d,4 ef8  f4 d8 |
  ef4 f8  g4 bf8 g4 d8 |
  
  \barNumberCheck 9
  \voiceUp g''8 ef d  r c bf  r a g |
  a4. s4. s8 a4 |
  s2. c,4. |
  d4. s2. |
  \voiceDown r8 bf, a  bf d c  d f af! |
  g8 bf af  bf g f  g bf d |
  c8 ef d  ef c bf  c bf a |
  bf8 \voiceUp d c  d f ef  f af! g |
  
  \barNumberCheck 17
  af4. s4.  s8 ef d |
  ef4. s  s8 f g |
  af4. s8 s af!  af4 <f af>8 |
  <d af'>4. s2. |
  s1*9/8 * 4 |
  
  \barNumberCheck 25
  s1*9/8 |
  \set tieWaitForNote = ##t
  s4. f4.*1/3~ bf4~  <f bf>8 s4 |
  s1*9/8 |
  s4. ef4.*1/3~ af4~  <ef af>8 s4 |
  s1*9/8 * 4 |
  
  \barNumberCheck 33
  s1*9/8 * 16 |
  
  \barNumberCheck 49
  s1*9/8 * 3 |
  s4. af4.*1/3~ c4*1/2~ \hideNoteHead f8~ <af, c f>4 s8 |
  s1*9/8 * 4 |
  
  \barNumberCheck 57
  \voiceDown g,8 s s s2. |
  \voiceDown d8 s s s2. |
  \voiceDown ef8 s s s2. |
  \voiceDown f8 s s s2. |
  \voiceUp <ef' g>4. s  s8 g4 |
  f4. s2. |
  s1*9/8 * 2 |
  
  \barNumberCheck 65
  s1*9/8 * 2 |
  bf,4. s4 bf'8  bf4 s8 |
  s4 af8  g4. f |
  g8 r r s2. |
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
  r8 ef' d  ef bf g  ef r r |
  r bf' a  bf g d  bf r r |
  f'8 r r  bf r r  bf, r r |
  r8 ef d  ef bf g  ef r r |
  r4. r8 r \voiceTwo ef  ef4 ef8 |
  ef4 r8  r r ef  ef4 ef8 |
  ef'4 r8 r4.  r8 r <ef, bf'> |
  q4 r8 r4. r |
  
  \barNumberCheck 9
  \oneVoice ef'4 g8 c,4 d8  ef16 d c d ef8 |
  f,8 f'' ef  f c a  f r r |
  bf8 r r  ef, r r  f r r |
  r8 bf a  bf f d  bf r r |
  \voiceTwo r4. r8 r bf  bf4 bf8 |
  bf4 r8  r r bf  bf4 bf'8 |
  bf4 r8 r4.  r8 r <bf, f'> |
  \oneVoice q8 r r  r4. r |
  
  \barNumberCheck 17
  r8 bf' a  bf f d  bf r r |
  r8 bf' af!  bf g ef  bf r r |
  r8 bf a  bf d c  d f ef |
  f8 af g  af r r  b, r r |
  c8 r r  c' r r  bf! r r |
  af8 r r  af, r r  ef' r r |
  f8 r r  fs r r  g r r |
  c,4.~  c8 ef g  bf! a g |
  
  \barNumberCheck 25
  a8 r r r4.  r8 c f, |
  bf8 r r r4.  r8 af! f |
  g8 r r r4.  r8 bf ef, |
  af8 r r r4.  r8 g ef |
  f8 r r r4.  g8 r r |
  e8 r r r4.  f8 r r |
  d8 r r  ef! r r  a, r r |
  bf8 r r  r d c  d f af! |
  
  \barNumberCheck 33
  bf,8 d c  d f ef  f d bf |
  r8 r f'  g,4 ef'8  f,4 d'!8 |
  ef,8 r r  r g' f  g bf df |
  ef, g f  g bf af  bf g ef |
  r8 r bf'  c,4 af'8  bf,4 g'!8 |
  af,4 r8  r c' bf  c r r |
  r8 r c,  d'4 bf,8  c'4 a,8 |
  bf4 r8  r d' c  d r r |
  
  \barNumberCheck 41
  r8 r d,  ef'4 c,8  d'4 b,8 |
  c4 r8  r ef' d  ef r r |
  r af g  af ef c  g' d bf! |
  fs' c a  ef' bf g  d' a fs |
  g8 r r  c,! r r  cs r r |
  d8 r r  r r d,  e4 fs8 |
  g8 r r g' r r  f! r r |
  ef8 r r ef, r r bf' r r |
  
  \barNumberCheck 49
  c8 r r  cs r r  d r r |
  g,4.~  g8 bf d  f! e d |
  e8 r r r4.  r8 g c, |
  f4 r8 r4.  r8 c ef! |
  d8 r r r4.  r8 d' bf |
  ef4 r8 r4.  r8 g, ef |
  af8 ef df  c bf af  g c bf |
  a8 bf16 a g a  bf8 r r \voiceTwo r4. |
  
  \barNumberCheck 57
  bf8 \oneVoice r r r4. \voiceTwo r |
  bf8 \oneVoice r r r4. \voiceTwo r |
  bf8 \oneVoice r r r4. \voiceTwo r |
  <bf d>8 \oneVoice r r r4. \voiceTwo r |
  \oneVoice g'8 bf af  bf g ef  bf r r |
  r8 bf' a  bf f d  bf r r |
  r8 r g'  f4 ef8  d4 bf8 |
  ef,4 f'8  ef4 df8  c4 af8 |
  d,!4 ef'8  d4 c8  bf4 g8 |
  c,4 df'8  c4 bf8  af4 g8 |
  << { f'4. } \\ { af, } >> r8 r d  ef8 f16 g af bf |
  c16 d ef8 af,  bf4. bf, |
  ef4. r r |
  ef4. r r |
  s1*9/8 |
}

tempi = {
  \tempo 4. = 88
  s1*9/8 * 66 |
  \tempo 4. = 72 s4. \tempo 4. = 88 s2. |
  s1*9/8 * 2 |
  s4. \tempo 4. = 76 s \tempo 4. = 66 s |
  \tempo 4. = 60 s4. \tempo 4. = 40 s2. |
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\pageBreak
  
  % page 2
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
  \repeat unfold 4 { s1*9/8\noBreak } s1*9/8\break\noPageBreak
}

preludeSevenNotes =
\score {
  \header {
    title = "Prelude 7"
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

preludeSevenMidi =
\book {
  \bookOutputName "prelude-7-bwv-876"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
