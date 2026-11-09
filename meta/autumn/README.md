# meta/autumn — 가을 나무·잔디 배포본

가을 장면용 정적 식생 GLB 11개다. 최신 원본에서 gltfpack 1.3.0 Meshopt 압축만 적용했고 삼각형 수는 원본과 같다.

| 파일 | 용도 | 삼각형 | 크기 |
|---|---|---:|---:|
| `golden-ginkgo-street-broad.glb` | 성숙한 은행나무 가로수, 넓은 수관 | 1,373,508 | 7.6 MB |
| `golden-ginkgo-upright-young.glb` | 젊은 은행나무, 좁은 수직형 | 1,175,680 | 6.5 MB |
| `golden-ginkgo-park-dome.glb` | 낮은 은행나무 공원 돔 | 1,032,616 | 5.7 MB |
| `autumn-maple-spreading.glb` | 넓게 퍼지는 단풍나무 | 226,732 | 3.7 MB |
| `autumn-maple-upright-vase.glb` | 긴 줄기의 수직형 단풍나무 | 271,138 | 4.5 MB |
| `autumn-maple-round-compact.glb` | 낮고 둥근 정원형 단풍나무 | 211,930 | 3.5 MB |
| `broadleaf-lod0.glb` | 넓은잎 나무 LOD0 | 63,916 | 474 KB |
| `broadleaf-lod1.glb` | 넓은잎 나무 LOD1 | 31,958 | 289 KB |
| `broadleaf-lod2.glb` | 넓은잎 나무 LOD2 | 12,768 | 179 KB |
| `narrowleaf.glb` | 좁은잎 나무 | 63,916 | 471 KB |
| `grass-tuft.glb` | 잔디 포기 | 960 | 13 KB |

## 로더

`EXT_meshopt_compression`과 `KHR_mesh_quantization` 지원이 필요하다. three.js·drei의 `useGLTF`는 MeshoptDecoder를 기본으로 연결한다. Blender 등 직접 읽지 못하는 도구는 `handmade-assets/assets/models/props/grand-christmas-tree/v005/decode.mjs`로 임시 해제한다.

ginkgo·maple는 LOD 없이 원본 삼각형 수를 유지한다. broadleaf만 LOD0/1/2를 제공한다.

## 원본·검증

- 원본: `/Users/molroo/workspace/handmade-assets/assets/models/vegetation/{golden-ginkgo/v004,autumn-maple/v003,leaf-review,grass-tuft/v003}`
- 최적화·검증 기록: `/Users/molroo/workspace/handmade-assets/validation/autumn-distribution/v001/README.md`
- 배포 파일은 `EXT_meshopt_compression`을 쓰므로 무손실이 아니다. 위치 양자화 오차는 최대 0.15 mm, 잎맥 리본은 면적 기준 최대 0.8%다.
- gltfpack이 primitive 이름을 `mesh_N`으로 바꿀 수 있다. 이름 있는 그룹 노드는 유지된다.
- 이 폴더는 로컬 배포 사본이며, 원격 저장소 커밋·push는 하지 않았다.
