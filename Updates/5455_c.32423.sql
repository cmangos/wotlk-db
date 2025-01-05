-- Creature
-- missing added
DELETE FROM creature_addon WHERE guid = 536765;
DELETE FROM creature_movement WHERE id = 536765;
DELETE FROM game_event_creature WHERE guid = 536765;
DELETE FROM game_event_creature_data WHERE guid = 536765;
DELETE FROM creature_battleground WHERE guid = 536765;
DELETE FROM creature_linking WHERE guid = 536765;
DELETE FROM creature WHERE guid = 536765;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Matthias Lehner 32423
(536765,32423,571,1,3,7854.049,957.0139,450.8985,0.6283,300,300,0,0);
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, NpcFlags = 2 WHERE Entry = 32423;
DELETE FROM creature_template_addon WHERE entry IN (32423);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32423,0,0,0,0,0,0,'10848 49414');
-- Updated
DELETE FROM spell_area WHERE spell = 49416;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(49416,4206,0,0,12431,0,0,0,2,1), -- Conquest Hold
(49416,4248,0,0,12431,0,0,0,2,1), -- The Conquest Pit
(49416,4509,0,0,0,20805,0,0,2,1), -- The Bombardment
(49416,4533,0,0,0,20822,0,0,2,1), -- Sindragosa's Fall
(49416,4537,0,0,0,20805,0,0,2,1), -- The Valley of Lost Hope
(49416,4622,0,0,0,20805,0,0,2,1); -- First Legion Forward Camp
DELETE FROM conditions WHERE condition_entry BETWEEN 20816 AND 20822;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20816,8,13396,0,0,0,''),
(20817,8,13348,0,0,0,''),
(20818,-2,20817,20816,0,0,''),
(20819,8,13399,0,0,1,''),
(20820,8,13360,0,0,1,''),
(20821,-1,20820,20819,0,0,''), -- must be -1
(20822,-1,20821,20818,0,0,'');
