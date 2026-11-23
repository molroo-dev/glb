# meta/earth — 지구 배포본

`/earth` 장면(걸어 다니는 작은 지구)용 정적 GLB. 미터·Y-up.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `signpost.glb` | (이전 나라 푯말. 새 배포 뒤 지워도 됨) 기둥 두 개 x ±0.93 사이에 널판 세 장(가운데 y 2.15, 앞뒷면 z ±0.0225), 위아래 테두리, 작은 맞배 지붕(용마루 3.0 m). 글씨는 meta 쪽에서 판 앞뒷면에 얹는다 | 66 KB |
| `signboard.glb` | 나라 푯말: 돌 몇 개로 다진 외기둥(윗면 2.5 m) 앞뒤에 닳고 갈라진 널판 세 장씩 못으로 박음(2.15×1.04 m, 가운데 y 1.78, 앞뒷면 z ±0.103). 글씨는 meta 쪽에서 얹는다 | 634 KB |
| `flagpole.glb` | 국기 깃대: 4.1 m 쇠기둥, 위아래 둥근 마개와 깃발 고리 둘. 기울이고 천을 다는 건 meta 쪽 | 257 KB |
| `flags/<나라>.webp` | 국기 16장, 높이 최대 512·너비 최대 768 px, 나라별 실제 비율(네팔은 투명 배경). [hampusborgos/country-flags](https://github.com/hampusborgos/country-flags) SVG(퍼블릭 도메인)에서 변환 | 1–16 KB |
| `boat.glb` | 바다 위 1인용 작은 보트: 길이 2.4 m·폭 1.1 m, 뱃머리 +z, 원점은 수면. 옆면이 벌어진 빨간 선체, 바닥판(윗면 y 0.165)에 앉고 뒤 가로대·앞 가로대·앞갑판, 양옆에 걸친 노 한 쌍, 황동 노걸이 | 192 KB |

## 원본·재현

meta 저장소 `node scripts/earth.mjs <signboard|flagpole|boat>` → 3d-maker `maker prop`. 레시피는 meta `assets/earth-<이름>.prop.json`. 압축하지 않았다. 모두 `issues: []`. 경고는 `not on the ground` 하나씩(푯말의 `stone6: floating`은 땅에 놓인 돌): 푯말과 깃대는 비탈에서 뜨지 않게 0.15–0.2 m 묻은 것이고, 보트는 용골이 수면 아래 0.15 m까지 잠긴 것이라 모두 의도된 것.
