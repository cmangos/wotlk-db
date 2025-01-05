-- Icecrown: Icecrown Citadel - Phase 4

-- Phase shift
DELETE FROM spell_area WHERE spell = 58866;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(58866,4522,0,0,0,20859,0,0,2,1);

-- Death Knight Adept 31318
-- they're summoned
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28025);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 28025);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 28025);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 28025);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 28025);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 28025);
DELETE FROM creature WHERE id = 28025;
-- Orbaz Bloodbane 31283
UPDATE creature SET PhaseMask = 4, position_x = 5826.424, position_y = 2029.9341, position_z = 503.99295, orientation = 5.95157, spawndist = 0, MovementType = 0 WHERE id = 31283;
-- Ebon Blade Reaper 31316
UPDATE creature SET position_x = 5880.522949, position_y = 2045.894531, position_z = 506.891113, orientation = 3.47 WHERE guid = 530281;
-- individual addon
DELETE FROM creature_addon WHERE guid IN (530286,530288);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(530286,0,0,1,0,0,0,29266),
(530288,0,0,1,0,0,0,29266);
