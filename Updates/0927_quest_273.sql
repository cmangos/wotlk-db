-- q.273 'Resupplying the Excavation'

-- Added missing data for quest 273, realted areatrigger and creatures
-- Removing areatrigger_involvedrelation reference - script is handling this part now.


-- Saean
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 75887;
DELETE FROM creature_addon WHERE guid = 75887;
DELETE FROM creature_movement WHERE id = 75887;
DELETE FROM game_event_creature WHERE guid = 75887;
DELETE FROM game_event_creature_data WHERE guid = 75887;
DELETE FROM creature_battleground WHERE guid = 75887;
DELETE FROM creature_linking WHERE guid = 75887 
OR master_guid = 75887;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75887,1380,0,1,1,0,0,-5760.73,-3437.71,305.54,2.41,300,300,0,0,247,0,0,0);
-- Stats & Equip updated
UPDATE creature_template SET MinLevel = 12, MaxLevel = 12, MinLevelHealth = 247, MaxLevelHealth = 247, Armor = 562, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 42, MinMeleeDmg = 17, MaxMeleeDmg = 22.3, equipmentTemplateid = 375 WHERE entry = 1380;

DELETE FROM scripted_areatrigger WHERE Entry = 171;
INSERT INTO scripted_areatrigger (entry, ScriptName) VALUES 
(171,'at_huldar_miran');

DELETE FROM areatrigger_involvedrelation WHERE id = 171;

UPDATE quest_template SET SpecialFlags = 2 WHERE entry = 273;
