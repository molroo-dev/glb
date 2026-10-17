# KayKit Game Assets

Game assets are grouped by type. Package names and the original paths inside each archive are preserved beneath the type folders.

| Path | Contents |
|---|---|
| `Mdl/glTF` | `.gltf` files |
| `Mdl/GLB` | `.glb` files |
| `Mdl/glTF_Bin` | `.bin` external buffer data used by glTF files |
| `Tex` | External texture images referenced by the retained models |

Only GLB/glTF models, their required external buffers and textures, and available documentation and licenses are retained. FBX, OBJ, MTL, unreferenced images, and OS metadata have been removed.

The glTF `buffers[].uri` and `images[].uri` paths point to the actual files under `Mdl/glTF_Bin` and `Tex`. Keep these folders together when moving the collection.

## Character assets

The canonical KayKit GLB/glTF character library is in [`../character/kaykit`](../character/kaykit/README.md). It includes Adventurers 2.0, Skeletons 1.1, Character Animations 1.1, and the Dungeon Pack 1.0 characters and extra heads.

Duplicate GLB/glTF models, animation files, external buffers, and their glTF-only texture copies have been removed from this collection. Models and buffers were compared by SHA-256; glTF JSON was also compared with image URI paths normalized to account for the library's shared texture folder.

Dungeon Pack environment assets remain here. The character library retains its own required buffers, textures, documentation, and licenses.

## Package paths

Package names and original model subdirectories are preserved within the retained type folders. The source archives' previews, samples, logos, and link files are excluded from this collection.
