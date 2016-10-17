-- Demonic Crystal Prisons(q.10528) -H -A
-- Old Script redone
DELETE FROM dbscripts_on_quest_end WHERE id = 10528;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10528,0,15,5,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(10528,4,0,0,0,21318,25,0,2000005645,0,0,0,0,0,0,0,'');
-- emote added into text
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005645;
-- this part is not req. anymore
DELETE FROM dbscripts_on_creature_death WHERE id = 21292;

-- Ar'tor, Son of Oronok
UPDATE creature_template SET Expansion = 1, MinLevelHealth = 6986, MaxLevelHealth = 6986, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, RangedAttackPower = 44, MinMeleeDmg = 265, MaxMeleeDmg = 397, Armor = 6719, RegenerateStats = 0 WHERE entry = 21292;

-- Spirit of Ar'tor
-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 119584;
DELETE FROM creature_addon WHERE guid = 119584;
DELETE FROM creature_movement WHERE id = 119584;
DELETE FROM game_event_creature WHERE guid = 119584;
DELETE FROM game_event_creature_data WHERE guid = 119584;
DELETE FROM creature_battleground WHERE guid = 119584;
DELETE FROM creature_linking WHERE guid = 119584 OR master_guid = 119584;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(119584,21318,530,1,1,0,0,-3800.38,2601.1,90.143,5.53429,300,0,0,6986,0,0,0);
-- Stats corrected
UPDATE creature_template SET Expansion = 1, MinLevelHealth = 6986, MaxLevelHealth = 6986, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, RangedAttackPower = 44, MinMeleeDmg = 265, MaxMeleeDmg = 397, Armor = 6719 WHERE entry = 21318;
DELETE FROM creature_template_addon WHERE entry = 21318;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(21318,0,0,0,0,0,0,37497);
-- lets see our Spirit
DELETE FROM spell_area WHERE spell = 39841;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(39841,3752,10528,0,10588,0,0,0,2,1);
