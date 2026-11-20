# meta/coral — 그레이트 배리어 리프 배포본

`/coral` 장면(호주 그레이트 배리어 리프: 모래섬, 라군, 산호초 평원, 산호초 끝의 절벽과 깊은 모래 바닥의 산호 봉우리)용 정적 GLB. 미터·Y-up, 앞 +z.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `staghorn.glb` | 가지 산호(Acropora) 덤불, 약 1.3×1.1 m·높이 0.95 m. 줄기 `coral`, 연한 성장 끝 `tip` (장면이 갈색·보라 끝·파랑 끝으로 다시 칠함). 11.6k 삼각형 | 375 KB |
| `table.glb` | 테이블 산호, 지름 1.4 m 판이 0.45 m 높이 줄기 위에, 윗면에 짧은 가지 돌기, 아래 방사형 갈빗대. `coral` | 223 KB |
| `brain.glb` | 뇌 산호 돔, 1.1×1.0 m·높이 0.64 m, 구불구불한 골. `coral` | 215 KB |
| `fan.glb` | 부채 산호(고르고니언), 폭 1.3 m·높이 1.1 m, xy 평면의 격자와 양면 잎맥. `fan` | 531 KB |
| `soft.glb` | 손가락 연산호, 0.6 m·높이 0.64 m. `sway_soft` (장면 셰이더가 흔듦) | 121 KB |
| `anemone.glb` | 말미잘, 지름 0.78 m, 기둥 `column`과 촉수 140개(크림색 `sway_tent`, 라벤더 끝 `sway_tip`) | 2.0 MB |
| `clam.glb` | 대왕조개, 길이 0.6 m, 주름진 껍데기 `shell`, 외투막 `mantle`과 반점 `spot` | 113 KB |
| `bommie.glb` | 산호 봉우리 바위, 7.0×6.1 m·높이 6.0 m(밑단 0.6 m는 모래에 묻힘), 각진 층. `rock`. 장면이 윗면에 산호를 얹음 | 213 KB |
| `palm.glb` | 코코넛 야자, 높이 7.2 m, +z로 휜 줄기, 잎 16장(잎조각이 따로 갈라진 `sway_frond`), 열매 | 915 KB |
| `clownfish.glb` | 흰띠 흰동가리, 길이 1(장면이 축소), 머리 +z, 검은 테두리 흰 띠 3개 | 213 KB |
| `chromis.glb` | 크로미스, 길이 1, 갈라진 꼬리 | 55 KB |
| `anthias.glb` | 앤티아스, 길이 1, 리라형 꼬리 | 55 KB |
| `butterfly.glb` | 나비고기, 길이 1, 노란 몸에 눈을 지나는 검은 띠와 꼬리 쪽 점 | 105 KB |
| `turtle.glb` | 푸른바다거북, 길이 1.3 m(장면 1.2배), 머리 +z, 등딱지 `shell` 위 비늘판 `scute`, 배딱지, 앞·뒷지느러미 | 356 KB |

`sway_*` 재질의 흔들림, 물고기 꼬리짓, 거북 지느러미짓은 GLB가 아니라 장면 셰이더가 한다. 하늘, 수면, 수중 빛·커스틱·빛줄기, 바닥(모래·라군·산호초 평원)도 장면이 그린다.

## 원본·재현

meta 저장소 `npm run coral`(= `node scripts/coral.mjs <이름>` → 3d-maker `maker prop`, 예산이 있는 것은 `maker decimate --triangles=<예산>`; 예산은 `node scripts/coral.mjs <이름> budget`). 레시피는 meta `assets/coral-*.prop.json`. 압축하지 않았다. 모두 `issues: []`; 경고는 물고기·바위·산호의 `not on the ground`(모래에 묻히거나 물속에 뜨는 것이라 의도)뿐.
