%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

#(set-global-staff-size 18)

\header { 
  maintainer = "Knute Snortum"
  maintainerEmail = ""
  source = "https://vmirror.imslp.org/files/imglnks/usimg/d/d2/IMSLP411481-PMLP05899-bach-wtk-ur-2.pdf"
  source = "https://s9.imslp.org/files/imglnks/usimg/e/ee/IMSLP457546-PMLP05899-Partitur_D-B_Mus._ms._Bach_P_402_(2).pdf"
  copyright = \markup { 
    \center-column {
      "Copyright © 2025 Knute Snortum. This work is licensed under the" 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "Creative Commons Attribution-ShareAlike 4.0 International License."
    }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
  
  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
  
  tocTitleMarkup = \markup \huge \bold \column {
    \fill-line { "Table of Contents" }
    \hspace #1
  }
  tocItemMarkup = \tocItemWithDotsMarkup
  
  print-all-headers = ##t
}

\layout {
  \context {
    \Score
    \override Slur.details.free-head-distance = 0.5
    \override Stem.details.beamed-lengths = #'(3.5 3.9) 
  }
  \context {
    \Voice
    \override Tie.minimum-length = 2.75
  }
  \context {
    \PianoStaff
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 1))
  }  
}
