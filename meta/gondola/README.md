# meta/gondola — 베네치아 운하 배포본

`/gondola` 장면(리오, 대운하, 곤돌라 유람)용 정적 GLB. 미터·Y-up. 건물은 원점이 정면 아래(부두 높이 0), 기초가 수면(-0.8) 아래로 내려간다. `wall`·`stone`·`algae` 재질은 흰색이며 장면이 벽돌·회반죽 텍스처와 색을 입힌다.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `gondola.glb` | 곤돌라 10.9 m, 뱃머리 +z, 원점은 흘수선. 페로·포르콜라·러브시트·의자 2개 | 269 KB |
| `oar.glb` | 노(remo) 4.3 m, 원점은 포르콜라에 걸리는 지점, 날은 +z | 16 KB |
| `palazzo-gothic.glb` | 벽돌 고딕 팔라초, 4층, 4연창과 발코니 | 807 KB |
| `casa-shutters.glb` | 회반죽 집, 초록 덧창, 철제 발코니 | 357 KB |
| `casa-altana.glb` | 좁고 높은 집, 지붕 위 목조 알타나 | 385 KB |
| `palazzo-grand.glb` | 대운하 팔라초, 아치 로지아 2층 | 1069 KB |
| `bridge.glb` | 벽돌 아치교, 경간 x 방향, 계단 16단씩, 정점 2.7 m | 270 KB |
| `palina.glb` | 빨강·흰 줄무늬 계류 말뚝 | 58 KB |
| `campanile.glb` | 벽돌 종탑 76 m | 1098 KB |
| `gate.glb` | 마을 동쪽 울타리의 베네치아식 문, 기둥 x ±3.05 | 82 KB |

## 원본·재현

meta 저장소 `node scripts/gondola.mjs <이름>` → 3d-maker `maker prop`. 레시피는 meta `assets/gondola-*.prop.json`. 압축하지 않았다. 모두 `issues: []`; 경고는 수면 아래로 내려가는 부분과 종탑 종루 아치 교차의 미세 조각(2 mm)뿐이다.
