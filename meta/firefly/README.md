# meta/firefly — 와이토모 반딧불이 동굴 배포본

`/firefly` 장면(뉴질랜드: 숲 입구, 종유석 방, 선착장, 배로 도는 반딧불이 동굴)용 정적 GLB. 미터·Y-up. 동굴 암벽, 물, 반딧불이와 실은 meta 쪽에서 그린다.

| 파일 | 용도 |
|---|---|
| `boat.glb` | 8인승 알루미늄 배. 뱃머리 +z, 원점은 수면 |
| `jetty.glb`, `deck.glb`, `rail.glb` | 선착장(10×11.5 m), 데크 2 m, 난간 2 m. 윗면 y 0 |
| `lamp.glb`, `sign.glb`, `gate.glb` | 바닥등, 안내판(글씨는 meta), 나무 문(글씨는 meta) |
| `larva.glb` | 10배 크기 글로우웜과 구슬실 모형 |
| `stalactite-a/b/c.glb`, `straws.glb`, `curtain.glb` | 종유석, 빨대 종유석, 커튼. 원점에서 아래로 |
| `stalagmite-a/b.glb`, `column.glb`, `flowstone.glb` | 석순, 석주(8 m), 유석 |
| `ledge-a/b.glb`, `rubble.glb`, `mossrock.glb` | 층진 석회암 선반(뒤 -z), 낙석, 이끼 바위 |
| `treefern.glb`, `fern.glb` | 은고사리 나무, 고사리 |

## 재현

meta 저장소 `npm run firefly` (`scripts/firefly.mjs` → 3d-maker `maker prop`, 예산이 있는 것은 `maker decimate`). 레시피는 meta `assets/firefly-<이름>.prop.json`.
