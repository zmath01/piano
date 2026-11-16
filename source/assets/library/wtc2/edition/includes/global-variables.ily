%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

#(define ((cut-time-twelve-eight) grob)
   (grob-interpret-markup grob
     (markup #:override '(baseline-skip . 0) #:number
       (#:line (
           (#:center-column (#:musicglyph "timesig.C22"))
           (#:center-column ("12" "8")))))))

#(define ((cut-time) grob)
   (grob-interpret-markup grob
     (markup #:override '(baseline-skip . 0) #:number
       (#:line (
           (#:center-column (#:musicglyph "timesig.C22")))))))

schleiferMarkup = \markup {
  \large \halign #.2 \raise #0.0
  \combine
  \halign #.8 \musicglyph "scripts.prall"
  \rotate #140 \normalsize \raise #2.4 \musicglyph "flags.u3"
}
schleiferGrace =
#(define-music-function (note) (ly:music?)
   #{
     \grace {
       \once\override NoteHead.stencil = #ly:text-interface::print
       \once\override NoteHead.X-extent = #'(-2 . -0)
       \once\override NoteHead.text = \schleiferMarkup
       \once\omit Stem
       \once\omit Flag
       $note
     }
   #})

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)
voiceSix = #(context-spec-music (make-voice-props-set 5) 'Voice)

%
% Redefine
%

fermataOverBarline = {
  \override Score.TextMark.self-alignment-X = #CENTER
  \textEndMark \markup { \musicglyph "scripts.ufermata" }
}

fermataUnderBarline = {
  \tweak direction #DOWN
  \textEndMark \markup { \musicglyph "scripts.dfermata" }
}

staffDown = \change Staff = "lower" 
staffUp = \change Staff = "upper" 

voiceDown = {
  \change Staff = "lower"
  \voiceThree 
}
voiceUp = {
  \change Staff = "upper"
  \voiceFour 
}

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

beamTwelveSixteen = {
  \set Timing.beamExceptions = \beamExceptions { 
    16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16]
  }
  \set Timing.baseMoment = #(ly:make-moment 3/8)
  \set Timing.beatStructure = 1,1
}

beamQuarterNotes.44 = {
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = 1,1,1,1
}

beamQuarterNotes.34 = {
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = 1,1,1
}

subdivideBeamsEighthNotes.34 = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2
}

beamEighthNotes.44 = {
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = 1,1,1,1,1,1,1,1
}

revertBeaming = {
  \unset Staff.beamExceptions
  \unset Staff.baseMoment
  \unset Staff.beatStructure
}

% Subdivide beams
% e.g.: a32 \sdb2 b a b
sdb = #(define-music-function
   (n m)
   (integer? ly:music?)
   #{ 
     \set stemRightBeamCount = #n
     #m
     \set stemLeftBeamCount = #n
   #})
