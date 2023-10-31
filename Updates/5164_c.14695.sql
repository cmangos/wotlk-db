-- Lord Blackwood 14695 - equip
-- source: TDB
UPDATE creature_template SET EquipmentTemplateId = 2542 WHERE Entry = 14695;
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry IN (2542);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2542, 18985, 12893, 5258);
