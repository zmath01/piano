%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key c \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 { 
    r16 g' f g  af f ef f  g ef d ef  f d c d |
    ef8 c' f, c'  ef, c' d, b' |
    c,16 ef g c  d, c' b a  d, g b d  ef, d' c b |
    ef,16 af c ef  f, ef' d c  f, bf! d f  g, f' ef d |
    ef16 c bf! c  d bf af bf  c bf af g  f r r8 |
    d'16 bf af bf  c af g af  bf af g f  ef r r8 |
    c'16 af g af  bf g f g  af f ef f  af8\mordent af |
    af16 g f g  af8\mordent af  af16 d f ef  d c bf af |
    
    \barNumberCheck 9
    g16 bf ef g,  \stemDown f ef' f, d'  \stemNeutral ef bf af bf  c af g af |
    bf16 g f g  af f ef f  g ef d ef  c8 af' |
    bf,8 g' af, f'  g,16 bf ef g~  g f ef d |
    <<
      { ef16 g c8  <g bf> <f af> }
      \\
      { 
        << { ef4-\tieShapeA ~ } \new Voice { s8 \voiceFour c'16 f, } >>
        ef16 ef8 d16 
      }
    >> <bf ef g>2 |
  }
  \repeat volta 2 { 
    r16 bf' a bf  ef bf a bf  f' bf, a bf  af'! bf, a! bf |
    g'8 ef  c16\mordent b c8  f d  b16\mordent a b8 |
    ef16 ef, d ef  g ef d ef  bf' ef, d ef  df' ef, d! ef |
    c'8 af  f16\mordent e f8  bf g e16\mordent d! e8 |
    
    \barNumberCheck 17
    af16 c b c  df c b c  \stemDown g c b c  \stemNeutral df c b c |
    f,16 c' d! e  f bf,! a bf  g' f e d  c bf af g |
    af16 f e f  c' af g af  f' ef! df c  bf af g f |
    g16 ef d! ef  bf' g f g  ef' df c bf  af g f e |
    f8 a bf c  df e f g |
    c,16 e f af  bf, g' f e  af, c e f  g, df' c bf |
    af16 g f e f af c, ef  d! af' f d  bf r r8 |
    g'16 f ef d  ef g b, d  c g' ef c  af r r8 |
    
    \barNumberCheck 25
    f'16 ef d c  d f af c,  b f'd b  g b c d |
    <<
      { r8 g c2~  c16 c bf af }
      \\
      { ef4~  ef16 bf'! af g  f g af f  d8 r }
    >> |
    g16 af bf g  c, df' c bf  af bf c af  d,! ef'! d! c |
    <<
      { b16 g c d  <c ef>8 <b d> }
      \\
      { 
        s8 c~ 
        << 
          { \hideNoteHead c8\noBeam s } 
          \new Voice { \voiceFour r16 g8 f16 } 
        >> 
      }
    >> <ef g c>2 |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 { 
    c8 c' f, c'  ef, c' d, b' |
    c,16 g' f g  af f ef f  g ef d ef  f d c d |
    ef8 c f d  g f g ef |
    af!8 g a f  bf a b g |
    \clef treble c16 af'! g af  bf,! g' f g  af,8 r  r16 ef' d c |
    bf16 g' f g  af, f' ef f  g,8 r \clef bass r16 df' c bf |
    af16 f' ef f  g, ef' d ef  f, d'! c d  ef, c' bf c |
    d,16 bf' af bf  c, af' g af  bf,8 bf' r d, |
    
    \barNumberCheck 9
    ef8 c af bf  ef, ef' af, ef' |
    g,8 ef' f, d'  ef16 g f g  af f ef f |
    g ef d ef  f d c d  ef8 g af bf |
    c8 af bf bf,  r16 ef bf g  ef4 |
  }
  \repeat volta 2 { 
    ef'8 f g ef  d c d bf |
    ef16 g af! g  af, g' af g  d f g f  g, f' g f |
    c8 c' bf! af!  g f g ef |
    af16 c df c  df, c' df c  g bf c bf  c, bf' c bf |
    
    \barNumberCheck 17
    f8 af f df'  e, g ef c' |
    d,!8 f df bf'  \stemDown c, d e c \stemNeutral |
    f16 af g af  ef! c' bf c  df,!8 f bf df |
    ef,16 g f g  df bf' af bf  c,8 ef af c |
    df,16 f ef!  f  gf f ef f  bf, f' g af  g f e f |
    af,8 f c' c,  f af bf c |
    f8 g af f  bf bf,  r16 af' g f |
    ef8 f g ef  af af,  r16 g' f ef |
    
    \barNumberCheck 25
    d8 ef f d  g g,  r16 f' ef d |
    \stemDown c16 d ef c  \stemNeutral af g' f ef  d ef f d  bf af' g f |
    ef8 d ef e  f e f fs |
    g16 f! ef! f  g8 g,  c,16 c' ef g  c4 |
  }
}

tempi = {
  \tempo 4 = 100
  s1 * 12 |
  s1 * 12 |
  s1 * 16 |
  s1 * 15 |
  \tempo 4 = 92 s4 \tempo 4 = 84 s \tempo 4 = 76 s \tempo 4 = 40 s |
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
}

preludeTwoNotes =
\score {
  \header {
    title = "Prelude 2"
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

preludeTwoMidi =
\book {
  \bookOutputName "prelude-2-bwv-871"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
