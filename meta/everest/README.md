# meta/everest — 에베레스트 배포본

`/everest` 장면(베이스캠프, 등반로, 정상, 썰매 활강)과 마을 서쪽 울타리의 네팔 문용 정적 GLB. 미터·Y-up.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `sled.glb` | 다보스식 나무 썰매 1.28 m, 앞 +z, 활주부 y 0, 쿠션 윗면 0.22 m | 131 KB |
| `gate.glb` | 네와르식 문: 벽돌 기둥 x ±3.05, 조각 상인방, 금빛 토라나, 2층 탑 지붕 | 237 KB |
| `flags.glb` | 룽타 깃발 줄 10 m, 원점에서 +x로, 0.7 m 처짐, 오색 21장 | 76 KB |
| `tent.glb` | 원정용 돔 텐트 2.2×1.6 m, 문 +z (`fly` 재질 색을 바꿔 빨강 텐트로 씀) | 743 KB |
| `chorten.glb` | 베이스캠프 푸자 제단: 돌 기단, 흰 돔, 금빛 13륜 첨탑, 깃대 끝 (0, 7.2, 0) | 273 KB |
| `summit.glb` | 정상의 측량 삼각대 1.8 m와 카타 스카프 | 196 KB |
| `picket.glb` | 고정 로프용 알루미늄 스노 피켓, 고리 높이 0.9 m | 21 KB |

## 원본·재현

meta 저장소 `node scripts/everest.mjs <이름>` → 3d-maker `maker prop`. 레시피는 meta `assets/everest-*.prop.json`. 압축하지 않았다. 모두 `issues: []`, 경고 없음(`not on the ground`는 눈에 박히는 피켓·삼각대, 매다는 깃발이라 의도된 것).
