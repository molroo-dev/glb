# Molroo characters

Character meshes, embedded textures and rigs. **Animations are loaded separately** from [molroo/animations](../animations/README.md). Paths/checksums are in [manifest.json](manifest.json).

| Character | Model | Preview | Shared motions |
| --- | --- | --- | --- |
| Bob coat | [bob-coat.glb](bob-coat.glb) | [bob-coat.png](bob-coat.png) | [kaykit-medium.glb](../animations/kaykit-medium.glb),16 clips |
| Boy | [boy.glb](boy.glb) | [boy.png](boy.png) | [kaykit-medium.glb](../animations/kaykit-medium.glb),16 clips |

![Bob coat with shared Idle_A](bob-coat.png)

## Bob coat

- Uncompressed GLB, **9,843,792 bytes**, two embedded1024x1024 base-color maps. No external textures or compression decoder required.
- **Zero embedded clips.** Load the shared library once; bind its clips by original node name to each character instance. See the [loading example](../animations/README.md#load-once-reuse-per-character).
- Body/Head/Neck:180,764 triangles,104,620 vertices. In v028 only the Head moved forward0.08m from v027 to restore the head balance. The straight v027 neck, head shape, collar, body, textures, rig and shared motions are unchanged.
- Metres,+Y up,+Z forward, original origin/bind transforms; bind height approximately2.129m.
- KayKit Rig_Medium,21 skin joints and original `handslot.l/r` sockets. This is not the older FD2 maker-v2 rig. No separate animator IK controls or facial morphs.
- The512x512 preview shows Idle_A at0.3s. A loader that opens only the character file shows its default/bind pose until an external clip plays.

## Verification and limits

Source: `handmade-assets/assets/models/characters/full/bob-coat/v028/model.glb`. The combined original and previous delivery are preserved. Mesh positions/normals/UVs/indices/weights/materials/image bytes, inverse binds and node hierarchy are unchanged; unused animation accessors/buffers were removed. Current SHA-256:

```text
65d5f2144ca400af58d98f3e8279a84e3384ce1212a525f1947eb347d6e6fe78
```

Actual destination inspect/texture-inspect: exit0, issues/warnings empty. Separately loaded shared clips matched the former combined file at16 clips x32=512 poses: maximum joint-matrix error0 and sampled vertex distance0 (786,432 comparisons). Two skeleton-cloned instances shared clips while keeping independent skeleton state.

Source static geometry/visual/neck-connection checks remain applicable. The20% coat-follow setting still has23 crossing poses in192 sampled lower-coat/pants walk ROI poses; other deep-motion folds remain. This does not certify continuous collision safety, cloth physics, gameplay behavior or runtime performance.

The shared root-Y grounding correction is preserved from bob-coat v019. Other characters need matching rest transforms/proportions and their own sole/grounding review; sharing clips does not retarget arbitrary rigs or add foot IK.

Editable Blender and the combined original remain in handmade-assets; v028 reuses the existing1024 donor atlas without new painting or resizing. Current separation record: `handmade-assets/validation/molroo-characters-distribution/v014/`; v001 records the earlier combined delivery. App code and remote hosting were not changed.

## Sources and notices

References were user-supplied/generated; shape/paint used Hunyuan3D Mini/Paint with local finishing. Provenance remains with the source versions.

- KayKit rig/animations: Kay Lousberg, [CC0 notice](licenses/License-KayKit.txt).
- Installed generation/paint terms: [License-Hunyuan3D-2.0.txt](licenses/License-Hunyuan3D-2.0.txt), [NOTICE-Hunyuan3D-2.0.txt](licenses/NOTICE-Hunyuan3D-2.0.txt).

The component CC0 notice is not a blanket license for the entire character. Staging/separation does not establish additional reference-image rights.

V028 inherited limits: original v002 head texture shading and surface artifacts are inherited. Full intersection comparison exhausted the 5,000,000-pair budget; this is not complete collision validation. No new PBR/native-engine test.


## Boy

![Boy Idle_A](boy.png)

- Source: `handmade-assets/assets/models/characters/full/boy/v005/`. Prior crown correction and sleeve20% volume retained. Added local shoulder15% volume and widened chest/upperarm weight transition; hands retained. Adopted for fuller arms after the user's follow-up request.
- `boy.glb`: 8,190,832 bytes,180,760 triangles,103,891 vertices,three meshes,21 KayKit Medium joints,two embedded1024px base-color maps,zero embedded clips. Metres,+Y up,+Z forward.
- Load the16 clips from `../animations/kaykit-medium.glb` by original node names. Combined vs separate library:512 poses,786,432 sampled vertex comparisons,bone/vertex error0; skeleton clones independent. All16 clips also passed32-sample edge-stretch checks with limit3. This does not certify continuous collision safety.
- Shoulder comparison: all16 clips x9=144 ROI poses had no overlap-pair increase versus v004. Remaining sharp shoulder folds/overlaps are documented; this is not continuous collision safety. Before/after worst sampled poses were reviewed from front/rear.
- Preview: actual final mesh,Idle_A at0.3s,768px Workbench studio texture. Fine brown color variation and earlier texture/grounding/intersection limits remain. Target-game/PBR controls/physics/FPS were not re-tested.
- Previous delivery/preview/manifest/README: `handmade-assets/validation/molroo-characters-distribution/v011/previous/`. Current publication checks and hashes: `handmade-assets/validation/molroo-characters-distribution/v011/` and this manifest. Bob coat and shared animations unchanged.
