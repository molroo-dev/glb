# meta/earth — 지구 배포본

`/earth` 장면(걸어 다니는 작은 지구)용 정적 GLB. 미터·Y-up.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `signpost.glb` | 나라 푯말: 기둥 두 개 x ±0.93 사이에 널판 세 장(가운데 y 2.15, 앞뒷면 z ±0.0225), 위아래 테두리, 작은 맞배 지붕(용마루 3.0 m). 글씨는 meta 쪽에서 판 앞뒷면에 얹는다 | 66 KB |

## 원본·재현

meta 저장소 `node scripts/earth.mjs signpost` → 3d-maker `maker prop`. 레시피는 meta `assets/earth-signpost.prop.json`. 압축하지 않았다. `issues: []`, 경고는 `not on the ground`(기둥이 비탈에서 뜨지 않게 0.12 m 묻힌 것이라 의도된 것) 하나.
