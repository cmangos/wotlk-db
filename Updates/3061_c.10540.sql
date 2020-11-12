-- Vol'jin 10540
-- updated to 3.3.5
UPDATE creature SET modelid = 31736, equipment_id = 0, curhealth = 5578000, curmana = 68128, position_z = 41.139 WHERE id = 10540;
UPDATE creature_template SET Expansion = 2, EquipmentTemplateid = 25515 WHERE Entry = 10540;
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 25515;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(25515, 53835, 0, 14118);
