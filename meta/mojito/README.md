# meta/mojito — 몰디브 배포본

`/mojito` 장면(몰디브: 수상 빌라 라군)용 정적 GLB. 미터·Y-up, 원점은 수면. 물, 바닥, 초가 지붕 짚 텍스처는 meta 쪽에서 그린다.

| 파일 | 용도 |
|---|---|
| `villa.glb` | 수상 빌라: 3단 초가 모임지붕, 유리 전면, 플런지 풀, 선베드, 바다 사다리. 데크 높이 1.2, 진입로 +z |
| `grand.glb` | 잔교 끝 그랜드 빌라 본채: 초가 파빌리온 3채, 인피니티 풀, 데크 |
| `grand-out.glb` | 그랜드 빌라 부속(같은 좌표계): 원형 선큰 라운지, 워터슬라이드 계단·플랫폼(4.2) |
| `slide.glb` | 워터슬라이드(그랜드 빌라 좌표계): meta `src/app/mojito-layout.json` 곡선을 따라 스윕한 반원 홈통과 다리 |
| `jetty.glb`, `jetty-lamp.glb` | 잔교 4 m 모듈(상판 y 0), 램프 포함판 |
| `bar.glb` | 해변 바: 원형 초가 지붕, 곡선 카운터, 술병 선반, 모히또 잔, 스툴 |
| `sunbed.glb` | 선베드 두 개와 초가 파라솔, 모히또 한 잔 |
| `dhoni.glb` | 몰디브 전통배 도니, 뱃머리 +z |
| `seaplane.glb` | 수상비행기, 기수 +z |

## 재현

meta 저장소 `npm run mojito` (`scripts/mojito.mjs` → 3d-maker `maker prop`). 레시피는 meta `assets/mojito-<이름>.prop.json`.
