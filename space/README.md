# space — 몰루 우주(space.molroo.com) 배포본

| 파일 | 용도 | 삼각형 | 크기 |
|---|---|---:|---:|
| `ship.glb` | 플레이어 우주 전투기. 기수 +Z, 원점은 선체 중심. 빈 노드 `engine_l`/`engine_r`가 분사구 출구(불꽃 위치), 재질별 메시 9개(`ship_engine_glow`는 분사구 발광). 텍스처 없음, 금속성 0.35 이하 | 10,808 | 222 KB |
| `station.glb` | 출발 지점의 궤도 정거장. 도킹 포트 +Z, 원점은 고리 중심. `ring` 노드를 Z축으로 돌리면 거주 고리 회전, `*_beacon_red` 메시는 깜빡이는 등 | 14,184 | 344 KB |
| `spitfire.glb` | 이전 Vite 버전의 우주선(Quaternius, [라이선스](QUATERNIUS_LICENSE.txt)). 새 버전은 쓰지 않는다 | | |

`ship.glb`·`station.glb`는 handmade-assets의 결정적 Blender 5.3 스크립트 출력과 바이트가 같다(수동 수정 없음).

- `ship.glb` ← `handmade-assets/assets/models/vehicles/space-fighter/v001/model.glb` (`build_ship.py`), SHA-256 `c58841821dcc1c9f759d402603ddd5d990c5e12220a179d0fe015a0ad2fb9d14`
- `station.glb` ← `handmade-assets/assets/models/buildings/orbital-station/v001/model.glb` (`build_station.py`), SHA-256 `26274df22525b5f7e60a314ec13879f3e2da133fd4d48e3ccfc3591c04a11042`

3d-maker `inspect`는 둘 다 `issues: []`, `warnings: []`. 렌더는 handmade-assets `assets/png/...`에 있다.
