-- Twilight Firesworn 25863
UPDATE creature_template SET Faction = 128, EquipmentTemplateId = 127 WHERE entry = 25863;
-- Twilight Flameguard 25866
UPDATE creature_template SET Faction = 128, EquipmentTemplateId = 160 WHERE entry = 25866;
-- Twilight Speaker Viktor 25924
UPDATE creature_template SET Faction = 128, EquipmentTemplateId = 2534 WHERE entry = 25924;
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 2534;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2534, 32360, 0, 0);
