# 동물원 텍스처 재검토

기존 고품질 배포본에서 텍스처 비중이 60% 이상인 낙타·침팬지·기린·하마·펭귄·코뿔소를 검토했다. 여섯 종 합계는 39.7 MB에서 36.66 MB로 줄었다. 이 폴더에는 크기가 줄어든 5종의 GLB만 있으며, 펭귄은 ../zoo-dist-hq/penguin.glb를 사용한다. [파일별 수치](sizes.csv)

컬러맵 9장을 WebP 품질 100으로 재인코딩했다. RGB는 손실 압축이며, 디코딩한 해상도와 알파는 기존 파일과 정확히 일치한다. RGB PSNR은 44.47–47.55 dB, 채널 최대 차이는 23/255였다. 기존 모델의 메시, 리그, 애니메이션, 기타 텍스처 바이트가 그대로인지 확인했다. 기준을 통과한 KTX2 후보는 없었다. [비교 이미지](color-map-comparison.png) · [측정 데이터](texture-checks.json)

이 결과는 GLB 파일만 제공한다. 3d-maker viewer에서 GLB를 직접 선택할 수 있다. 실제 렌더링은 확인하지 않았다. 코뿔소의 원본 KHR_materials_pbrSpecularGlossiness는 테스트한 Three.js 로더가 지원하지 않는다.

변경 사항은 일부 컬러맵의 재인코딩이다. 에셋과 함께 아래 출처와 [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) 링크를 제공한다.

## 표기 문구 (CC BY 4.0, 필수)

```
"Reticulated Giraffe - Rigged & Animated" by Animal Animator (animalanimator.com), CC BY 4.0, https://sketchfab.com/models/b8a7cf34d2614b8c93e76d5300f9aaaa
"African Elephant Bull - Rigged & Animated" by Animal Animator (animalanimator.com), CC BY 4.0, https://sketchfab.com/models/436483857ce84c77bd0f6c76fb3d4d2d
"Siberian Tiger - Rigged, Animated, Fur (Amur)" by Animal Animator (animalanimator.com), CC BY 4.0, https://sketchfab.com/models/860f119b7a9f485096136789eedee908
"Giant Panda: Rigged, Animated, Realistic Fur" by Animal Animator (animalanimator.com), CC BY 4.0, https://sketchfab.com/models/6a13eaa35143434392693c7f56fd9c7f
"Elder Spotted Hyena (Crocuta) - Sculpted, Furry" by Animal Animator (animalanimator.com), CC BY 4.0, https://sketchfab.com/models/dc49d898720f4b1297d7ee22452c9452
"Male Chimpanzee Hairless: Rigged, Animated" by Animal Animator (animalanimator.com), CC BY 4.0, https://sketchfab.com/models/c53e8ca04bb54d5e8649d95b437e2ca3
"Akhal-Teke Stallion - Rigged & Animated 3D Model" by Animal Animator (animalanimator.com), CC BY 4.0, https://sketchfab.com/models/3d6e93ffd4154c308ee2e35cfde3bc42
"Animated Rhinoceros Walking Animal Loop" by LasquetiSpice, CC BY 4.0, https://sketchfab.com/models/32abc12d4fe44bd0b116b294194d9615
"Zebra - Rigged" by NoaSeller, CC BY 4.0, https://sketchfab.com/models/5d6ff2749afc438b9989f91ecb242574
"Hippo (downloadable, revised)" by andrey., CC BY 4.0, https://sketchfab.com/models/f3b84051e0824892ad5d551aa7040cdb
"African ostrich (Revised version)" by andrey., CC BY 4.0, https://sketchfab.com/models/0999e676453e4562a7777cd006125738
"African penguin (Spheniscus demersus) Low poly" by majorgalah, CC BY 4.0, https://sketchfab.com/models/9e59070815fe451d93398e2ebdb9bb92
"Camel" by E.A.Cornell, CC BY 4.0, https://sketchfab.com/models/99af7daa5baf450ea7b809937937e6d5
```
