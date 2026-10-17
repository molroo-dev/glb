# KayKit character library

KayKit character assets by Kay Lousberg (www.kaylousberg.com), all **CC0** (see `licenses/`). They were taken out of the original packs in `samples/kaykit/characters` and organized by rig. Identical copies were dropped: the packs each shipped `Rig_Medium_General/MovementBasic.glb` and every texture two or three times.

The `/kaykit` page and `npm run maker -- kaykit*` read this library. Outfit and preset paths are relative to its root, independent of its physical location.

| Folder | What | Source pack |
|---|---|---|
| `rig-medium/characters/` | Barbarian, Knight, Mage, Ranger, Rogue, Rogue_Hooded; Skeleton_Mage/Minion/Rogue/Warrior; Mannequin_Medium. Skinned, split into parts, texture embedded | Adventurers 2.0, Skeletons 1.1, Character Animations 1.1 |
| `rig-medium/animations/` | `Rig_Medium_*.glb` clip files (8): CombatMelee, CombatRanged, General, MovementAdvanced, MovementBasic, Simulation, Special, Tools | Character Animations 1.1 |
| `rig-large/` | Mannequin_Large and the `Rig_Large_*.glb` clips. Same bone names as Rig_Medium but other proportions: don't mix the two | Character Animations 1.1 |
| `props/adventurers/`, `props/skeletons/` | Weapons, shields, books and other items (`.gltf` + `.bin`), made to sit on the `handslot.l`/`handslot.r` bones | Adventurers 2.0, Skeletons 1.1 |
| `textures/` | The 1024² gradient palettes. Props point here (`../../textures/…`); the characters carry their own copy | all |
| `dungeon/` | The older Dungeon Pack 1.0 characters and extra heads (their own rig, not Rig_Medium; not used by `/kaykit`) | Dungeon Pack 1.0 |

Only GLB/glTF models and their referenced external `.bin` buffers and PNG textures are kept, along with this README and the licenses. Unused formats (FBX / OBJ / DAE), preview renders, unused textures and the old move manifest have been removed.

The Dungeon Pack's environment models (walls, floors, props) aren't character assets and stay in `samples/kaykit/characters/KayKit Dungeon Pack 1.0`.

## Move the library outside the app

Copy or move this entire folder, including `textures/` and `licenses/`, keeping the internal paths and filenames unchanged. Set `KAYKIT_ROOT` to the new library root (the folder containing `rig-medium/`, `props/`, etc.). Absolute paths are recommended; relative paths resolve from the app's working directory. With no value, the app uses `assets/kaykit`.

```bash
KAYKIT_ROOT=/path/to/kaykit npm run dev
KAYKIT_ROOT=/path/to/kaykit npm run maker -- kaykit-catalog
KAYKIT_ROOT=/path/to/kaykit npm run maker -- kaykit 'presets/kaykit/데모 마법기사.json' /tmp/demo.glb
```

The server and CLI both use `src/lib/kaykit-library.ts`. Supply the variable to each process and restart the server after changing it. Next.js can read it from `.env.local`; the CLI uses the shell environment. Existing outfit JSON and browser URLs stay the same. Edited outfits remain in the app's `presets/kaykit/` directory; the source library is only read by the app.

Before removing the bundled copy, compare catalogs and build the same preset from both locations: the catalogs and exported GLB bytes should match, and the build report should contain `"issues": []`.

`KAYKIT_ROOT` is a filesystem directory. A separate asset repository or mounted storage can provide it. Direct HTTP/object-storage loading requires a future loader change; the current catalog and outfit builder read files synchronously.
