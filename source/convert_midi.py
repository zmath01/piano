"""Strict standard-library SMF reader for the bundled LilyPond MIDI.

Preserves all pitches, voices, note lengths and tempo changes, including repeats
already unfolded by LilyPond. Output timings are rounded once to milliseconds.
"""
from bisect import bisect_right
from collections import defaultdict, deque
from pathlib import Path
import json
import struct

ROOT = Path(__file__).resolve().parent

def read_midi(path, metadata=None):
    raw = Path(path).read_bytes()
    assert raw[:4] == b'MThd'
    header_length = int.from_bytes(raw[4:8], 'big')
    fmt, track_count, ppq = struct.unpack('>HHH', raw[8:14])
    assert fmt in (0, 1) and not ppq & 0x8000
    pos = 8 + header_length
    notes, tempos, names, unmatched, parts = [], [(0, 500000)], [], [], set()
    for track in range(track_count):
        assert raw[pos:pos + 4] == b'MTrk'
        size = int.from_bytes(raw[pos + 4:pos + 8], 'big')
        data = raw[pos + 8:pos + 8 + size]
        pos += 8 + size
        i, tick, running = 0, 0, None
        active = defaultdict(deque)
        def vlq():
            nonlocal i
            value = 0
            for _ in range(4):
                b = data[i]
                i += 1
                value = (value << 7) | (b & 127)
                if b < 128:
                    return value
            raise ValueError('Invalid MIDI variable-length quantity')
        while i < len(data):
            tick += vlq()
            status = data[i]
            if status & 128:
                i += 1
                if status < 0xf0:
                    running = status
            else:
                assert running is not None
                status = running
            if status == 0xff:
                kind = data[i]
                i += 1
                length = vlq()
                payload = data[i:i + length]
                i += length
                if kind == 0x51:
                    tempos.append((tick, int.from_bytes(payload, 'big')))
                elif kind == 3:
                    names.append({'track': track, 'name': payload.decode('utf-8', 'replace')})
                continue
            if status in (0xf0, 0xf7):
                length = vlq()
                i += length
                running = None
                continue
            kind, channel = status >> 4, status & 15
            length = 1 if kind in (0xc, 0xd) else 2
            payload = data[i:i + length]
            assert len(payload) == length
            i += length
            if kind == 9 and payload[1] > 0:
                active[(channel, payload[0])].append((tick, payload[1]))
            elif kind == 8 or (kind == 9 and payload[1] == 0):
                queue = active[(channel, payload[0])]
                if not queue:
                    unmatched.append((track, tick, payload[0]))
                    continue
                start, velocity = queue.popleft()
                assert tick > start
                part = track * 16 + channel
                parts.add((part, track, channel))
                notes.append((start, tick, payload[0], velocity, part))
        assert not any(active.values()), f'Unclosed notes in track {track}'
    assert pos == len(raw), (str(path), pos, len(raw))
    # Last tempo event at a tick wins, including an explicit tick-zero event.
    tempo_map = sorted(dict(tempos).items())
    segments, elapsed, previous, tempo = [], 0., 0, 500000
    for tick, new_tempo in tempo_map:
        elapsed += (tick - previous) * tempo / ppq / 1000000
        segments.append((tick, elapsed, new_tempo))
        previous, tempo = tick, new_tempo
    ticks = [x[0] for x in segments]
    def seconds(tick):
        t, elapsed, tempo = segments[bisect_right(ticks, tick) - 1]
        return elapsed + (tick - t) * tempo / ppq / 1000000
    events = sorted([[round(seconds(start) * 1000), pitch,
                      round((seconds(end) - seconds(start)) * 1000), velocity, track]
                     for start, end, pitch, velocity, track in notes])
    result = {'title': 'Herr Gott nun schleuß den Himmel auf', 'catalogue': 'BWV 617',
              'composer': 'Johann Sebastian Bach', 'source': 'Mutopia-2007/11/05-1100',
              'credit': 'Urs Metzger', 'license': 'CC BY-SA 3.0',
              'bpm': round(60000000 / tempo_map[0][1], 3),
              'duration': max(x[0] + x[2] for x in events),
              'range': [min(x[1] for x in events), max(x[1] for x in events)],
              'tracks': [{'track': part, 'sourceTrack': track, 'channel': channel,
                          'name': next((x['name'] for x in names if x['track'] == track), '')}
                         for part, track, channel in sorted(parts)], 'notes': events,
              'beatNotes': sorted([[start / ppq, pitch, (end - start) / ppq, velocity, part]
                                   for start, end, pitch, velocity, part in notes]),
              'tempoMap': [[tick / ppq, elapsed, tempo] for tick, elapsed, tempo in segments],
              'midiWarnings': [{'kind': 'unpaired-note-off', 'track': t, 'tick': q, 'pitch': p}
                               for t, q, p in unmatched]}
    if metadata:
        result.update(metadata)
    assert events and result['duration'] > 0
    return result

if __name__ == '__main__':
    score = read_midi(ROOT / 'assets' / 'bwv617.mid')
    score.pop('beatNotes')
    score.pop('tempoMap')
    (ROOT / 'assets' / 'score.json').write_text(json.dumps(score, ensure_ascii=False, separators=(',', ':')) + '\n')
    print(json.dumps({**score, 'notes': f"{len(score['notes'])} notes"}, ensure_ascii=False, indent=2))
