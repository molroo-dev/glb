# Meta Battle 배포본

`/battle` 장면용 정적 장비. 미터 단위, glTF Y-up. 일반 4종은 기존 파일명을 사용한다.

| 장비 | 일반 | 레어 | 에픽 | 모델 기준 |
|---|---|---|---|---|
| 칼 | [GLB](sword.glb) | [GLB](sword-rare.glb) | [GLB](sword-epic.glb) | 손잡이 원점, 날 +Y |
| 창 | [GLB](spear.glb) | [GLB](spear-rare.glb) | [GLB](spear-epic.glb) | 아래 끝 원점, +Y 0.7 m |
| 활 | [GLB](bow.glb) | [GLB](bow-rare.glb) | [GLB](bow-epic.glb) | 아래 끝 원점, +Y 약 0.479 m |
| 화살 | [GLB](arrow.glb) | [GLB](arrow-rare.glb) | [GLB](arrow-epic.glb) | 중앙 원점, 촉 +Z |

장면에서 `Battle.tsx`의 `GEAR`가 모델의 장착 배율과 파지점을 정한다. 활의 정적 시위는 `BowString` 노드다. 장착 상태에서는 이 노드를 숨긴 다음 루트 노드의 `extras.stringLower`와 `extras.stringUpper`를 움직이는 시위의 양 끝점으로 사용한다.

제작 원본과 검사 기록은 `H:/handmade-assets/assets/models/props/meta-battle-gear/v001`에 있다. 교체 전 파일은 해당 작업 폴더의 `reference/`와 배포 저장소의 Git 이력에서 확인할 수 있다. 이전 규격의 참고 출처는 KayKit Dungeon Pack과 Kenney Mini Arena·Mini Forest(CC0)다.

[kaykit-combat.glb](kaykit-combat.glb)는 KayKit Rig_Medium 전투 애니메이션 라이브러리(CC0)다. meta 저장소의 `node scripts/combat-clips.mjs <Rig_Medium 경로>`로 생성한다.
