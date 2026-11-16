# Research verification

Date: 2026-11-03. This records checks performed for the accompanying app comparison.

## Evidence checked

- MuseScore Studio's public README and official export/MusicXML documentation.
- Public project documentation, license evidence and APK release metadata for the shortlisted GitHub projects.
- F-Droid package listings for Sun Piano and Musicore.
- Current Android build configuration for PianoSync and Extended MidiSheetMusic. API 28 corresponds to Android 9; API 30 corresponds to Android 11. Released APK manifests were not independently inspected.
- Piano-ish's Android configuration delegates its minimum SDK to Flutter. The report therefore leaves the numeric minimum unconfirmed.
- The PianoSync README links to a Play listing now named Scoreflow; the report distinguishes it from both the GitHub PianoSync APK and the unrelated IlyaSkorik notation editor.
- Musicore's source README documents playback without audio and limited development intent.
- Sun Piano's source link was obtained from F-Droid; direct browser retrieval of Codeberg failed. Claims about its capabilities and license use the F-Droid listing.
- Existing local piano README and analysis were read before producing the comparison.

The 30 source records and 8 selected GitHub metadata records are in sources.json. Release asset sizes and any GitHub-provided hashes are publisher metadata; they are not results of local APK downloads or hashing. Future URLs or releases may change.

## Local checks passed

- The main report is nonempty (11,793 bytes).
- sources.json parses and contains 30 unique source IDs with HTTPS URLs.
- apps.csv parses and contains exactly five app rows, each represented in the report.
- Every CSV row marks direct MSCZ import as unconfirmed.
- Companion links resolve to files in this folder.
- No internal browser citation markers appear in the report.
- The existing source/assets/bwv617.mid file exists.
- SHA-256 comparisons confirmed the following existing files were unchanged:

```text
13e05c65066aec1f7dc01f848be3b6458a86a88b089776228f2bf4c4d59ed463  index.html
e7f624d296508f9554e0e105b77c8248f537aab5601cfe520b8c99bcac2dd3d5  README.md
60e3da8a9f8d6a254adb4a28e52ddca40cd156b39b1f59ee61daf3a0080e2d97  MANIFEST.json
```

## Not tested

No APK was downloaded or installed. No phone audio, touchscreen behavior, USB/Bluetooth MIDI connection, MIDI/MusicXML import, application security or score fidelity was tested. The device's Android version was not identified. Recommendations are based on documented capabilities and available packages. The search does not establish that no other qualifying app exists.

## Delivered files

- ../MUSESCORE_ANDROID_APPS.md — comparison, recommendations, installation links and MuseScore export workflow.
- apps.csv — five-app structured comparison.
- sources.json — source URLs, supported claims, evidence boundaries and release metadata.
- verification.md — this verification record.
