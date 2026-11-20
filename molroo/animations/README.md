# Molroo shared animations

Load one animation GLB and reuse its clips across compatible characters. Metadata/checksums are in [manifest.json](manifest.json).

| Library | Rig | Clips | Bytes |
| --- | --- | ---: | ---: |
| [kaykit-medium.glb](kaykit-medium.glb) | KayKit Rig_Medium |17|644,576|

The file contains only rest-node hierarchy and animations, with no mesh, skin, material or texture payload. Bind `animations` to the character scene; do not add/animate the library scene. [Bob coat](../characters/bob-coat.glb) contains the matching21-joint rig and no embedded clips.

```text
Idle_A, Idle_B
Walking_A, Walking_B, Walking_C, Walking_Backwards
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
  loader.loadAsync('/molroo/characters/bob-coat.glb'), // or /molroo/characters/flower-hat-girl.glb (see its motion limits)
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

The library combines 16 clips from bob-coat v019 with Walking_C from KayKit Character Animations 1.1 (Rig_Medium_MovementBasic.glb, CC0). Channel targets, interpolation, timestamps and values are byte-exact, including the selected root-Y grounding correction and flight phases. Grounding reference: **bob-coat v019**. Other sole geometry needs grounding review; no universal foot IK/cloth simulation is included.

SHA-256:

```text
b52a3ecb47c850548b980f8902358cf3fee284f580440b943b051a159a3b7767
```

Original 16-clip delivery verification. Destination inspect: exit0, issues/warnings empty. Separately loading both files and playing them on Bob coat matched the former combined delivery at16x32=512 poses: joint-matrix error0, sampled vertex distance0 (786,432 comparisons). Independent skeleton clones shared this library successfully. Native engine graphics, game controllers and performance were not retested. Existing garment crossings remain.

Original sizes: character9,843,792B + library614,908B =10,458,700B; former combined file10,454,904B. The3,796B one-character overhead is standalone metadata. Additional compatible characters can reuse the library rather than embedding the same key data.

Original KayKit rig/animations: Kay Lousberg, [CC0 notice](License-KayKit.txt). Selected root-Y correction/source provenance: `handmade-assets/validation/molroo-characters-distribution/v002/`. The combined original remains there and in the source asset. This was local separation; no commit/push or consuming-app code change was performed.


[Flower hat girl](../characters/README.md#flower-hat-girl) also binds the original 16 clips by name. Its Walking_A/Walking_B/Running_B deformation and character-specific grounding have known limits; see the character entry. The original 16 clips retain their key data.
