# meta/space — 우주 배포본

meta `/station`(우주정거장 전망 데크)용 정적 GLB. 우주 비행은 별도 사이트(space.molroo.com)로 옮겼고 그 에셋은 glb `space/`에 있다. 미터·Y-up, 텍스처 없이 재질 값만 쓴다. meta에는 환경 맵이 없어 금속성은 0.35 이하다.

| 파일 | 용도 | 삼각형 | 크기 |
|---|---|---:|---:|
| `ship.glb` | (이전 meta `/space`용. `space/ship.glb`와 같은 파일, meta 배포에서 `/space`가 빠지면 지워도 됨) 플레이어 우주 전투기. 기수 +Z, 원점은 선체 중심. 빈 노드 `engine_l`/`engine_r`가 분사구 출구(불꽃 위치), 재질별 메시 9개(`ship_engine_glow`는 분사구 발광) | 10,808 | 222 KB |
| `station.glb` | (이전 meta `/space`용. `space/station.glb`와 같은 파일, 위와 같음) 궤도 정거장 외부. 도킹 포트 +Z, 원점은 고리 중심. `ring` 노드를 Z축으로 돌리면 거주 고리가 회전, `*_beacon_red` 메시는 깜빡이는 등. 태양전지 날개 `solar_top`/`solar_bottom` | 14,184 | 344 KB |
| `station-deck.glb` | 정거장 전망 데크 실내. 바닥 윗면 y=0, x −14–14, z −9–9, 천장 6 m. 북쪽(−Z) 창은 유리 없이 열려 있다. 동쪽 벽(x=14)에 격납고 문, 서쪽 벽(x=−14)에 엘리베이터. 벽은 면마다, 천장은 따로 노드가 나뉘어 있다(카메라 가림 페이드용) | 11,932 | 285 KB |

## 원본·재현

handmade-assets의 결정적 Blender 5.3 스크립트 출력이며 수동 수정은 없다. 바이트가 원본과 같다(SHA-256은 각 README).

- `ship.glb` ← `handmade-assets/assets/models/vehicles/space-fighter/v001/model.glb` (`build_ship.py`)
- `station.glb` ← `handmade-assets/assets/models/buildings/orbital-station/v001/model.glb` (`build_station.py`)
- `station-deck.glb` ← `handmade-assets/assets/models/buildings/station-deck/v001/model.glb` (`build_deck.py`)

3d-maker `inspect`는 세 파일 모두 `issues: []`, `warnings: []`. 정면·측면·후면·사선 렌더와 데크 실내 렌더는 handmade-assets `assets/png/...`에 있다.
