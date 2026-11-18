# meta/spoil — 망작 전시관 배포본

`/spoil`(망작 전시관)과 마을의 전시관 건물용. 미터·Y-up, 바닥 y 0, X/Z 중심. 작품 GLB는 Draco 압축 형상 + WebP 기본색 텍스처(drei `useGLTF`의 기본 디코더로 열린다).

| 파일 | 용도 | 원본 | 크기 |
|---|---|---|---:|
| `tiger.glb` | 호랑이, 채색 완성본, 4만 삼각형 | handmade-assets `animals/tiger/v001/model.glb` (99,982) | 492 KB |
| `tiger-shape.glb` | 호랑이, 채색 전 생성 형상(재질 없음), 4만 삼각형 | `animals/tiger/v001/generation/shape-001/model.glb` (1,247,912) | 557 KB |
| `pikachu.glb` | 피카츄, 채색 완성본, 4만 삼각형 | `characters/full/pikachu/v001/model.glb` (99,996) | 417 KB |
| `pikachu-shape.glb` | 피카츄, 채색 전 생성 형상(재질 없음), 4만 삼각형 | `characters/full/pikachu/v001/generation/shape/model.glb` (1,424,432) | 552 KB |
| `tiger-side.webp` | 마을 간판용 호랑이 옆모습 컷아웃(투명 배경, 흰 테두리), 머리가 왼쪽 | `tiger.glb` 원본 | 84 KB |
| `building.glb` | 마을의 전시관 건물, 정면 +z가 z 0, 바닥 y 0. `wall` 등 팔레트 재질 | meta `scripts/town.mjs spoil` → 3d-maker prop → `separate-faces.mjs` | 123 KB |

## 재현

meta 저장소, Blender 5.3:

    blender --background --factory-startup --python scripts/spoil-assets.py -- model <원본.glb> <출력.glb> 40000
    blender --background --factory-startup --python scripts/spoil-assets.py -- side <원본 model.glb> tiger-side.webp 1024

감량은 Blender Decimate(collapse)로 전 메시를 합친 뒤 적용. 텍스처 수동 보정 없음. 원본 생성물의 결함(호랑이 비다양체 56면, 피카츄 귀 뒤 막대 등)은 전시 의도상 그대로 둔다. 3d-maker `inspect`/`render`는 Draco를 읽지 못해 Blender 렌더로 육안 확인했다.

원본 이미지의 외부 권리는 확인되지 않았다(handmade-assets 각 README 참고).
