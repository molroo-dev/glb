# molroo Kenney village assets

The `/world` village uses a curated, web-ready subset of six official Kenney
packs. Models stay in their source-pack folders so relative texture references,
licenses, and future additions remain predictable.

| Folder | Source | Version used | Village roles |
| --- | --- | --- | --- |
| `mini-forest` | https://kenney.nl/assets/mini-forest | 1.0 | trees, plants, fences, flags, bridge, stage, tent |
| `holiday-kit` | https://kenney.nl/assets/holiday-kit | 2.0 | benches, decorated snow tree, gift boxes |
| `cube-pets` | https://kenney.nl/assets/cube-pets | 1.0 | small dog, cat, bunny, and fox pets with idle/walk clips |
| `car-kit` | https://kenney.nl/assets/car-kit | 3.1 | parked sedan, sports hatchback, and delivery van |
| `pirate-kit` | https://kenney.nl/assets/pirate-kit | 2.1 | black-sail pirate ship and white-sail ship floating on the village pond |
| `fantasy-town-kit` | https://kenney.nl/assets/fantasy-town-kit | 2.0 | modular houses, long workshop, small shop, three-story town hall, balconies, banners, steps, water wheel, market, cart, lanterns, rocks, trees, teal/red roofs, wooden doors/windows, windmill building |

All six packs are distributed under Creative Commons CC0. The original
`LICENSE.txt` from each downloaded archive is kept beside that pack's models.

The world editor also ships the CC0 `furniture-kit` pack as an editor-only
library. Its 140 GLB models are kept out of molroo's generated village
layout and out of the building-parts editor. The bundled isometric previews
power the `/edit` thumbnail palette, while model files are loaded only when an
item is placed. See `furniture-kit/SOURCE.md` for the source snapshot.

The Fantasy Town Kit landing page lists 160 package files. The downloadable
2.0 archive currently contains 167 GLB models (plus FBX/OBJ variants,
materials, textures, and documentation). This repository includes all 167
GLBs, the shared texture, and the original license. The building editor shows
all 167 models in its palette; models marked as building-only stay out of the
standalone world-asset palette.

Runtime registration and placement live in
`src/features/world/village-model-assets.ts`. Each unique GLB is loaded once
and cloned for every placement. Missing models are reported as unavailable;
the old generated village meshes are not retained as fallbacks.
