-- Equipment for 'Master Kelerun Bloodmourn <Blood Knight>'
DELETE FROM creature_equip_template WHERE entry = 2513;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2513,23673,24038,0);
UPDATE creature_template SET equipmentTemplateid = 2513 WHERE entry = 17807;