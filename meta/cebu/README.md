# meta/cebu — 세부 모알보알·카와산 배포본

`/cebu` 장면(필리핀: 해변 마을, 절벽 바다, 카와산 폭포)용 정적 GLB. 미터·Y-up. 지형, 물, 정어리 떼, 고래상어 점무늬는 meta 쪽에서 그린다.

| 파일 | 용도 |
|---|---|
| `bangka.glb` | 방카 배 8 m. 뱃머리 +z, 원점은 수면 |
| `hut.glb` | 니파 오두막. 문과 사다리 +z |
| `raft.glb` | 대나무 뗏목 2.2×3.2 m. 원점은 수면 |
| `tree.glb`, `banana.glb`, `shrub.glb` | 정글 나무, 바나나, 토란 덤불 |
| `jack.glb`, `whaleshark.glb` | 길이 1, 머리 +z (장면에서 크기 조정) |

## 재현

meta 저장소 `npm run cebu` (`scripts/cebu.mjs` → 3d-maker `maker prop`, 예산이 있는 것은 `maker decimate`). 레시피는 meta `assets/cebu-<이름>.prop.json`.
