%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(5.5 . 6)
beamPositionsB = \once \override Beam.positions = #'(-6.5 . -6)
beamPositionsC = \once \override Beam.positions = #'(6.5 . 7)

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}

moveNoteA = \once \override NoteColumn.force-hshift = 0.8

%%% Music %%%

global = {
  \time 6/16
  \key f \major
}

rightHandUpper = \relative {
  r8. f'16 e f |
  c'8 r16  a g a |
  d8 r16  c d e |
  f16 e d  c d bf |
  \voiceOne a16 g f  e8 bf'16 |
  a8 d16  g,8 d'16 |
  c8 f16  b,8 f'16 |
  e16 d c  g'8 b,16 |
  
  \barNumberCheck 9
  c8.~ c16 bf! a |
  bf16 c d ef8.~ |
  ef16 d c  d e f |
  g8.~ g16 f e |
  f16 g a bf!8.~ |
  bf16 a g  a bf a |
  g8.~ g16 c e, |
  f8. e16 f g |
  
  \barNumberCheck 17
  c,8 f16  f8 e16 |
  f8 r16 r8. |
  g16 f e  d ef c |
  bf16 a g  a8 d16 |
  g,8 d'16  g,8 e'16~ |
  e16 cs d~  d b c~ |
  c16 e f  b, c d |
  g,8 c16  c8 b16 |
  
  \barNumberCheck 25
  c8 g16 bf!8. |
  \moveDottedNoteA a8.~ a8 d16 |
  g,8.~ g8 g16 |
  c8.~ c16 c b |
  c8 r16 r8. |
  g'16 f e  d e c |
  \oneVoice b16 a g  cs8 r16 |
  a'16 g f  e f d |
  
  \barNumberCheck 33
  cs16 b a d8.~ |
  d16 c! b c8.~ |
  c16 bf! a bf8.~ |
  bf16 c bf  a bf g |
  fs16 e! d g8.~ |
  \voiceOne g16 f! e  f g a |
  bf!8.~ bf16 a g |
  a8.~ a16 bf c |
  
  \barNumberCheck 41
  d8.~ d16 c bf |
  c8.~ c16 d e |
  f8.~ f16 e d |
  e8.~ e16 f g |
  a16 g f  e f32 e d c |
  f4. |
  ef16 g fs g8.~ |
  g8. fs16 g a |
  
  \barNumberCheck 49
  bf,16 d c  bf c a |
  g8 ef'16  cs8 a16~ |
  a16 a d  cs d e! |
  \oneVoice d16 e f bf,8.~ |
  bf16 e g c,8.~ |
  \voiceOne c16 bf a  bf8 r16 |
  r16 r bf  a8 g16 |
  f8.~ f16 ef d |
  
  \barNumberCheck 57
  c8.~ c16 d ef |
  f8.~ f16 g a |
  bf8.~ bf16 c d |
  ef4.~ |
  ef16 d c  d ef d |
  \moveDottedNoteA c8.~ c16 c f |
  bf,8.~ bf16 bf ef |
  \moveDottedNoteA a,8.~ a16 a d |
  
  \barNumberCheck 65
  g,8.~ g16 g c |
  \moveDottedNoteA f,8.~ f8 bf16~ |
  bf16 g a~  a8 d16 |
  bf8. a16 bf c |
  d16 c ef  d ef c |
  bf4.~ |
  bf4.~ |
  bf8.~ bf16 g af |
  
  \barNumberCheck 73
  af8.~ af16 f g |
  g8.~ g16 e f |
  f8.~ f16 d e |
  e8 r16 af8.~ |
  \oneVoice af16 g f g8.~ |
  g16 f e  f c' f |
  bf,8.~ bf16 e g |
  c,8.~ c16 f af |
  
  \barNumberCheck 81
  df,8 f16 bf8 df,16 |
  c8 bf'16 af8 f16 |
  b,16 f' g  af g f~ |
  f16 e df~  df c bf~ |
  bf16 af g
    << 
      { 
        f e f | 
        \voiceOne c'8 r16  a!16 g a |
        <bf df>8 
      }
      \new Voice {
        s8 \hideNoteHead f16~ |
        \voiceFour f16 d e  <c ef>8 r16 |
        <df f>8
      }
    >> r16  c' d! e! |
  f16 e d  c d bf |
  
  \barNumberCheck 89
  a16 f32 g a bf c8.~ |
  c8.[ bf8.]~ |
  bf16. g32 a bf c8.~ |
  c16. a32 bf c d8.~ |
  d32 bf c d e f  g f e d c bf |
  a16 c a c8.~ |
  c8 d16 ef8. |
  d8.~ d8 g16 |
  
  \barNumberCheck 97
  e8.~ e8 a16 |
  f8 d16  a bf g |
  f8. \oneVoice r |
  \bar "|."
}

rightHandLower = \relative {
  s4. * 4 |
  \voiceFour r8. c'16 bf c |
  f8 r16  e d e |
  a8 r16  g a b |
  c16 b a  g a f |
  
  \barNumberCheck 9
  e16 d c  d e fs |
  g8.~ g16 f! ef |
  f16 g a bf8.~ |
  bf16 a g  a b cs |
  d8.~ d16 c! bf! |
  c16 d e f8.~ |
  f16 e d c8.~ |
  c16 a bf~ bf8. |
  
  \barNumberCheck 17
  a8 bf16  a8 g16 |
  c16 bf a  g a f |
  e16 d c fs8. |
  g8 r16 f!8.~ |
  f8.[ e] |
  a8.[ g] |
  f4.~ |
  f16 e f  e8 d16 |
  
  \barNumberCheck 25
  c8.~ c8 g'16~ |
  g8 c,16 f8.~ |
  f8 b,16  c d e |
  f16 g a d,8. |
  e16 g f  e f d |
  c8 r16 r8. |
  \voiceDown d16 c b a bf g |
  f16 e d g8.~ |
  
  \barNumberCheck 33
  g8. f16 e d |
  e fs gs  a8 r16 |
  r8. g!16 a bf |
  c4.~ |
  c8. bf16 a g |
  a16 b cs \voiceUp d8.~ |
  d16 c! bf c8.~ |
  c16 d e f8.~ |
  
  \barNumberCheck 41
  f16 e d e8.~ |
  e16 f g a8.~ |
  a16 g f g8.~ |
  g16 a b  c8 r16 |
  R4. |
  r16 r d  b8 g16~ |
  g8 c16  b c d |
  c d ef a,8.~ |
  
  \barNumberCheck 49
  a8 g16~  g8 fs16 |
  g4. |
  f8 g16  a8 r16 |
  \voiceDown r8. f,16 e f |
  c'8 r16  a g a |
  \voiceUp d8 r16  c d e |
  f16 e d  c d bf |
  \voiceDown a16 g f bf8.~ |
  
  \barNumberCheck 57
  bf16 a g a8.~ |
  \beamPositionsA a16 \voiceUp bf c d8.~ |
  d16 ef f g8.~ |
  g16 a bf  c8 bf16 |
  a8.[ bf]~ |
  bf16 a g a8.~ |
  a16 g f g8.~ |
  g16 f e! f8.~ |
  
  \barNumberCheck 65
  f16 ef d ef8.~ |
  ef16 d c d8. |
  c8.[ f]~ |
  f16 d ef r8. |
  R4. |
  r8. d16 ef f |
  g16 f af  g af f |
  e!16 f g c,8.~ |
  
  \barNumberCheck 73
  \beamPositionsB c16 \voiceDown af bf bf8.~ |
  bf16 g af af8.~ |
  af16 f g g8.~ |
  g16 b c~  \beamPositionsC c \voiceUp e f |
  \voiceDown bf,!8.~ bf16 e, g |
  af4.~ |
  af16 g f  e g bf~ |
  bf16 af g  f af c~ |
  
  \barNumberCheck 81
  c16 bf af  g af f |
  e8 r16 r8. |
  r8. b |
  c8 d!16  e8 c16 |
  f8 g16 
    << 
      { af8. | \moveNoteA g8 } 
      \new Voice { \voiceOne r16 c b | c8 } 
    >> r16 f,8 r16 |
  bf8 \voiceUp r16 r8. |
  r16 r bf'  a8 g16 |
  
  \barNumberCheck 89
  f16 r r  r a ef |
  ef16 d32 f g a  bf16 d, f |
  f16 e!8~  e16 e g |
  g16 f8~  f32 c' bf a g f |
  g16 r r r8. |
  r8. r16 r e |
  f8 bf16  a bf c~ |
  c8 f,16 bf8.~ |
  
  \barNumberCheck 97
  bf8 g16 c8.~ |
  c16 a bf  f8 e16 |
  f8. s |
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
  R4. * 8 |
  
  \barNumberCheck 9
  R4. * 5 |
  r8. f16 e f |
  c'8 r16  a g a |
  d8 r16  c d e |
  
  \barNumberCheck 17
  f16 e d  c d bf |
  a16 g f bf8.~ |
  bf8.[ a] |
  g16 f! e  d e c |
  b16 a g  c b c |
  f8 r16  e d e |
  a8 r16  g a b |
  c b a  g a f |
  
  \barNumberCheck 25
  e16 f d  c d e |
  f16 g e  d e f |
  g16 a f  e f g |
  a16 g f  g8 g,16 |
  c'16 b a  g a f |
  e16 d c \voiceTwo f8.~ |
  f8.[ e] |
  d8.[ bf] |
  
  \barNumberCheck 33
  a4.~ |
  a8.~ a16 bf! c |
  d16 e fs  g8 f16 |
  e8.[ ef] |
  d4.~ |
  d8.~ d16 e f |
  \oneVoice g8.[ e] |
  f8.~ f16 g a |
  
  \barNumberCheck 41
  bf8.[ g] |
  a8.~ a16 bf c |
  d8.[ b] |
  c8.~ c16 d e |
  f16 e d  c d bf! |
  a16 g f  g a b |
  c16 b a  g af f |
  ef16 d c d e fs |
  
  \barNumberCheck 49
  g16 f! ef  d ef c |
  bf16 a g  a b cs |
  d16 c! bf!  a bf g |
  \voiceTwo f16 e d  d'8 r16 |
  e8 r16 ef8 r16 |
  \oneVoice d16 e! f  e f g |
  a,8 bf16  c8 cs16 |
  \voiceTwo d8.~ d16 c! bf |
  
  \barNumberCheck 57
  f'8.~ f8 ef16 |
  d8 c16 \oneVoice bf8 a16 |
  g8 f16  ef8 d16 |
  c8.~ c16 d ef |
  f4.~ |
  f4.~ |
  f4.~ |
  f4.~ |
  
  \barNumberCheck 65
  f8 r16 r8. |
  r8. bf16 a bf |
  f'8 r16  d16 c d |
  g8 r16  f16 g a |
  bf16 a g  f g ef |
  d16 c bf  bf' c d |
  ef16 d c  bf c af |
  g8 f16 e!8 c16 |
  
  \barNumberCheck 73
  \voiceTwo f8 r16  d8 r16 |
  e8 r16  f8 r16 |
  df8 r16  b8 r16 |
  c4.~ |
  c4.~ |
  c4.~ |
  c4.~ |
  c4.~ |
  
  \barNumberCheck 81
  c4.~ |
  c16 d! e  f g af |
  d,,4. |
  c8 r16  r8 c'16~ |
  c8 r16 r8. |
  c8 r16  c8 r16 |
  bf df f  bf a g |
  \oneVoice a8 bf16  c8 c,16 |
  
  \barNumberCheck 89
  f8 r16  f, e f |
  bf8 r16  g f g |
  c8 r16  a g a |
  d8 r16  bf a bf |
  e8 r16  c d e |
  f16 e d  c d bf |
  a16 bf g  f g a |
  bf16 c a  g a bf |
  
  \barNumberCheck 97
  c16 d bf  a bf c |
  d16 c bf  c8 c,16 |
  f8. r |
}

tempi = {
  \tempo 8. = 116
  s4. * 96 |
  s8. \tempo 8. = 108 s |
  \tempo 8. = 100 s8. \tempo 8. = 84 s |
  \tempo 8. = 60 s4. |
}

forceBreaks = {
  % page 1
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  % page 2
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 3
  s4. * 5 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
}

fugueElevenNotes =
\score {
  \header {
    title = "Fugue 11"
    subtitle = "for 3 voices"
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

fugueElevenMidi =
\book {
  \bookOutputName "fugue-11-bwv-880"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
