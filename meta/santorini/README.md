# meta/santorini — 산토리니 배포본

`/santorini` 장면(그리스: 파란 돔, 부겐빌레아 계단, 풍차 언덕, 항구 카페, 성벽 일몰)용 정적 GLB. 미터·Y-up, 앞 +z(따로 적은 것 제외). 집들은 앞벽이 z 0이고 경사지에 묻히도록 기초가 y −4 m까지 내려간다.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `balcony.glb` | 항구의 발코니 집. 청록 문, 파란 난간 | 90 KB |
| `bell.glb` | 종과 줄. 원점에 매달려 흔들림 | 15 KB |
| `bell-tower.glb` | 2단 아치 종탑. 종은 y 4.9에 매단다 | 79 KB |
| `bench.glb` | 회벽 벤치 2.6 m, 좌면 0.45 m | 10 KB |
| `boat-cruise.glb` | 유람 범선 | 43 KB |
| `boat-fishing.glb` | 어선(뱃머리 +z, 수면 y 0) | 48 KB |
| `bougainvillea.glb` | 담을 넘는 부겐빌레아(근경) | 2064 KB |
| `bougainvillea-far.glb` | 같은 덩굴(원경용) | 800 KB |
| `castle.glb` | 무너진 성벽 전망대(+z로 열림) | 128 KB |
| `cave-house.glb` | 동굴집(근경): 볼트 방·별채·담 두른 테라스 | 316 KB |
| `cave-low.glb` | 동굴집(원경용) | 63 KB |
| `chair-teal.glb` | 청록 카페 의자 | 31 KB |
| `chair-white.glb` | 흰 카페 의자 | 30 KB |
| `chapel.glb` | 작은 돔 예배당 | 68 KB |
| `church.glb` | 파란 돔 교회. 팔각 드럼·볼트형 본당과 측랑·앱스. 문이 +z | 323 KB |
| `cube.glb` | 흰 입방체 집 | 61 KB |
| `cube-ochre.glb` | 황토색 집 | 62 KB |
| `cube-pink.glb` | 분홍 집 | 61 KB |
| `easel.glb` | 엽서 이젤 | 24 KB |
| `gate.glb` | 파란 문 | 43 KB |
| `lamp.glb` | 가로등(`glow_lamp`) | 10 KB |
| `low-wall.glb` | 회벽 낮은 담 4 m | 5 KB |
| `olive.glb` | 올리브나무 | 259 KB |
| `parasol.glb` | 파라솔 | 16 KB |
| `pergola.glb` | 퍼걸러 4 m | 45 KB |
| `piling.glb` | 선착장 말뚝 | 16 KB |
| `pots.glb` | 화분과 항아리 | 73 KB |
| `prickly-pear.glb` | 손바닥선인장 | 131 KB |
| `sails.glb` | 풍차 날개. 원점에서 z축으로 돈다 | 45 KB |
| `sea-blue.glb` | 물 위의 집(파란 목조 회랑) | 46 KB |
| `sea-red.glb` | 물 위의 집(붉은 목조 회랑) | 46 KB |
| `shrub.glb` | 절벽 관목 | 50 KB |
| `stone-wall.glb` | 용암석 담 4 m | 152 KB |
| `sunbed.glb` | 선베드(머리 −z) | 25 KB |
| `table.glb` | 카페 탁자 | 22 KB |
| `tall.glb` | 바깥 계단이 있는 2층집 | 92 KB |
| `tree-vine.glb` | 나무형 부겐빌레아 | 593 KB |
| `wildflowers.glb` | 노란 들꽃 | 58 KB |
| `windmill.glb` | 풍차 몸체. 날개는 y 5.1 부근에 단다 | 58 KB |

지형, 바다, 하늘과 구름, 판석과 계단, 먼 섬, 수영장 물은 GLB가 아니라 장면 코드와 셰이더가 그린다. 꽃잎과 잎은 한쪽 면만 있어 장면이 양면으로 그린다. 재질 `pane`·`dark`(창)는 해가 지면 장면이 밝힌다.

## 원본·재현

meta 저장소 `npm run santorini`(= `node scripts/santorini.mjs <이름>` → 3d-maker `maker prop`, castle·sunbed·prickly-pear는 `maker decimate`). 레시피는 meta `assets/santorini-*.prop.json`. 그다음 gltfpack 1.3.0 `-cc -vp 16 -vn 10 -kn -km -ke`로 Meshopt 압축했다(`EXT_meshopt_compression` 필요). 모두 `issues: []`. 남은 경고는 묻히는 기초·수면 아래로 인한 `min y`, 쓰지 않는 공용 팔레트 색, 서로 닿게 겹쳐 놓은 갈대·배 좌판의 `floating` 등이다.
