# Musical structure and mathematical transformations

A note is (q,p,d): quarter-note onset, MIDI semitone pitch and quarter-note duration.
Detected maps have q′=s q+τ and p′=ε p+k, with ε=±1 and s in {1/4,1/2,1,2,4}.

- Translation Tₖ(p)=p+k composes by addition: Tₐ∘Tᵦ=Tₐ₊ᵦ.
- Reflection Iₐ(p)=2a−p is an involution: Iₐ²=identity.
- Retrograde reflects occupied note intervals: R_L(q,p,d)=(L−q−d,p,d).
  For fixed L it is an involution; subtracting d is essential.
- Dilation Dₛ(q,d)=(sq,sd) composes multiplicatively: Dᵣ∘Dₛ=Dᵣₛ.
  It is not a distance-preserving isometry. Motif dilation relative to another
  part is different from speeding the entire performance.
- Stretto-like labels mean two matched prefixes in different MIDI parts overlap;
  they do not certify full subject boundaries or an exhaustive stretto analysis.

The first eligible eight-note prefix is selected; simultaneous candidates prefer
the higher line. At least three distinct pitches are required. Internal overlap
and note-duration differences tolerate 0.025 quarter-note beats. Pitch intervals
are exact semitone matches; onset/scale matching uses a 1e−5 beat tolerance.
Detection is computed in source beat coordinates before rounding to milliseconds.

An independent @tonejs/midi check covers all 163,943 notes and all 429 cues.
Pitches and velocities agree exactly. Onset/duration differences are at most
0.501 ms, consistent with millisecond rounding. Cue onset equations agree within
0.000002 quarter-note beats in that independent check. Original files and their
hashes are supplied. Goldberg 15 contains an unpaired note-off (track 1, tick
17760, MIDI pitch 70); it is recorded as a warning, with no note-on removed.

MIDI parts may merge score voices. Tonal answers, diatonic inversion, ornaments,
ties and voice crossing can prevent exact detections. No badge does not mean no
imitation. The transformations relate fragments and do not establish invariance
of a whole composition. Retrograde is offered as an experiment, not automatically
asserted for the selected work. No Fibonacci, golden-ratio or numerological
interpretation is claimed.

WTC covers 24 major/minor tonalities per book, not one template transposed 24
times. The Art of Fugue includes the source's mirror pairs and unfinished
fragment. Goldberg's canons ascend from unison through ninth in variations
3,6,…,27; 30 is a quodlibet, 10 a fughetta, and 12/15 use contrary motion.
Collection/score facts, computed local cues and exploratory models are distinct.
