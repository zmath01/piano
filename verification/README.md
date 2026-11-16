# Verification

## Bach library extension

- `library-report.json`: all 153 tracks, 163,943 note events and 429 timed cues
  independently checked with @tonejs/midi. Pitch/velocity values match; note
  timings agree within 0.501 ms. Cue equations are checked in source beats.
- `study-report.json`: every track loads; collection selection, WTC playback,
  cue following/looping, solo/mute, mirror switching, Goldberg navigation,
  transformation formulas, demonstration playback and responsive layouts pass.
- `counterpoint-desktop.png`, `counterpoint-mobile.png`, `counterpoint-small.png`
  and `library-desktop.png`: actual captures of the expanded interface.
- Native WebGL remains unverified on this Android-hosted headless environment;
  the Canvas renderer uses the same Three.js geometry and raycast interaction.
- The source warning in Goldberg 15 is an unpaired note-off, not a discarded
  sounding note-on. It is retained in the metadata and documented in ANALYSIS.md.

Repeat the extension checks in the retained development workspace:

```sh
node verification/scripts/library-check.cjs
node verification/scripts/study-check.cjs
```

## Original piano checks

- `browser-report.json`: passed offline browser interaction checks with
  Playwright / Chromium 134 on ARM64. Three.js geometry is painted by the Canvas
  2D fallback after this Android-hosted environment's WebGL driver loses context.
  Native WebGL appearance is not claimed as verified.
- `score-report.json`: independent @tonejs/midi comparison of all 1,529 notes,
  including tempo integration. Pitches and velocities match exactly. Maximum
  onset error is 0.5 ms and maximum duration error is 0.484 ms, consistent with
  rounding to integer milliseconds.
- `desktop.png`, `mobile.png`, `small-mobile.png`: actual browser captures after
  the final rendering correction, at 1440×900, 390×844, and 320×740 viewports.
  They are full-page captures and may be taller than those viewport sizes.
- `playing.png`: active-note feedback while the sample plays.
- `browser-fallback.png`: Canvas fallback and explicit Web Audio unavailable
  message, with those browser APIs intentionally disabled.
- `design-evidence.json`: scoped design/accessibility observations and limits.

The application made zero HTTP requests while loaded from a local file with the
browser offline. No uncaught page errors were observed in the successful run.
Audio buffers have nonzero finite signal; play/pause, polyphony and pedal release
are exercised. These checks do not constitute a subjective listening review or
a claim about output from physical speakers.

The editable source is supplied in `source/`.
Verification scripts and exact npm dependency lock are included in `scripts/`.
The npm dependencies and test browser are development tools, not dependencies of
the delivered HTML. To repeat the existing setup on this device:

```sh
node verification/scripts/score-check.cjs
node verification/scripts/check.cjs
```
