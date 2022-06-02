-- Champion Swiftblade 17811
-- missing equipment added
UPDATE creature_template SET EquipmentTemplateId = 2533 WHERE entry = 17811;
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry IN (2533);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2533, 2180, 19366, 0);
