# meta/balloon — 카파도키아 배포본

`/balloon` 장면(새벽의 이륙장, 요정의 굴뚝 계곡, 열기구 탑승)용 정적 GLB. 미터·Y-up, 앞 +z.

| 파일 | 용도 | 크기 |
|---|---|---:|
| `balloon.glb` | 승객용 열기구. 바구니 3.0×1.8 m·깊이 1.05 m(바닥 y 0), 가운데 조종칸(연료통 2개)과 양옆 승객칸(벤치 4개, 좌석 높이 0.45 m), 버너 y 2.9, 입구 링 y 4.6, 24폭 봉투 꼭대기 24.7 m·최대 반지름 8.5 m. 봉투 재질 `env_a`/`env_b`(본체 줄무늬), `env_c`(꼭대기·허리띠·체크), `env_d`(체크)를 장면에서 기구마다 다시 칠한다 | 1291 KB |
| `chimney-cap.glb` | 요정의 굴뚝: 응회암 원뿔 약 8 m, 빗물 골, 현무암 갓돌 | 627 KB |
| `chimney-spire.glb` | 뾰족한 첨탑 바위 약 11.8 m, 거친 평면 침식면 | 531 KB |
| `chimney-twin.glb` | 밑동이 붙은 세 봉우리, 높은 두 개에 갓돌 | 754 KB |
| `chimney-house.glb` | 굴 주거: 아치 문(나무 문짝), 창 3개, 비둘기집 구멍, 디딤돌 | 1271 KB |

바위 4종은 발밑이 지면 아래 1 m까지 묻히도록 y −1에서 잘려 있다. 지층 띠는 GLB에 없고 장면 셰이더가 월드 높이로 칠한다(계곡 벽과 이어지도록).

## 원본·재현

meta 저장소 `npm run balloon`(= `node scripts/balloon.mjs <이름>` → 3d-maker `maker prop`). 레시피는 meta `assets/balloon-*.prop.json`. 압축하지 않았다. 모두 `issues: []`; 경고는 바위 4종의 `not on the ground`(의도적으로 묻힌 밑동)뿐.
