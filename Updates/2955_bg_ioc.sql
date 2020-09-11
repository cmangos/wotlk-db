
-- *** Gameobject fixes ***
-- Alliance keep banner
UPDATE gameobject_template SET faction = 83, flags = 48 WHERE entry = 195396;
-- neutral banners
UPDATE gameobject_template SET faction = 35, flags = 32 WHERE entry IN (195133,195157,195158,195338,195343);
-- full alliance bannners:
UPDATE gameobject_template SET faction = 83, flags = 32 WHERE entry IN (195153,195132,195334,195339,195149,195391);
-- grey alliance banners:
UPDATE gameobject_template SET faction = 83, flags = 32 WHERE entry IN (195154,195144,195335,195340,195150,195397,195392);
-- full horde banners:
UPDATE gameobject_template SET faction = 84, flags = 32 WHERE entry IN (195130,195130,195336,195341,195151,195398);
-- grey horde banners:
UPDATE gameobject_template SET faction = 84, flags = 32 WHERE entry IN (195145,195156,195337,195342,195152,195399,195394);

-- gunship teleporters
UPDATE gameobject_template SET faction = 35, flags = 32 WHERE entry  IN (196413, 195371);
-- keep teleporters
UPDATE gameobject_template SET flags = 48, faction = 1997 WHERE entry  IN (195315,195316);
UPDATE gameobject_template SET faction = 1995 WHERE entry IN (195314, 195313);

-- seaforium bombs
UPDATE gameobject_template SET faction = 1735, flags = 32 WHERE entry = 195332;
UPDATE gameobject_template SET faction = 1732 WHERE entry = 195333;
UPDATE gameobject_template SET flags = 32 WHERE entry = 195237;
UPDATE gameobject_template SET flags = 32 WHERE entry = 195235;
UPDATE gameobject_template SET flags = 32 WHERE entry = 195331;
UPDATE gameobject_template SET flags = 32 WHERE entry = 195235;

-- *** Creatures ***
UPDATE creature_template SET UnitFlags = UnitFlags|256 WHERE entry = 34776;
UPDATE creature_template SET faction = 1732, UnitFlags = UnitFlags|768 WHERE entry = 35345;
UPDATE creature_template SET faction = 1735, UnitFlags = UnitFlags|768 WHERE entry = 35346;

-- creature details
DELETE FROM creature_template_addon WHERE entry=34924;
INSERT INTO creature_template_addon (entry, emote) VALUES
(34924,375);
-- equipment templates
UPDATE creature_template SET EquipmentTemplateId = 250 WHERE entry = 34924;
UPDATE creature_template SET EquipmentTemplateId = 2525 WHERE entry = 34919;
DELETE FROM creature_equip_template WHERE entry = 2525;
INSERT INTO creature_equip_template VALUE
(2525,2147,143,0);

