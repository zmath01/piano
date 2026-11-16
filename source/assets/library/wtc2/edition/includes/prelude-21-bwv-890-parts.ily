%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveDottedNoteA = \once {
  \override NoteColumn.force-hshift = -1.7
  \override Dots.extra-offset = #'(-0.5 . 0.15)
}

moveRestA = \once \override Rest.X-offset = -1

beamPositionsA = \once \override Beam.positions = #'(-4.5 . -5)
beamPositionsB = \once \override Beam.positions = #'(5.5 . 5)
beamPositionsC = \once \override Beam.positions = #'(4.75 . 4.25)
beamPositionsD = \once \override Beam.positions = #'(4.25 . 3.75)
beamPositionsE = \once \override Beam.positions = #'(4.25 . 4.5)
beamPositionsF = \once \override Beam.positions = #'(4.25 . 4)
beamPositionsG = \once \override Beam.positions = #'(5 . 4.5)
beamPositionsH = \once \override Beam.positions = #'(3.75 . 5)
beamPositionsI = \once \override Beam.positions = #'(-4.5 . -4.5)
beamPositionsJ = \once \override Beam.positions = #'(4 . 3.5)
beamPositionsK = \once \override Beam.positions = #'(4.5 . 4)
beamPositionsL = \once \override Beam.positions = #'(5 . 4.5)
beamPositionsM = \once \override Beam.positions = #'(-4 . -4.5)
beamPositionsN = \once \override Beam.positions = #'(-3.5 . -4)
beamPositionsO = \once \override Beam.positions = #'(4.5 . 4)
beamPositionsP = \once \override Beam.positions = #'(5.5 . 5)
beamPositionsQ = \once \override Beam.positions = #'(4.5 . 5)
beamPositionsR = \once \override Beam.positions = #'(-4.5 . -5.5)
beamPositionsS = \once \override Beam.positions = #'(-4.5 . -5.5)

stemLengthA = \once \override Stem.length = 7
stemLengthB = \once \override Stem.length = 7

%%% Music %%%

global = {
  \time 12/16
  \key bf \major
}

rightHandUpper = \relative {
  \repeat volta 2 {
    \voiceOne r16 bf'' a  g f ef  \beamPositionsE d8.[ ef] |
    f8 d16  ef8 g16  g\prall f g f8.~ |
    f8 bf,16  a8 ef'16  \beamPositionsF d8.[ c] |
    bf16 c d  ef f g \moveDottedNoteA c,4.~ |
    c16 a bf  c d ef  \beamPositionsG f8.[ ef] |
    d8.~  d8 c16 bf4.~ |
    bf16 c g \moveDottedNoteA a8.~  a8. \tag layout { bf8~\upprall } 
      \tag midi { bf8~\trill } bf32 a64 bf |
    c16 f e  d c bf  a\prall g a g8. |
    
    \barNumberCheck 9
    \oneVoice c,16 e g  bf a bf  c, e f  a g a |
    bf,16 d e  g f g  bf, a c  f a c |
    ef!16 d ef  f, a c  d c d  f, a bf |
    c16 bf c  ef, g a  a bf f d8.~ |
    d16 c d  a d bf  g d' bf  g d' bf' |
    c,16 bf c  g c a  fs c' a  fs c' a' |
    bf,16 a bf  d8. g \clef bass c,, |
    f,8. \clef treble c'' f \clef bass bf,, |
    
    \barNumberCheck 17
    ef,8. \clef treble ef''~  ef16 c' bf  a g f |
    ef8 d16 bf'8.~  bf16 d c  bf a g |
    \voiceOne f16 g a  bf c d~  \stemLengthA d8. c8 bf16 |
    a16 bf c  d e f~  \stemLengthB f8. e8 d16 |
    c16 f e  d c bf  a g a  bf a g |
    f16 g a  bf c d  d8 g,16  a bf c |
    c8 f,16  g a bf  bf8 r16 r8. |
    r16 f g  a bf c  d bf c  d e f |
    
    \barNumberCheck 25
    g4.~ g8 c,16  f8 ef!16 |
    d4.~ d8 g,16 c8 bf16 |
    a8.~ a16 b c  d f, g  af g f |
    e16 d b  c d e  f c b!  c e f |
    \oneVoice g16 c, b  c f g  af f g  af bf! c |
    df16 bf c  df ef f  gf af bf  af gf f |
    e16 g! bf,  df c bf  c f a,!  bf c d |
    c16 bf a  g f' e  f c a f8. |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    a16 f e  f g a  bf f e  f a bf |
    c16 f,e  f bf c  \beamPositionsD d bf f  <f bf d>8 c'16 |
    b16 g fs  \oneVoice g a b  c g fs  g b c |
    d16 g, fs  g c d  ef c g~  g g' f! |
    ef16 d c  bf! ef c  af ef' c  f, c' ef |
    d16 c bf  af d bf  g df' bf  ef, bf' df |
    c16 b c ef8.  af \clef bass f,, |
    g8. \clef treble d'' g \clef bass e,, |
    
    \barNumberCheck 41
    f8. \clef treble f''~  f16 g, a  b c d |
    ef16 d c  bf! a g  fs d' e  fs g a |
    \voiceOne g8 g,16 c8.~  c8 a16  d8 c16 |
    \beamPositionsH bf8.[ ef!]~  ef16 a,  bf  c d ef |
    \oneVoice d16 g f  ef d c  bf a bf  c fs a |
    \voiceOne d,8 bf16  c d ef  ef8 a,16  bf c d |
    d8 g,16  a bf c  c fs,8~  fs16 g a |
    <<
      { bf16 ef d  c bf a g8. }
      \\
      { r16 c bf  a g fs g8. }
    >> b\rest |
    
    \barNumberCheck 49
    r16 bf' a  g f ef  d8.[ ef] |
    f8 d16  ef8 g16  \moveDottedNoteA c,8.[ f]~ |
    f16 ef d ef8.~  ef16 d c d8.~ |
    d16 ef f  g a bf  \beamPositionsJ bf,8.[ a] |
    s2. * 4 |
    
    \barNumberCheck 57
    s4. f'~ |
    f16 bf, c  ef f d ef4.~ |
    \beamPositionsK ef8.[ d] g4.~ |
    g16 c, e  f g e f4.~ |
    \beamPositionsL f8.[ ef!] d4.~ |
    d4.~ d16 ef d  c d bf |
    c4.~ c16 df c  bf c a |
    bf16 c df~  df c bf~  bf a g  a8 r16 |
    
    \barNumberCheck 65
    \oneVoice r16 a, bf  c d ef  \voiceOne f8.[ ef] |
    d8 g16  fs8 c'16  bf8.[ af]~ |
    af16 g a  b? c d  \beamPositionsO ef8.[ d] |
    c4.~ c~ |
    c16 a bf~  bf a ef' d4.~ |
    d8.[ af']  \beamPositionsP g[ f] |
    \beamPositionsQ ef8.[ e]  f8 d16  e8 g16 |
    \moveDottedNoteA c,4.~ c8 bf16  a8 ef'16 |
    
    \barNumberCheck 73
    d4.~ d8 ef16  d8 af'16 |
    <<
      { \beamPositionsB g8.[ f]  \beamPositionsC \moveDottedNoteA ef[ d]~ }
      \new Voice { 
        \voiceTwo \moveRestA d16\rest f ef~  ef c d~  d d c~  c a bf 
      }
    >> |
    d16 d c~  c a bf~  bf bf a~  a f g |
    f8.\fermata d'\rest  \oneVoice r16 f,, g  a bf c |
    d16 ef d  c bf a  bf af' g  f ef d |
    ef16 bf c  d ef f  g ef f  g a! bf |
    c16 d c  bf a g  a g' f  ef! d c |
    d16 a bf  c d ef  f d ef  f g af |
    
    \barNumberCheck 81
    bf16 c bf  af g f  g af g  f ef d |
    \voiceOne ef2.~ |
    ef16 f, e  f g a  bf f e!  f a bf |
    \oneVoice c16 f, e  f bf c  df bf c  df ef! f |
    gf16 ef f  gf af bf  cf bf af  gf f ef |
    a!16 c! ef,  gf f ef  f bf d,  ef f g |
    f16 ef d  c bf' a  bf f d bf8. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \voiceFour r4. r16 bf' a  \voiceDown g f ef |
    d8 \voiceUp f16  bf8 ef16  ef8.~  ef16 d c |
    d8.[ c]  bf16 d, ef  f g a |
    bf4.~ bf16 a g a8.~ |
    a16 r r r8.  r16 f g  a bf c |
    d8 g,16  fs8 a16~  a16 d, fs g8.~ |
    g8.~ g16 c, e f4.~ |
    f4.~ f8.[ e] |
    
    \barNumberCheck 9
    s2. * 8 |
    
    \barNumberCheck 17
    s2. |
    r16 c bf  \voiceDown a g f  e8 g16 c8.~ |
    c8. f,8 bf16  \voiceUp g'4.~ |
    g8. \voiceDown f8 d16  \voiceUp bf'4. |
    c8 r16 r8.  \voiceDown r16 f, e  d c bf |
    a8 \voiceUp r16 f'8.~  f16 e \voiceDown d  c bf a |
    \voiceUp d4.~ d16 c d  e f g |
    a8 r16 r8. r4. |
    
    \barNumberCheck 25
    r16 f' e  d c bf  a4.~ |
    a16 c bf  a g f e4. |
    r16 r c f8.  \voiceDown r16 r d, f8 af16 |
    g8.~ g8 r16 s4. |
    s2. * 4 |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    s2. |
    \set tieWaitForNote = ##t
    s4. \voiceUp d''8.*1/3~\noBeam bf8*1/2^~\noBeam f16^~
    << 
      { \hideNoteHead <f bf d>8 s16 | s8 } 
      \new Voice { \voiceFour d8.~ | d8 } 
    >> s16 s8. s4. |
    s2. * 5 |
    
    \barNumberCheck 41
    s2. * 2 |
    r8. r16 r ef d4.~ |
    d16 d' c  bf a g  \beamPositionsI f8.[~ f8] r16 |
    \voiceDown r4. r16 g f!  ef d c |
    bf8 d16 \voiceUp g8.~  \beamPositionsR g16 f \voiceDown ef  d c bf |
    \voiceUp ef4.~ ef16 ef d  \voiceDown c bf a |
    g16 fs g  a bf c~  c bf a  bf8 r16 |
    
    \barNumberCheck 49
    \voiceUp r4. r16 bf' af  \beamPositionsS g \voiceDown f ef |
    d8 \voiceUp f16 bf8.~  bf8 a!16~  a8 af16 |
    g8.~ g16 c a!  f8.~ f16 g a |
    bf8.~ bf16 c d  d c d c8. |
    \oneVoice f,16 a c  ef d ef  f, a bf  d c d |
    ef,16 g a  c bf c  ef, d f  bf d ef |
    f16 ef f  g,b d  ef d ef  g, b c |
    d16 c d  f, af b  b c g ef8.~ |
    
    \barNumberCheck 57
    ef16 ef' d  \voiceFour c bf! af~ af4.~ |
    \beamPositionsM af8.[ g] f4.~ |
    f16 f a  bf c a bf4.~ |
    \beamPositionsN bf8.[ af] g4.~ |
    g16 g b  c d b c4.~ |
    c16 bf! a  g a fs g4.~ |
    g16 a g  f gf ef f4.~ |
    f8.[ e]  \beamPositionsI f8.[~ f8] r16 |
    
    \barNumberCheck 65
    \voiceDown r4. r16 f, g  \voiceUp a bf c |
    d4.~ d16 a' g  f ef d |
    ef8 r16 r8.  r16 ef f  g a bf |
    c8 f,16  e8 bf'16  a16 bf a  g f ef |
    f8.[ ef8] r16  r d g~  g fs c' |
    bf8.[ b]  c8 a!16  b8 d16 |
    g,8.[ df']  c[ bf]~ |
    bf8 a16  g8 c16 f,4.~ |
    
    \barNumberCheck 73
    f8 g16  fs8 c'16 bf4.~ |
    bf8.[ af]  \beamPositionsA g[ f] |
    <ef g>8.[ <df f>]  <c ef>[ <bf df>] |
    c8. r s4. |
    s2. * 4 |
    
    \barNumberCheck 81
    s2. |
    r8. d' c[ bf] |
    a8 s16 s8. s4. |
    s2. * 4 |
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

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \voiceTwo bf2.~ |
    bf16 bf af  \oneVoice g f ef  bf' a bf bf,8.~ |
    bf16 d ef  f g a  bf8.[ a] |
    g8 f16  g8 ef16  f8.~ f16 a c |
    f8.[ ef]  d[ c] |
    bf16 bf, c  d e fs  g8.~ g16 bf d, |
    e8.[ f]~  f16 f e  d c bf |
    a8.[ bf]  c~ c16 e g |
    
    \barNumberCheck 9
    bf16 a bf  c, e g  a g a  c, e f |
    g16 f g  c, d e  f8.~ f16 c a |
    f16 a c  ef! d ef  f, a bf  d c d |
    ef,16 g a  c bf c  ef, d f  bf d f |
    bf8. \clef treble f' bf \clef bass ef,, |
    a,8. \clef treble ef'' a \clef bass d,, |
    g,8. f'16 bf g  e bf' g  e bf' g' |
    af,16 g af  ef! af f  d af' f  d af' f' |
    
    \barNumberCheck 17
    g,16 f' ef  d c bf  a!8.[ f] |
    \voiceTwo bf,4. c |
    d4. e16 g f  e d c |
    f4. g16 bf a  g f e |
    a16 g a  bf a g f4.~ |
    f16 f ef!  d c bf  c8 r16 r8. |
    \oneVoice r16 d c  bf a g  c8 bf16 a8 g16 |
    f8 ef'!16  d8 c16  bf8 a'16  g8 f16 |
    
    \barNumberCheck 25
    e8 g16  e8 c16  f16 g' f  ef! d c |
    bf8.[ \tag layout { b]\downmordent } \tag midi { b\trill }  c16 d c
      bf a g |
    \voiceTwo f16 g f  ef! d c b4. |
    c8.~ c8 bf'!16  af8 g16  af16 c f, |
    \oneVoice e8 d16  e16 g c,  f af ef  df f c |
    bf16 df f bf8.~  bf8 bf,16  bf'8 b16 |
    c16 c, d!  e f g  a! bf c  d! c bf |
    a16 g f  c'8 c,16  f,16 a c f8. |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    f,16 a' g  a bf c  g, d'' c  bf a g |
    a,16 a' bf  a g f  bf, d ef!  f g af |
    g,16 b' a!  b c d  a, ef'' d c b a |
    b, b' c  b a g  c, ef f  g a b |
    c8. \clef treble g'' c \clef bass af,, |
    bf8. \clef treble f'' bf \clef bass g,, |
    af8. \clef treble g'16 c af  f c' af  d,! af' c |
    b16 a! g  f b g  e bf' g  c, g' bf |
    
    \barNumberCheck 41
    af16  g f  ef! d c  \clef bass b8.[ g] |
    c8.[ cs]  d8.~ d16 c bf |
    ef16 d c  bf a g  fs a g  fs e d |
    g8.~ g16 a bf  a c bf  a g f |
    bf16 a bf  c fs a  d, r r r8. |
    r16 g, f  ef d c  f8 r16 r8. |
    r16 ef d  c bf a  \voiceTwo d8.[ ef]~ |
    ef8 bf16  c8 d16  g8.~ g16 f! ef |
    
    \barNumberCheck 49
    d8.[ ef]  f[ g] |
    af16 bf af  g f ef  f g f  ef d c |
    \oneVoice b8 r16  c8 r16  a8 r16  bf16 bf' a |
    g16 f ef  d c bf  f'8.~ f16 a c |
    ef16 d ef  f, a c  d c d  f, a bf |
    c bf c  f, g a  bf f d  bf f' af, |
    g16 b d  f ef f  g, b c  ef d ef |
    f, af b  d c d  f, ef g  c ef g |
    
    \barNumberCheck 57
    c8.~ c16 d ef  d bf c  d ef f |
    g,8.~ g16 a! bf  a f g  a bf c |
    d,8.~ d16 e f  e c d  e f g |
    af,8.~ af16 bf c  b g a  b c d |
    ef,!8.~ ef16 f g  fs d e  fs g a |
    bf!16 g a  bf c d  ef! c d  ef f! g |
    a,16 f g  a bf c  df bf c  df ef f |
    gf,8.[ g]  f16 a bf  c d! ef! |
    
    \barNumberCheck 65
    \voiceTwo f8.[ ef]  d[ c] |
    \oneVoice bf16 c' bf  a g fs  g8.[ bf] |
    ef,8.[ d]  c[ bf] |
    a16 bf' a  g f e  f f, g  a bf c |
    d8.[ c]  bf[ a] |
    g16 af'' g  f! ef d  ef f ef  d c b |
    c16 d c  bf!a g  a bf a  g f e |
    f16 g f  ef! d c  d ef d  c bf a |
    
    \barNumberCheck 73
    bf16 c bf  a g fs  g a g  f ef d |
    ef8 r16 r8. r4. |
    ef'8 r16 r8. r4. |
    << { a8. } \\ { ef\fermata } >> r8.  r16 ef d!  c bf a |
    bf16 f g  a bf c  d bf c  d ef f |
    g16 af g  f ef d  ef d' c  bf a g |
    a16 e f  g a bf  c a bf  c d ef! |
    \clef treble f16 g f  ef d c  d c' bf  af g f |
    
    \barNumberCheck 81
    g16 af g  f ef d  ef f ef  d c b |
    \clef bass c16 d c  bf! a! g  a a, bf  c d ef |
    f,8.~ f8 ef''!16  df8 c16  df16 f bf, |
    a8 g16  a c f,  bf df af  gf bf f |
    ef8.~  ef16 bf gf  ef gf bf  ef f gf~ |
    gf16 f  g a bf c  d ef f  g! f ef |
    d16 c bf  f'8 f,16  bf,16 d f bf8. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo 8. = 96
    s2. * 31 |
    s8. \tempo 8. = 88 s \tempo 8. = 80 s \tempo 8. = 72 s |
  }
  \repeat volta 2 {
    \tempo 8. = 96
    s2. * 42 |
    s8. \tempo 8. = 88 s \tempo 8. = 80 s \tempo 8. = 72 s |
    \tempo 8. = 30 s8. \tempo 8. = 96 s8. s4. |
    s2. * 10 |
    \tempo 8. = 88 s8. \tempo 8. = 80 s \tempo 8. = 72 s \tempo 8. = 66 s |
  }
}

forceBreaks = {
  % page 1
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 2
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 3
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 4
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  % page 5
  s2. * 3 \break
  s2. * 3 \break
  s2. * 4 \break
  s2. * 3 \break
  s2. * 3 \break
}

preludeTwentyOneNotes =
\score {
  \header {
    title = "Prelude 21"
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

preludeTwentyOneMidi =
\book {
  \bookOutputName "prelude-21-bwv-890"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
