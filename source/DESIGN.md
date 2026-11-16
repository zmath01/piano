The instrument is the product: an ivory studio, a floating full-range keyboard,
small sage transport controls, serif composition title, and amber note feedback.
No imagery, network fonts, accounts, empty library, or build framework is needed.

Primary actions: play the keys and play/pause the complete embedded BWV 617.
Secondary controls: seek, reset, volume, speed, register, sustain, accessible keys.
Target viewports: 390x844 and 1440x900, with an additional 320px layout check.
Desktop shows all 88 keys; a phone frames two octaves and has register arrows.
Pointer and computer-keyboard input use the same voices and note feedback.

States: initialization occurs locally; audio starts only on user gesture. If WebGL
fails, paint the same Three.js geometry on Canvas 2D; if both drawing paths fail,
automatically open the equivalent HTML keyboard and keep audio available.
If Web Audio fails, retain the instrument and show an actionable browser message.
Sample data is bundled at build time, so there is no empty or partial library.
Pause releases scheduled voices immediately; reset returns to the first note.
Seek or tempo changes reschedule from the audio clock. Page hiding pauses the
sample and releases manual notes to avoid stuck notes and timer throttling.
No microphone or MIDI permissions are requested. Audio interruption is visible.

Acceptance: no runtime requests, no uncaught exceptions, correct sample duration,
audible polyphony, responsive active-key feedback, functioning transport controls,
no horizontal page overflow, clear focus, semantic controls, reduced-motion support.
