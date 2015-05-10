-- Watch Commander Zalaphil - equipment
DELETE FROM creature_equip_template WHERE entry = 2514;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2514,2147,2053,0);
UPDATE creature_template SET equipmentTemplateid = 2514 WHERE entry = 5809;

