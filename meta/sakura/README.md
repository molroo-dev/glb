# meta/sakura — 벚꽃 운하 배포본

`/sakura` 장면(벽돌 운하 양옆의 벚나무, 놀잇배, 초롱, 아치교, 도리이)용 정적 GLB. 원점은 바닥(나무는 줄기 밑동, 배는 흘수선, 초롱은 고리)이고 미터·Y-up이다.

| 파일 | 용도 | 삼각형 | 크기 |
|---|---|---:|---:|
| `cherry-canal-arching.glb` | 물 위(+x)로 기우는 소메이요시노, 운하 양옆 | 283,966 | 2.7 MB |
| `cherry-spreading.glb` | 넓게 퍼지는 벚나무 | 341,850 | 3.3 MB |
| `cherry-upright.glb` | 곧게 선 어린 벚나무 | 283,768 | 2.7 MB |
| `cherry-petal.glb` | 떨어진 꽃잎 1장, 흰색 양면 재질(장면이 인스턴스 색을 입힘), 원점은 꽃잎 밑동, glTF `-Z`로 뻗음 | 6 | 2 KB |
| `boat.glb` | 지붕 없는 놀잇배 9.2 m, 뱃머리 +z, 방석 6개 | 3,628 | 306 KB |
| `torii.glb` | 묘진 도리이, 앞면 +z, 가로 편액 | 1,112 | 116 KB |
| `lantern.glb` | 종이 초롱, `glowPaper` 재질은 장면이 색을 바꿈 | 1,000 | 104 KB |
| `bridge.glb` | 붉은 난간 홍예교, 경간 x 방향, 정점 1.2 m | 3,832 | 401 KB |

## 원본·재현

- 벚나무·꽃잎: `handmade-assets/assets/models/vegetation/cherry-blossom/v001` (`build.py`, `recipe.json`, Blender 5.3, 수동 편집 없음). gltfpack 1.3.0 `-cc -vp 16 -vn 10 -kn -km -ke -af 0 -ac`로 Meshopt 압축해 `EXT_meshopt_compression`이 필요하다. 삼각형 수는 원본과 같다.
- 꽃 다듬기: v001의 꽃잎은 끝이 파인 삼각형 4장짜리 부채꼴이라 가까이서 뾰족한 조각처럼 보이고, 송이 가운데의 팔면체는 분홍 마름모로 보였다. meta 저장소 `node scripts/round-blossoms.mjs <이 디렉터리>`(`src/app/blossoms.ts`)가 꽃마다 꽃술(`Blossom-eye`)에서 다시 지어 둥글고 오목한 꽃잎 5장(각 6삼각형, 부드러운 법선)을 꽃 한 송이에 한 색으로 깔고 팔면체는 뺐다. 떨어지는 꽃잎도 같은 윤곽이다. 압축은 위와 같은 gltfpack 플래그.
- 배·도리이·초롱·다리: meta 저장소 `scripts/sakura.mjs <boat|torii|lantern|bridge>` → 3d-maker `maker prop`. 레시피는 meta `assets/sakura-*.prop.json`. 압축하지 않았다.
- 3d-maker `inspect`/`prop` 결과 모두 `issues: []`. 경고는 지면 아래로 내려가는 부분(배의 노 날, 매다는 초롱, 다리 교대)뿐이며 의도된 것이다.
