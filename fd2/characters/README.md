# FD2 character delivery — KayKit Rig_Medium

2026-11-08 local build. Four character GLBs contain no animation clips; load `base-animations.glb` once and bind its 12 clips by node name. `base.glb` is the matching KayKit mannequin, also without embedded clips.

| File | Source version |
|---|---|
| kyle.glb | Kyle v008 |
| saul.glb | Saul v012 |
| yuni.glb | Yuni v003 |
| ares.glb | Ares v005, empty hands |
| base.glb | KayKit base model v002 |
| base-animations.glb | fd2-basic v001 |

Clips: `idle`, `walk`, `run`, `attack`, `attack_left`, `sit_chair`, `sit_chair_idle`, `stand_chair`, `sit_floor`, `sit_floor_idle`, `stand_floor`, `wave`. `attack_left` is a mirrored derivative of the original right-hand chop; the other 11 clips preserve the selected KayKit keys exactly.

Characters require a KHR_draco_mesh_compression decoder. Base and animations are uncompressed. All use 21 skin joints, the original KayKit node names and `handslot.l/r` sockets, metres, Y-up and +Z forward. Do not pair with the earlier maker-v2 11-joint animation library. Ares's polearm remains a separate prop and is not included in this character folder.

The current web/meta FdCharacter and grounding code explicitly look up old names such as ArmL and ShinL and require adaptation before publishing these new assets to that app. This local update does not change the app or publish GitHub files. Existing material/cloth collision limitations remain. Triangle counts are unchanged; frame performance is unmeasured.

Sources, previous delivery backup, hashes, renders and validation: /Users/molroo/workspace/handmade-assets/validation/fd2-kaykit-distribution/v001/README.md. KayKit rig/animations use the accompanying CC0 License-KayKit.txt; character design provenance remains with the editable source versions.
