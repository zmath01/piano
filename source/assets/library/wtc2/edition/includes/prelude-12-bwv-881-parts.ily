%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveClefA = \once \override Staff.Clef.extra-spacing-width = #'(-0.5 . 0)
stemLengthA = \once \override Stem.length = 7

%%% Music %%%

global = {
  \time 2/4
  \key f \minor
}

rightHandUpper = \relative {
  \voiceOne 
  \repeat volta 2 { 
    \partial 4 b'8\rest af |
    af8 g b\rest bf |
    bf8 af b\rest af' |
    af8 g b,\rest f' |
    f8 e  r16 g, c, g' |
    r16 af c, af'  r f c f |
    r16 g c, g'  r bf c, bf' |
    r16 af c, af'  r f c f |
    r16 g c, g'  b8\rest af |
    
    \barNumberCheck 9
    af8 g b\rest bf |
    bf8 af b\rest c |
    c8 df b\rest bf |
    bf8 c b\rest ef |
    ef8 df b\rest df |
    df8 c b\rest gf' |
    gf8 f b,\rest af' |
    af8 g! r16 bf, ef, bf' |
    
    \barNumberCheck 17
    r16 c ef, c'  r af ef af |
    r16 bf ef, bf'  r df ef, df' |
    r16 c ef, c'  r d ef, d' |
    r16 ef ef, ef'  gf, af c ef |
    ef16 c af f  f g! bf df |
    df16 bf g ef  ef f af c |
    c16 af f df  df ef g bf |
    bf16 g ef c  \oneVoice r af' c, af' |
    
    \barNumberCheck 25
    r16 af df, af'  r af c, af' |
    r16 af bf, af'  r af af, af' |
    bf,16 af' ff af  
      << 
        { ef g df g | g8 af } 
        \\ 
        { ef8 df | df8 c } 
      >>
  }
  \repeat volta 2 { 
    \partial 4 \voiceOne b'8\rest c |
    c8 bf b\rest df |
    df8 c b\rest ef |
    ef8 d b\rest f' |
    f8 ef gf4 |
    
    \barNumberCheck 33
    f4 ef |
    df4 d |
    ef4 f~ |
    f8 ef \oneVoice r16 gf f gf |
    bf,8 a~ a16 ef' df ef |
    \voiceOne gf,8 f~  f16 df' c df |
    ef,16 c' bf c~  c bf8 a16 |
    a8 bf \oneVoice f' ef\prall |
    
    \barNumberCheck 41
    df8 f bf, df16 f |
    af8( g) ef df\prall |
    c8 ef af, c16 ef |
    gf8( f) af, f' |
    af,\prall g bf g' |
    bf,\prall af  c16 e f af |
    df, af' c, af'  bf, af' g f |
    f16 e d c  af' f df c |
    
    \barNumberCheck 49
    bf16 af bf df  gf ef! c bf |
    a16 g! a c  f df bf af |
    gf16 f gf bf  ef c a gf |
    f16 e f  ef'!  \voiceOne df8 b\rest |
    g8 b\rest bf b\rest |
    e,8 b'\rest b16\rest g bf, g' |
    af,16 g' af, g'  af, f' af, f' |
    af,16 f' e8 b'\rest af |
    
    \barNumberCheck 57
    af8 g  b\rest g16 af |
    bf16 df c8  b\rest c |
    bf16 af g f  af g f e |
    e16 f g f  e f bf f |
    e16 f af f  e f df' f, |
    e16 f c' f,  ef f a c |
    c16 a f df  df ef g bf |
    bf16 g ef c  c df f af |
    
    \barNumberCheck 65
    af16 f df bf  bf c e g |
    g16 e c af  r f' a, f' |
    r16 g bf, g'  r a gf a |
    r16 bf f bf  r af! f af |
    \oneVoice r8 \voiceOne af  \oneVoice r16 g f\prall e |
    e8 f \fermataOverBarline
  }
}

rightHandLower = \relative {
  \voiceFour 
  \repeat volta 2 { 
    \partial 4 s8 f' |
    f8 e s g |
    g8 f s c' |
    c8 bf s af |
    af8 g e f,\rest |
    f'8 f,\rest d' f,\rest |
    e'8 f,\rest g' f,\rest |
    f'8 f,\rest d' f,\rest |
    e'8 f,\rest s f' |
    
    \barNumberCheck 9
    f8 e s g |
    g8 f s af |
    af8 bf s g |
    g8 af s c |
    c8 bf s bf |
    bf af s ef' |
    ef8 df s c |
    c8 bf g a,\rest |
    
    \barNumberCheck 17
    af'8 a,\rest f' a,\rest |
    g'8 a,\rest bf' a,\rest |
    af'8 a,\rest f' a,\rest |
    g'8 a,\rest \voiceDown a\rest af~ |
    af8 f a\rest g~ |
    g8 ef a\rest f~ |
    f8 df a'\rest ef~ |
    ef8 c ef gf |
    
    \barNumberCheck 25
    f8 a\rest a\rest ef |
    df8 f\rest f\rest cf |
    f\rest bf, ef4~ |
    ef4
  }
  \repeat volta 2 { 
    \partial 4 \voiceUp s8 af' |
    af8 g s bf |
    bf8 af s gf |
    gf8 f s af! |
    af g! r4 |
    
    \barNumberCheck 33
    r4 c~ |
    c8 bf cf4 |
    bf4 af |
    gf4 s |
    s2 |
    s4 f |
    ef4 df8 c |
    c8 df s4 |
    
    \barNumberCheck 41
    s2 * 7 |
    s4. \voiceDown af8 |
    
    \barNumberCheck 49
    g4 s8 gf |
    f8 c' s f, |
    ef4 s8 df |
    c4 \voiceUp bf''8 s |
    e,8 s df s |
    df8 s4 bf8 |
    af8 af af af |
    af8 g s f' |
    
    \barNumberCheck 57
    f8 e s e |
    e4 s8 f~ |
    f8 r \voiceDown r bf, |
    af8 s4. |
    s2 * 2 |
    r8 af! g4~ |
    g8 g f4~ |
    
    \barNumberCheck 65
    f8 f e4 |
    s4 \voiceUp r8 \stemLengthA c' |
    r8 \stemLengthA df r ef |
    r8 bf r c |
    s << { \voiceThree f8 } \\ { d } >> \voiceDown c, bf'! |
    bf8 af
  }
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
  \repeat volta 2 { 
    \partial 4 f4 |
    c'4 c, |
    f4 f, |
    bf4 b |
    c4 r |
    R2 * 3 |
    r4 f |
    
    \barNumberCheck 9
    c'4 c, |
    f4 f, |
    bf4 ef, |
    af4 af' |
    bf4 bf, |
    c4 c' |
    df4 d |
    ef4 r |
    
    \barNumberCheck 17
    R2 * 3 |
    r4 \voiceTwo c, |
    df4 bf |
    c4 af |
    bf4 g |
    af4 r |
    
    \barNumberCheck 25
    r8 af[ gf] r |
    r8 ff[ ef] r |
    d4 r8 ef |
    af4
  }
  \repeat volta 2 { 
    \partial 4 \oneVoice af'4 |
    ef'4 ef, |
    af4 a |
    bf4 d, |
    ef4 \clef treble << { r16 a' ef a } \\ { r4 } >> |
    
    \barNumberCheck 33
    r16 bf df, bf'  r gf a, gf' |
    r16 f bf, f'  r af! bf, af' |
    r16 gf c,! gf'  r f d f |
    r16 ef d ef  c ef df ef |
    \moveClefA \clef bass f,16 df' c df  g,! c bf c |
    a16 bf a bf  df, bf' a bf |
    gf f gf ef  f8 f, |
    bf4 r16 df' c df |
    
    \barNumberCheck 41
    bf16 df af! df  g, df' f, df' |
    ef,16 g bf df  r c bf c |
    af16 c gf c  f, c' ef, c' |
    df,16 f af c  d, f af bf |
    ef,16 g! bf df!  e, g bf c |
    f,16 af c e  f8 af |
    bf,8 c df bf |
    c8 c, r \voiceTwo f |
    
    \barNumberCheck 49
    f8 e d\rest ef |
    ef4 d8\rest df |
    df8 c d\rest bf |
    bf8 a \oneVoice r16 bf' c df |
    r16 c bf af  r g af bf |
    r16 af g f  e8 c' |
    f,8 c' df, b' |
    c,8 c' f,4 |
    
    \barNumberCheck 57
    bf4 df |
    g,4 af |
    df8 bf c c, |
    df8 \oneVoice r df' df, |
    c8 c' bf bf, |
    af16 c f g  a8 f |
    \voiceTwo bf,4 r8 ef |
    af,4 r8 df |
    
    \barNumberCheck 65
    g,4 r8 c |
    \oneVoice f,8 af c ef! |
    df8 f, ef c' |
    bf8 df, c c' |
    << { f8 } \\ { b, } \\ { d } >> d\rest \voiceTwo c4 |
    f4 \fermataUnderBarline
  }
}

tempi = {
  \repeat volta 2 {
    \tempo 4 = 66
    \partial 4 s4 |
    s2 * 26 |
    \tempo 4 = 60 s4 \tempo 4 = 56 s |
    \tempo 4 = 46 s4
  }
  \repeat volta 2 {
    \tempo 4 = 66
    \partial 4 s4 |
    s2 * 40 |
    \tempo 4 = 60 s4 \tempo 4 = 56 s |
    \tempo 4 = 40 s4
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4 s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 s4 \pageBreak
  
  % page 2
  s4\noBreak \repeat unfold 5 { s2\noBreak } s2\break
  \repeat unfold 5 { s2\noBreak } s2\break
  \repeat unfold 5 { s2\noBreak } s2\break
  \repeat unfold 5 { s2\noBreak } s2\break
  \repeat unfold 5 { s2\noBreak } s2\break
  \repeat unfold 5 { s2\noBreak } s2\break
}

preludeTwelveNotes =
\score {
  \header {
    title = "Prelude 12"
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

preludeTwelveMidi =
\book {
  \bookOutputName "prelude-12-bwv-881"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \tempi >>
      \new Staff = "lower" << \leftHand \tempi >>
    >>
    \midi {}
  }
}
