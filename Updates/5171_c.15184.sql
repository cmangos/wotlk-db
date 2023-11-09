/*
[0] ItemID: 14882
[0] ItemAppearanceModID: 0
[0] ItemVisual: 0
[1] ItemID: 20417
[1] ItemAppearanceModID: 0
[1] ItemVisual: 0
[2] ItemID: 5261
*/
-- Cenarion Hold Infantry 15184 - equip
-- Wotlk
UPDATE creature_template SET EquipmentTemplateId = 963 WHERE Entry = 15184;
UPDATE creature_template_addon SET sheath_state = 0 WHERE Entry = 15184;
