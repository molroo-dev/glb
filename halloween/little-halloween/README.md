# Little Halloween

30 cozy (not scary) Halloween props in the same soft, rounded style as Little Cafe, Little Bakery and Little Cozy Room: pumpkins, spooky friends, witchy things, a little graveyard and treats — with matching rendered icons.

## Package contents

- `3d/glb/` — 30 GLB files with embedded material colors
- `3d/fbx/` — the same 30 models in FBX
- `3d/obj/` — the same 30 models in OBJ, each with its MTL. Keep each OBJ next to its MTL
- `2d/512`, `2d/256`, `2d/128`, `2d/64` — 120 transparent PNG icons rendered from the models, plus a contact sheet
- `manifest.json` — IDs, categories, triangle counts and dimensions

## Import and scale

Units are meters with real-world sizes (pumpkin about 30 cm, scarecrow 1.47 m). Origins are at the bottom center. GLB uses Y-up and +Z front. FBX is exported with transforms applied so it imports into Unity at scale 1 without a root rotation. Unity does not read GLB natively; use FBX/OBJ or install glTFast for GLB.

Materials are flat editable colors (no texture maps, no UVs). Models are static, without rigs or animations. 112–5,772 triangles per model. Ground, walls and floors are not included.

## Verification

All 30 GLBs passed glTF Validator with zero errors and warnings. All 30 models were re-imported into Blender 5.2 in GLB, FBX and OBJ, comparing triangle counts, dimensions, bottom-center origins and material colors. Imported into Unity 6 (6000.5.7f1): all 30 FBX files matched triangle counts, heights and bottom-center origins, with scale 1 and no root rotation. Unreal and Godot have not been tested.

## Production disclosure

Modeled with AI-assisted Blender Python code (Anthropic Claude). Every mesh is built from code-generated shapes. No AI-generated meshes, images or textures and no third-party assets are included. Icons are Blender renders of the included models.

## License

See `LICENSE.txt`. Use in personal and commercial finished projects is permitted. Do not resell or redistribute the asset files themselves.
