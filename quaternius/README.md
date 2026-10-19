# Quaternius character library

The 52 glTF characters in `animated-character/` were moved unchanged from `samples/quaternius/`. Their buffers are embedded as data URIs, so each model is self-contained. Keep source models here and editable copies in the app's gitignored `samples/work/` directory.

The `/quaternius` viewer lists this library alongside scratch models. Viewer paths retain the `quaternius/` prefix: `/quaternius?file=quaternius/animated-character/Casual_Male.gltf`. The prefix is a viewer namespace; it is not part of the physical library root. Preview, change polling and export all resolve it through the same configuration. Look presets remain in the app's `presets/` folder.

```bash
npm run maker -- unpack assets/quaternius/animated-character/Casual_Male.gltf samples/work/Casual_Male.gltf
npm run maker -- inspect assets/quaternius/animated-character/Casual_Male.gltf
```

## Move the library outside the app

Move this entire folder, keeping its internal paths unchanged. Set `QUATERNIUS_ROOT` to the directory containing `animated-character/`. Absolute paths are recommended; relative paths resolve from the app's working directory. The default is `assets/quaternius`. The setting is defined in `src/lib/quaternius-library.ts`.

```bash
QUATERNIUS_ROOT=/path/to/quaternius npm run dev
npm run maker -- inspect /path/to/quaternius/animated-character/Casual_Male.gltf
npm run maker -- look /path/to/quaternius/animated-character/Casual_Male.gltf 'presets/보라 테마.json' /tmp/demo.glb
```

Next.js can read `QUATERNIUS_ROOT` from `.env.local`; restart the server after changing it. The generic CLI commands accept explicit filesystem paths, so use the external model path when invoking them. Existing viewer URLs and look presets keep working without edits.

Before removing a local copy, compare the viewer's model list and export the same model with the same look from both locations: exported GLB bytes should match and inspection should report `"issues": []`. This library currently uses filesystem access; an external asset repository or mounted storage can supply it. Direct HTTP/object-storage loading requires a future loader change.
