# meta/halong — 하롱베이 배포본

`/boat` 장면(베트남: 석회암 섬 사이 보트 여행)용 정적 GLB. 미터·Y-up, 원점은 수면. 물, 바닥, 항적, 암석 줄무늬 텍스처는 meta 쪽에서 그린다.

| 파일 | 용도 |
|---|---|
| `karst-a.glb` ~ `karst-d.glb` | 석회암 섬: 탑, 쌍봉, 바다 아치(z 방향으로 배가 지나감), 낮은 섬. 수면에 침식 홈, 위에 덤불. 형태는 meta `src/app/halong-karst.json` |
| `sampan.glb` | 플레이어 삼판 5.5 m, 뱃머리 +z, 눈 그림, 대나무 덮개, 롱테일 모터 |
| `junk.glb` | 붉은 돛 세 장의 관광 정크선 21 m, 뱃머리 +z |
| `house.glb` | 드럼통 위 수상가옥과 가두리, 문 +z, 갑판 높이 0.5 |

## 재현

meta 저장소 `npm run halong` (`scripts/halong.mjs` → 3d-maker `maker prop`, 섬은 `maker decimate`). 레시피는 meta `assets/halong-<이름>.prop.json`.
