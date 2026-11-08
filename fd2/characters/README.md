# FD2 character delivery — KayKit Rig_Medium

2026-11-08 local build. Five character GLBs contain no animation clips; load `base-animations.glb` once and bind its 12 clips by node name. `base.glb` is the matching KayKit mannequin, also without embedded clips. The thief's sword is a separate socket prop in [`../props/`](../props/README.md), not an embedded part of the character.

| File | Source version |
|---|---|
| kyle.glb | Kyle v008 |
| saul.glb | Saul v012 |
| yuni.glb | Yuni v003 |
| ares.glb | Ares v006, empty hands (hip skin weight fix; v005 backed up) |
| thief.glb | Thief v002, empty hands, 33 joints (21 body + 12 cloth), uncompressed |
| base.glb | KayKit base model v002 |
| base-animations.glb | fd2-basic v001 |

Clips: `idle`, `walk`, `run`, `attack`, `attack_left`, `sit_chair`, `sit_chair_idle`, `stand_chair`, `sit_floor`, `sit_floor_idle`, `stand_floor`, `wave`. `attack_left` is a mirrored derivative of the original right-hand chop; the other 11 clips preserve the selected KayKit keys exactly.

Kyle, Saul, Yuni and Ares require a KHR_draco_mesh_compression decoder. Thief, base and animations are uncompressed. Kyle/Saul/Yuni/Ares use 21 skin joints; **Thief uses 33** (21 body + 12 tabard cloth joints) and adds the four cloth chains under `hips`. All preserve the original KayKit body node names and `handslot.l/r` sockets, metres, Y-up and +Z forward. Do not pair with the earlier maker-v2 11-joint animation library.

The shared `base-animations.glb` 12 clips drive the thief's 21 body joints; its cloth joints have no tracks there and remain at rest. For simulated cloth, use the source cloth runtime (`handmade-assets/assets/models/characters/fd2/thief/v002/cloth.mjs`) or the 6-clip baked `cloth-preview.glb`; the full 132-clip library is not in this folder. The thief is empty-handed by design; attach [`../props/thief-sword.glb`](../props/thief-sword.glb) to `handslot.r` with the source `attachment.json` offset. Ares's polearm remains separate and is not included in this character folder.

The current web/meta FdCharacter and grounding code explicitly look up old names such as ArmL and ShinL and require adaptation before publishing these new assets to that app. This local update does not change the app or publish GitHub files. Existing material/cloth collision limitations remain. Triangle counts are unchanged; frame performance is unmeasured.

Thief distribution hashes, inspect, thumbnail and 256×256 `thief.png` record: `/Users/molroo/workspace/handmade-assets/validation/thief-distribution/v001/README.md`. Sources, previous delivery backup, hashes, renders and validation for the other characters: `/Users/molroo/workspace/handmade-assets/validation/fd2-kaykit-distribution/v001/README.md`. Ares was updated to v006 on 2026-11-08 (trousers hip weight fix); the previously delivered character/animation files are unchanged. Previous Ares v005 backup, installed hashes and inspect record: `/Users/molroo/workspace/handmade-assets/validation/ares-hip-skin/v001/distribution/installation.json`. Thumbnail: `/Users/molroo/workspace/assets/img/fd2/characters/thief.png` (256×256 RGBA, equipped Idle_A; the bare `thief.glb` is empty-handed). KayKit rig/animations use the accompanying CC0 License-KayKit.txt; character design provenance remains with the editable source versions.
