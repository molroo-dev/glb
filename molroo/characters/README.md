# Molroo characters

Character meshes, embedded textures and rigs. **Animations are loaded separately** from [molroo/animations](../animations/README.md). Paths/checksums are in [manifest.json](manifest.json).

| Character | Model | Preview | Shared motions |
| --- | --- | --- | --- |
| Bob coat | [bob-coat.glb](bob-coat.glb) | [bob-coat.png](bob-coat.png) | [kaykit-medium.glb](../animations/kaykit-medium.glb),16 clips |
| Boy | [boy.glb](boy.glb) | [boy.png](boy.png) | [kaykit-medium.glb](../animations/kaykit-medium.glb),16 clips |

![Bob coat with shared Idle_A](bob-coat.png)

## Bob coat

- Uncompressed GLB, **10,063,844 bytes**, two embedded1024x1024 base-color maps. No external textures or compression decoder required.
- **Zero embedded clips.** Load the shared library once; bind its clips by original node name to each character instance. See the [loading example](../animations/README.md#load-once-reuse-per-character).
- Body/Head/Neck:180,766 triangles,107,209 vertices. Head from v023 preserved; neck locally reshaped via Blender MCP in v024 to connect beneath the jaw. Body, rig, textures and shared motions preserved.
- Metres,+Y up,+Z forward, original origin/bind transforms; bind height approximately2.129m.
- KayKit Rig_Medium,21 skin joints and original `handslot.l/r` sockets. This is not the older FD2 maker-v2 rig. No separate animator IK controls or facial morphs.
- The512x512 preview shows Idle_A at0.3s. A loader that opens only the character file shows its default/bind pose until an external clip plays.

## Verification and limits

Source: `handmade-assets/assets/models/characters/full/bob-coat/v024/model.glb`. The combined original and previous delivery are preserved. Mesh positions/normals/UVs/indices/weights/materials/image bytes, inverse binds and node hierarchy are unchanged; unused animation accessors/buffers were removed. Current SHA-256:

```text
6d3ff7714abd5f9056af5a027c7d1201fbcb1110cf97459a006dda521ad7b810
```

Actual destination inspect/texture-inspect: exit0, issues/warnings empty. Separately loaded shared clips matched the former combined file at16 clips x32=512 poses: maximum joint-matrix error0 and sampled vertex distance0 (786,432 comparisons). Two skeleton-cloned instances shared clips while keeping independent skeleton state.

Source static geometry/visual/neck-connection checks remain applicable. The20% coat-follow setting still has23 crossing poses in192 sampled lower-coat/pants walk ROI poses; other deep-motion folds remain. This does not certify continuous collision safety, cloth physics, gameplay behavior or runtime performance.

The shared root-Y grounding correction is preserved from bob-coat v019. Other characters need matching rest transforms/proportions and their own sole/grounding review; sharing clips does not retarget arbitrary rigs or add foot IK.

Editable Blender,2048 masters and the combined original remain in handmade-assets. Current separation record: `handmade-assets/validation/molroo-characters-distribution/v007/`; v001 records the earlier combined delivery. App code and remote hosting were not changed.

## Sources and notices

References were user-supplied/generated; shape/paint used Hunyuan3D Mini/Paint with local finishing. Provenance remains with the source versions.

- KayKit rig/animations: Kay Lousberg, [CC0 notice](licenses/License-KayKit.txt).
- Installed generation/paint terms: [License-Hunyuan3D-2.0.txt](licenses/License-Hunyuan3D-2.0.txt), [NOTICE-Hunyuan3D-2.0.txt](licenses/NOTICE-Hunyuan3D-2.0.txt).

The component CC0 notice is not a blanket license for the entire character. Staging/separation does not establish additional reference-image rights.

V023 limits: face texture bleed and small surface ripples remain. Full intersection comparison exhausted the 5,000,000-pair budget; this is not complete collision validation. No new PBR/native-engine test.


## Boy

![Boy with shared Idle_A](boy.png)

- Source: `handmade-assets/assets/models/characters/full/boy/v003/`. The delivered GLB is the source distribution artifact byte-for-byte: **9,544,172 bytes**, 180,760 triangles, 103,872 vertices, three meshes (Body/Head/Neck), KayKit Rig_Medium with21 joints, and two embedded1024x1024 base-color maps. Metres,+Y up,+Z forward; bind height about2.129m.
- **Zero embedded clips.** Load `../animations/kaykit-medium.glb` and bind its16 original-name clips to a cloned character skeleton. The source distribution binding check sampled512 poses and786,432 vertex comparisons against the combined boy model; maximum bone-matrix and vertex error were both0. Destination inspect and texture-inspect also passed. The exact delivery SHA is recorded in `manifest.json`.
- Idle shoe height is about2mm; the sampled Waving clip raises the shoes about30mm. Hair/skin texture bleed and surface artifacts remain. The full body intersection scan reached its5,000,000-pair cap. Game controls, physics, runtime FPS and performance were not measured.
- Editable sources, detailed image comparisons and the earlier failed intersection scan are in the handmade-assets v003 source record. The local addition record is `handmade-assets/validation/molroo-characters-distribution/v008/`.

V003 replaces the crown pale texture patch with sampled brown. The old GLB/preview/manifest/README are archived in handmade-assets/validation/molroo-characters-distribution/v008/previous/. Fine bright boundaries remain. Preview: Workbench flat texture, Idle_A at0.3s,768px; not PBR.
