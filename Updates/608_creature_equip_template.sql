-- Clean up in creature_equip_template
-- Duplicates removed

# 557
DELETE FROM creature_equip_template WHERE entry = 1807;
# 1813
DELETE FROM creature_equip_template WHERE entry = 1814;
DELETE FROM creature_equip_template WHERE entry = 1834;
UPDATE creature_template SET EquipmentTemplateId = 1813 WHERE Entry in (16148, 29990);
# 1832
DELETE FROM creature_equip_template WHERE entry = 1841;
# 1845
DELETE FROM creature_equip_template WHERE entry = 1853;
UPDATE creature_template SET EquipmentTemplateId = 1845 WHERE Entry = 33125;
# 1859
DELETE FROM creature_equip_template WHERE entry = 1864;
UPDATE creature_template SET EquipmentTemplateId = 1859 WHERE Entry = 34119;
