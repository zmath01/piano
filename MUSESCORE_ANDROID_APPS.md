# Open-source Android piano apps compatible with MuseScore

Researched: **2026-11-03**. Question: can an open-source piano app run on an Android phone and use scores from [MuseScore Studio](https://github.com/musescore/MuseScore)?

**Yes, through MIDI or MusicXML export.** The strongest matches are **Sun Piano** for a playable touchscreen piano, **Piano-ish** for guided practice, and **Extended MidiSheetMusic** for notation with synchronized playback. I did not confirm an installable open-source native Android piano app with direct `.mscz` import. That is a limitation of the verified shortlist, not proof that no such project exists.

These are research-based recommendations. APK release listings, source repositories and documentation were checked; apps were not installed, and audio, MIDI hardware and score imports were not tested on your phone.

## Compatibility means different things

| Route | What it provides | Limitation |
|---|---|---|
| MuseScore → `.mid` / `.midi` → Android app | Notes and performance timing for playback, visualization and practice | Does not preserve engraved layout; regenerated notation can differ substantially |
| MuseScore → `.musicxml` / `.xml` / `.mxl` → Android viewer | Structured notation interchange | Layout and supported musical details can differ |
| Open `.mscz` / `.mscx` directly | Native MuseScore-file import | Not confirmed for the recommended native apps |

MuseScore supports both MIDI and MusicXML export. MIDI sound depends on the receiving app's instruments; exporting MIDI does not transfer MuseSounds. Keep the original MuseScore file. [Official export documentation](https://handbook.musescore.org/file-management/file-export), [MusicXML interchange documentation](https://handbook.musescore.org/file-management/working-with-musicxml-files).

## Shortlist

| App | Best use | MuseScore connection | Open-source license | Android / installation |
|---|---|---|---|---|
| **Sun Piano** | Play on the phone; record and replay | MIDI import and export | GPL-3.0-or-later | Version 1.0: Android 12+; F-Droid |
| **Piano-ish** | Guided practice with a digital piano | Import exported MIDI | MIT | Android APK; minimum Android version not confirmed |
| **Extended MidiSheetMusic** | Read notation while notes and keys highlight | Import exported MIDI | GPL-2.0-only | Current source: Android 11+; GitHub APK |
| **PianoSync** | MIDI practice and falling-note visualization | Import exported MIDI | GPL v3 | Current source: Android 9+; GitHub APK |
| **Musicore** | Read a MusicXML score | Open `.xml`, `.musicxml`, `.mxl` exports | MIT | Android 5+ according to F-Droid; viewer without audio playback |

Android minimums derived from source describe the inspected source revision; they are not independent inspections of the released APK manifests. Source and release links follow below.

### Sun Piano — first choice for touchscreen playing

An 88-key multitouch instrument with glissando, sustain, metronome, recording, MIDI import/export, and USB/Bluetooth LE MIDI input. MIDI import supports multiple tracks, tempo changes and sustain; percussion is omitted. It synthesizes its own sounds and works without sample downloads. It is an instrument/player rather than a verified score-following tutor.

The F-Droid listing offers **1.0**, added **2026-10-18**, requiring **Android 12+**. It also lists **0.9** for Android 8+, but that older release is a separate compatibility choice.

[Install / version details](https://f-droid.org/en/packages/code.alimiracle.sunpiano/) · [Source repository](https://codeberg.org/alimiracle/sun-piano)

Evidence boundary: features and license were verified against F-Droid's listing; the Codeberg source page could not be retrieved through the browser tool.

### Piano-ish — first choice for guided practice

Imports Standard MIDI files into a local library and offers timed play-along and a mode that waits for the required note or chord. Its documentation describes USB/Bluetooth MIDI, falling notes, grand-staff notation, hand isolation, loops and practice tracking. A hardware keyboard is recommended, but is not required to explore files and visualizations.

The inspected release is **v1.2.0-beta.1**, published **2026-09-01**. Treat it as an early release: its tag says beta even though GitHub's prerelease flag is false. The Android APK is approximately **81 MB**. Source uses Flutter's Android minimum rather than an explicit number, so this report does not guess the supported Android floor.

[Source and features](https://github.com/m-movahedi/Piano-ish/blob/main/README.md) · [MIT license](https://github.com/m-movahedi/Piano-ish/blob/main/LICENSE) · [Release and APK](https://github.com/m-movahedi/Piano-ish/releases/tag/v1.2.0-beta.1)

### Extended MidiSheetMusic — first choice for notation and playback

Loads MIDI, generates notation, and highlights both the score and an on-screen keyboard during playback. It documents tempo adjustment, looping, track visibility/muting, two-staff display and USB MIDI input. The on-screen keyboard is documented as a visualization; do not assume it provides Sun Piano's playable touch interface.

Use the maintained **drakarah** fork, formerly **drake7707**, rather than assuming the old F-Droid package has these improvements. Its **v3.0** APK was published **2026-08-31**, approximately **11.6 MB**. Current Gradle source specifies `minSdk 30`, which means **Android 11+**. This corrects the README's inconsistent wording about Android versions/API levels.

[Source and features](https://github.com/drakarah/MidiSheetMusic-Android/blob/master/README.md) · [License](https://github.com/drakarah/MidiSheetMusic-Android/blob/master/LICENSE) · [Android minimum](https://github.com/drakarah/MidiSheetMusic-Android/blob/master/app/build.gradle) · [Release and APK](https://github.com/drakarah/MidiSheetMusic-Android/releases/tag/v3.0)

### PianoSync — another open-source MIDI practice option

Android MIDI playback/visualization and practice software with public Kotlin source and a GPL v3 license. The repository contains MIDI import, playback, connection and progress components. Its latest listed release is **0.5.6**, published **2025-05-29**, approximately **43.9 MB**. Current source specifies `minSdk 28` (**Android 9+**).

The README's Google Play button now leads to **Scoreflow – Play Music Sheet**, whose listing says it is based on PianoSync. This report recommends the identifiable **PianoSync GitHub APK**; it does not assume that every addition in the Play version has corresponding public source. The unrelated `IlyaSkorik/scoreflow` notation editor below is another project.

[Repository](https://github.com/clquwu/PianoSync) · [License](https://github.com/clquwu/PianoSync/blob/dev-android/LICENSE) · [Android minimum](https://github.com/clquwu/PianoSync/blob/dev-android/app/build.gradle.kts) · [Release and APK](https://github.com/clquwu/PianoSync/releases/tag/0.5.6) · [Linked Play listing](https://play.google.com/store/apps/details?id=io.scoreflow.app)

### Musicore — limited MusicXML reading option

Opens `.xml`, `.musicxml` and `.mxl`. The README explicitly describes playback controls without audio and calls the app a prototype that the author mostly does not intend to develop further. It is useful for reading exported notation, not the first choice for hearing or learning a piece interactively.

Latest listed release: **1.6.0**, published **2025-10-05**; F-Droid added it **2025-10-12** and lists **Android 5+**. Architecture-specific and universal APKs are available.

[Source and limitations](https://github.com/mlm-games/musicore-libre/blob/main/README.md) · [F-Droid installation](https://f-droid.org/en/packages/io.github.mlm_games.musicore/) · [GitHub release](https://github.com/mlm-games/musicore-libre/releases/tag/v1.6.0)

## Practical MuseScore workflow

1. Open your score in **MuseScore Studio** and choose **File → Export**.
2. For Sun Piano, Piano-ish, Extended MidiSheetMusic or PianoSync, select **MIDI** and export the piano part(s). Choose **Expand repeats** if the practice file should follow the full repeated performance.
3. Transfer the `.mid` file to the phone and use the target app's import/open action. Keep a PDF alongside it if you need the original engraving.
4. For Musicore, export **MusicXML** instead, using `.musicxml`, `.xml` or compressed `.mxl`.
5. Check a short passage containing both hands, a tempo change, sustain and any repeats. Confirm the imported notes and timing before relying on a full practice session.

Steps 1–4 follow the documented formats; step 5 is a suggested acceptance check, not a test already performed. MIDI-derived left/right-hand splitting may need adjustment. Neither MIDI nor MusicXML guarantees identical playback or layout. [MuseScore export reference](https://handbook.musescore.org/file-management/file-export).

If you have only an `.mscz` on the phone, this workflow still needs a conversion step. [LibreScore/webmscore](https://github.com/LibreScore/webmscore) provides a browser-based MuseScore core and export functions, but an [open issue reports failures with newer MuseScore 4 files](https://github.com/LibreScore/webmscore/issues/14). It is a possible conversion bridge, not a verified replacement for the Android piano apps above.

## Other candidates and why they are not first recommendations

| Candidate | Finding |
|---|---|
| [ScoreFlow by IlyaSkorik](https://github.com/IlyaSkorik/scoreflow/blob/main/README.md) | MIT, Android-capable piano notation editor, but MusicXML import is marked in progress. MuseScore interchange is not established yet. |
| [Pianly](https://pianly.org/) | Promising MusicXML/MIDI practice project, but its download section lists macOS, Windows and Linux. Android installation and full browser-based practice were not confirmed. |
| [folino](https://folino.app/) | Advertises Android and direct `.mscz` import, editing and playback. A public source repository/license for the complete app was not established; free access alone does not meet the open-source requirement. |
| [swift-sheet-music](https://github.com/jiyimeta/swift-sheet-music) | Public library with MuseScore parsing and an Android-compatible core. A developer component, not an established installable piano app. |
| [LibreScore app](https://github.com/LibreScore/app-librescore/blob/master/docs/en/README.md) | Android download exists, but the inspected distribution repository contains documentation/localization rather than a complete application source tree. Its MIT file alone does not establish source availability for the APK. Not counted as a verified open-source piano tutor. |

The linked MuseScore Studio repository is open source and documents MusicXML/MIDI interchange. That does not establish that a separately distributed MuseScore mobile app has the same source or license. [Studio README](https://github.com/musescore/MuseScore/blob/main/README.md).

## Recommendation for this folder

Start with **Sun Piano** if you want to play directly on the phone, **Piano-ish** if you want guided MIDI-keyboard practice, or **Extended MidiSheetMusic** if following notation matters most. These recommendations are inferences from the documented capabilities, not results of a hands-on comparison.

Your existing Bach explorer already includes original MIDI files under `source/assets/`, including `bwv617.mid`. Those are available as local import candidates, although importing them into these apps was not tested. The existing explorer, its README and manifest were preserved.

Companion research data: [comparison CSV](app-research-2026-11-03/apps.csv), [source and release evidence](app-research-2026-11-03/sources.json), [verification notes](app-research-2026-11-03/verification.md).
