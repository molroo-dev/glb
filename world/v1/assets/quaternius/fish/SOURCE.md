# Pond fish

Source: "Animated Fish Pack" by Quaternius, https://opengameart.org/content/animated-fish (CC0, see LICENSE.txt).

- `pond-fish-orange.glb` ← `OBJ/Fish1.obj`
- `pond-fish-red.glb` ← `OBJ/Fish3.obj`

Converted with three.js OBJLoader + GLTFExporter: MTL diffuse colours baked to vertex
colours, merged into one mesh, straightened (Fish3 ships as a mid-swim frame),
scaled to length 1, centred, head toward +z. The swim
motion is a shader bend in `src/features/world/town-pond-fish.ts`, not the pack's rig.
