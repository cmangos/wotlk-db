-- Naxxramas WotLK

-- Maexxna 15952
-- allow her to use spells
DELETE FROM creature_template_spells WHERE entry = 15952;

-- Patchwerk 16028
-- req for his path .. + visibility range increased (3 wasnt enough... Players could wait for him forever)
UPDATE creature_template SET MovementType = 4, visibilityDistanceType = 4 WHERE entry IN (16028,29324);

-- Noth the Plaguebringer 15954
-- req for his path
UPDATE creature_template SET MovementType = 4 WHERE entry IN (15954,29615);

-- Orb of Naxxramas - WotlK ONLY object
-- faction corrected
UPDATE gameobject_template SET faction=35 WHERE entry IN (202277,202278);
DELETE FROM spell_target_position WHERE Id IN(72613,72617);
INSERT INTO spell_target_position VALUES
(72613,533,3005.73,-3414.76,297.026,1.55881),
(72617,533,3498.22,-5349.36,144.969,1.32679);

-- Stoneskin Gargoyle 16168
UPDATE creature_template SET UnitFlags = 64 WHERE entry IN (16028,29576);

-- Obedience Crystal 29912
UPDATE creature_template SET NpcFlags = 16777216 WHERE entry IN (29912);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN(29912);
INSERT INTO npc_spellclick_spells(npc_entry, spell_id, cast_flags, quest_start, quest_start_active, quest_end, condition_id) VALUES
(29912, 55479, 0, 0, 0, 0, 0);

-- Sapphiron 15989 / 29991
UPDATE creature_template SET HealthMultiplier = 390, MinLevelHealth = 5438550, MaxLevelHealth = 5438550 WHERE entry IN (15989);
UPDATE creature_template SET HealthMultiplier = 1215.5, MinLevelHealth = 16950148, MaxLevelHealth = 16950148 WHERE entry IN (29991);

-- texts
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `id` IN (10755,12195);
