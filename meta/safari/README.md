# meta/safari — 마사이마라 사파리 배포본

`/safari` 장면(케냐 마사이마라: 황금빛 초원, 우산 아카시아, 물웅덩이, 게임 드라이브 지프)용 정적 GLB. 미터·Y-up, 앞 +z.

| 파일 | 용도 |
|---|---|
| `jeep.glb` | 게임 드라이브용 오픈 지프. 길이 5 m·폭 1.9 m, 캔버스 선루프 2.45 m. 뒤 짐칸에 벤치 2열(상판 1.22 m, 장면의 좌석 4개). 차체 재질 `paint`를 장면에서 지프마다 다시 칠한다 |
| `acacia.glb` | 우산 아카시아. 높이 약 6.7 m, 납작한 수관 지름 약 8.4 m. 장면이 행렬로 배치한다 |
| `termite-mound.glb` | 붉은 흙 흰개미 둔덕, 높이 약 2.1 m |
| `grass.glb` | 마른 풀 한 포기(48 삼각형), 장면이 수천 개를 인스턴싱한다 |
| `zebra.glb`, `rhino.glb` | `../zoo`의 같은 모델을 `gltf-transform metalrough`로 KHR_materials_pbrSpecularGlossiness → metal-rough 변환 후 meshopt 재압축. Three.js가 원본 재질을 읽지 못해서다. 출처·라이선스(CC BY 4.0)는 `../zoo/README.md` |

## 원본·재현

meta 저장소 `npm run safari`(= `node scripts/safari.mjs <이름>` → 3d-maker `maker prop`). 레시피는 meta `assets/safari-*.prop.json`. 모두 `issues: []`.
