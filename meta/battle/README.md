# meta/battle — 훈련소 대전 배포본

`/battle` 장면(플레이어끼리 싸우는 링)용 정적 GLB. 미터·Y-up.

| 파일 | 용도 |
|---|---|
| `kaykit-combat.glb` | KayKit Rig_Medium 전투 클립만 담은 애니메이션 라이브러리(메시 없음): `Hit_A`, `Death_A`, `Spawn_Ground`, `Lie_StandUp`, `Melee_1H_Attack_Slice_Diagonal`, `Melee_2H_Attack_Stab`, `Ranged_Bow_Draw`, `Ranged_Bow_Release`. `../../molroo/animations/kaykit-medium.glb`와 같은 관절 이름이라 molroo 캐릭터에 그대로 붙는다 |
| `sword.glb` | 칼. KayKit Dungeon Pack 1.0 `sword_common` 원본 그대로. 손잡이가 원점, 날이 +y |
| `spear.glb` | 창. Kenney Mini Arena `weapon-spear`, 텍스처(`colormap.png`)를 GLB 안에 넣음. 아래 끝이 원점, +y로 0.7 |
| `bow.glb` | 활. Kenney Mini Forest `weapon-bow`, 텍스처 내장. 아래 끝이 원점, +y로 0.48 |
| `arrow.glb` | 화살. Kenney Mini Forest `weapon-arrow`, 텍스처 내장. 가운데가 원점, 촉이 +z |

장면이 무기 크기를 손 뼈 배율에 맞춰 다시 잡는다(meta `src/app/battle/Battle.tsx`의 `GEAR`).

## 원본·재현

- `kaykit-combat.glb`: meta 저장소 `node scripts/combat-clips.mjs <KayKit_Character_Animations_1.1/Animations/gltf/Rig_Medium>` → `../../kaykit/...`의 팩에서 클립만 잘라낸다.
- Kenney 무기: `../../kenney/GLB/kenney_mini-arena`, `kenney_mini-forest_1.0`의 GLB에 `../../kenney/Textures/...`의 `colormap.png`를 bufferView로 넣었다.

라이선스: KayKit(Kay Lousberg), Kenney 모두 CC0.
