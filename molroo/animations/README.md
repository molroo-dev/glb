# Molroo shared animations

Load one animation GLB and reuse its clips across compatible characters. Metadata/checksums are in [manifest.json](manifest.json).

| Library | Rig | Clips | Bytes |
| --- | --- | ---: | ---: |
| [kaykit-medium.glb](kaykit-medium.glb) | KayKit Rig_Medium |16|614,908|

The file contains only rest-node hierarchy and animations, with no mesh, skin, material or texture payload. Bind `animations` to the character scene; do not add/animate the library scene. [Bob coat](../characters/bob-coat.glb) contains the matching21-joint rig and no embedded clips.

```text
Idle_A, Idle_B
Walking_A, Walking_B, Walking_Backwards
Running_A, Running_B
Cheering, Crouching, Waving
Jump_Full_Short, Jump_Full_Long, Jump_Start, Jump_Idle, Jump_Land
Melee_Unarmed_Attack_Punch_A
```

## Load once, reuse per character

Three.js example; adjust URLs to your asset host and use your existing scene/render loop:

```js
import { AnimationClip, AnimationMixer } from 'three';
import { GLTFLoader } from 'three/addons/loaders/GLTFLoader.js';
import { clone } from 'three/addons/utils/SkeletonUtils.js';

const loader = new GLTFLoader();
const [motions, character] = await Promise.all([
  loader.loadAsync('/molroo/animations/kaykit-medium.glb'), // load once
  loader.loadAsync('/molroo/characters/bob-coat.glb'),
]);
const instance = clone(character.scene);
scene.add(instance);
const mixer = new AnimationMixer(instance);
const walk = AnimationClip.findByName(motions.animations, 'Walking_A');
mixer.clipAction(walk).play();
// Existing render loop: mixer.update(deltaSeconds);
```

For another character instance, use its own skeleton clone and mixer while reusing `motions.animations`. Do not share mutable skeleton state. Binding requires original node names, hierarchy, rest transforms and compatible Rig_Medium proportions. Rig_Large, renamed bones and older FD2 maker-v2 need separate mapping/retargeting. Extra garment/finger bones are not driven merely by loading this file.

## Source, grounding and verification

This is the16-clip selection from bob-coat v019, not the full132-clip KayKit library. Channel targets, interpolation, timestamps and values are byte-exact, including the selected root-Y grounding correction and flight phases. Grounding reference: **bob-coat v019**. Other sole geometry needs grounding review; no universal foot IK/cloth simulation is included.

SHA-256:

```text
7e2b5b4d881ffd9e089b66757c2c064006d1038bd6aefca6a93eab7440536ba1
```

Actual destination inspect: exit0, issues/warnings empty. Separately loading both files and playing them on Bob coat matched the former combined delivery at16x32=512 poses: joint-matrix error0, sampled vertex distance0 (786,432 comparisons). Independent skeleton clones shared this library successfully. Native engine graphics, game controllers and performance were not retested. Existing garment crossings remain.

Character9,843,792B + library614,908B =10,458,700B; former combined file10,454,904B. The3,796B one-character overhead is standalone metadata. Additional compatible characters can reuse the library rather than embedding the same key data.

Original KayKit rig/animations: Kay Lousberg, [CC0 notice](License-KayKit.txt). Selected root-Y correction/source provenance: `handmade-assets/validation/molroo-characters-distribution/v002/`. The combined original remains there and in the source asset. This was local separation; no commit/push or consuming-app code change was performed.
