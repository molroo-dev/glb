# meta/town — 몰루 광장 배포본

`/town` 마을 한가운데 광장(성당과 교회 사이, 절 가는 길이 큰길에서 갈라지는 곳)용 정적 GLB. 미터·Y-up, 앞 +z(따로 적은 것 제외).
원본 레시피는 meta 저장소 `scripts/plaza.mjs`(3d-maker prop)이고 `npm run plaza`로 다시 만든다. 배치는 `src/app/grounds.ts`의 `SQUARE` 이하, 장면은 `src/app/Square.tsx`.
계절 중앙 장식 중 봄 벚나무·가을 단풍나무는 `meta/sakura/cherry-spreading.glb`·`meta/autumn/autumn-maple-spreading.glb`, 겨울 트리는 `meta/common/grand-christmas-tree-v005.glb`를 쓴다.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `coffee-truck.glb` | 민트색 빈티지 커피 트럭. 길이 5.3 m(운전석 +x)·폭 2.1 m, +z 쪽 서빙 창(x −1.9~0.9, 카운터 1.18 m)과 받쳐 올린 차양·전구, 에스프레소 머신·그라인더·빵 진열장·컵, 지붕 간판(글자는 장면), 앞쪽 A형 칠판. `glass`는 장면이 반투명 처리 | 836 KB |
| `bistro-set.glb` | 대리석 원형 테이블(상판 0.75 m)과 파라솔, x ±0.62에 테이블을 향한 벤트우드 의자 2개(좌판 0.46 m) | 260 KB |
| `bench.glb` | 공원 벤치. 길이 1.8 m, 좌판 0.45 m, 주철 다리 | 74 KB |
| `stage.glb` | 야외무대. 폭 8 m(x)·깊이 6 m(z −6~0), 데크 0.4 m, 가운데 계단 2단(폭 4 m, z 0~0.7). 뒷벽 스크린 틀(화면 5.6 m, 중심 높이 2.75 m, z −5.76 — 영상은 장면), 아치 지붕·트러스·조명·스피커·마이크 스탠드·삼각 깃발. 데크 `boards`에 장면이 나뭇결을 입힌다 | 1.1 MB |
| `stall.glb` | 플리마켓 가판대. 테이블 2.2 m·높이 0.8 m, 줄무늬 박공 차양. `stripeA`·`cloth` 색은 장면이 가판대마다 바꾼다 | 166 KB |
| `goods-vintage.glb` · `goods-flowers.glb` · `goods-crafts.glb` | 가판대 위 상품(높이 0.8 m에 놓임): 책·LP·스탠드·찻주전자·카메라·액자 / 꽃 양동이·화분 / 도자기·뜨개·잼·바구니·나무 장난감 | 159 · 440 · 331 KB |
| `kiosk.glb` | 엽서·기념품 가판대. 폭 2 m, 카운터 0.95 m, 뒷벽 기념품 칸 5×3(칸 0.36 m, 바닥 높이 1.0·1.36·1.72), 이름판(글자는 장면), 옆에 엽서 회전대 | 251 KB |
| `postbox.glb` | 빨간 우체통. 높이 1.32 m, 투입구 +z | 76 KB |
| `fountain.glb` | 여름 중앙 분수. 수반 반지름 4.2 m, 단 1.2·2.2 m. 물은 장면이 그린다 | 194 KB |
| `bed.glb` | 둥근 화단. 반지름 3.2 m, 벽 높이 0.45 m, 꽃 두 줄. 꽃잎 `petalA`·`petalB`는 장면이 계절색으로 바꾼다 | 1.5 MB |
| `planter.glb` | 나무 화분 상자 0.9 m, 다듬은 관목과 꽃 | 134 KB |
