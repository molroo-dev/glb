# meta/great-wall — 만리장성 모듈 키트 배포본

걸어 다닐 수 있는 만리장성 모듈 키트다. 성벽 직선·오르막·내리막(10/20/30°), 15° 꺾임, 망루 2종으로 구성된다. 단위는 m, glTF Y-up이다. 성벽은 +X로 진행하며 바깥(톱니) 쪽은 +Z, 보도 높이는 6.3 m다.

| 파일 | 내용 | 크기 |
|---|---|---:|
| `great-wall-kit.glb` | 모듈 11개(노드 이름 `GW_*`, 각자 원점에 겹쳐 있음)와 소켓 자식 노드. WebP 텍스처 8장 1벌 | 1.38 MB |
| `great-wall-collision.glb` | `<모듈>_Collision` 11개. 성벽은 계단을 경사로로 단순화한 충돌 메시, 망루는 렌더 메시 사본. 재질 없음, 렌더하지 않음 | 108 KB |
| `great-wall-demo-terrain.glb` | 데모 능선 지형(아래 데모 배치 전용) | 111 KB |

## 모듈

`GW_Wall_Straight`, `GW_Wall_Slope10/20/30`, `GW_Wall_SlopeDown10/20/30`, `GW_Wall_Turn15L/R`, `GW_Tower_Straight`(소켓 W·E), `GW_Tower_Corner`(소켓 W·N). 성벽 모듈의 소켓 이름은 `<모듈>_Socket_Start`와 `<모듈>_Socket_End`다.

## 조립

```js
// lib = kit.scene.getObjectByName(name); S = 그 모듈의 소켓 자식 노드들의 로컬 행렬
const M = cur.clone().multiply(new THREE.Matrix4().makeRotationY(Math.PI)).multiply(S[entry].clone().invert());
const piece = lib.clone(); piece.applyMatrix4(M); scene.add(piece);
cur = M.clone().multiply(S[exit]);
```

성벽 모듈은 반드시 `Socket_Start`로 들어간다. 뒤집어 배치하면 톱니 쪽이 안으로 향한다. 내리막에는 `SlopeDown` 모듈을 쓴다. 충돌은 같은 이름의 `_Collision` 노드에 같은 `M`을 적용해 합친 뒤 BVH로 처리한다.

## 로더

`EXT_meshopt_compression`, `KHR_mesh_quantization`, `EXT_texture_webp`, `KHR_texture_transform` 지원이 필요하다. three.js `GLTFLoader`에 `MeshoptDecoder`를 연결하면 된다(drei `useGLTF`는 기본 연결). 위치는 양자화되어 있으므로, 충돌용으로 정점을 변환할 때는 `getX/Y/Z`로 float 배열을 만든 뒤 변환한다. 텍스처는 KTX2가 아닌 WebP라 GPU에서 압축되지 않는다.

## 원본·검증

원본과 제작 기록은 `/Users/molroo/workspace/handmade-assets/assets/models/buildings/great-wall/v003/README.md`(형상은 v002)에 있다. 동작하는 three.js 데모(소켓 조립, three-mesh-bvh 캡슐 1인칭 보행)는 같은 폴더의 `web/`에 있다. 배포 검증 기록은 `handmade-assets/validation/great-wall-distribution/v001/README.md`에 있다.
