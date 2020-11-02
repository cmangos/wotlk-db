-- q.12325 'Into Hostile Territory'

-- duplicates
DELETE FROM creature WHERE guid IN (519321,519323,519324,519322);
DELETE FROM creature_addon WHERE guid IN (519321,519323,519324,519322);
DELETE FROM creature_movement WHERE id IN (519321,519323,519324,519322);
DELETE FROM game_event_creature WHERE guid IN (519321,519323,519324,519322);
DELETE FROM game_event_creature_data WHERE guid IN (519321,519323,519324,519322);
DELETE FROM creature_battleground WHERE guid IN (519321,519323,519324,519322);
DELETE FROM creature_linking WHERE guid IN (519321,519323,519324,519322)
 OR master_guid IN (519321,519323,519324,519322);

-- Gryphon Commander Urik 27317 - gossip
DELETE FROM gossip_menu WHERE entry = 9570;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9570, 12904, 0, 0), -- default
(9570, 12905, 0, 20160); -- q.12325 'Into Hostile Territory' - taken
DELETE FROM conditions WHERE condition_entry = 20160;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20160,9,12325,0,0,0,0);

-- Wintergarde Gryphon 27661
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27661);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 27661;
UPDATE creature_template SET InhabitType = 1 WHERE  `entry` = 27661;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 27661;
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27661);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(27661,49288,12325,1,12325,1,0);
DELETE FROM dbscripts_on_relay WHERE id IN (20393);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20393,100,0,0,0,0,27662,5,7,2000020608,2000020609,2000020610,2000020608,0,0,0,0,'Part of Wintergarde Gryphon EAI:'),
(20393,1000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: RUN ON'),
(20393,1100,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: FLY ON'),
(20393,1500,15,49303,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: Speed Aura'),
(20393,2000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI:');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020608 AND 2000020611;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020608,'Thorson\'s Post - coming right up!',0,0,7,0,NULL),
(2000020609,'Hang on to your hat, pal! We\'re in for a bumpy ride.',0,0,7,0,NULL),
(2000020610,'Keep your head low and be on the lookout for frostwyrms! YAAAW!',0,0,7,0,NULL),
(2000020611,'This is your stop, pal. Safe landing!',0,0,7,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 27661;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27661,1,3698.41,-715.13,223.348,100,0,0),
(27661,2,3717.31,-767.251,228.076,100,0,0),
(27661,3,3750.56,-915.602,202.172,100,0,0),
(27661,4,3765.3,-985.373,182.94,100,0,0),
(27661,5,3755.81,-1088.4,165.635,100,0,0),
(27661,6,3740.1,-1220.35,166.523,100,0,0),
(27661,7,3724.29,-1304,164.808,100,0,0),
(27661,8,3742.42,-1350.28,163.442,100,0,0),
(27661,9,3827.02,-1401.6,180.434,100,5000,2766101);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2766101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2766101,100,0,0,0,0,27662,20,7,2000020611,0,0,0,0,0,0,0,'buddy Say'),
(2766101,1000,15,69748,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'General Trigger 1 From Passenger 2 - Player'),
(2766101,2000,14,49288,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura'),
(2766101,4000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscripts_on_spell WHERE id = 69748;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(69748,1000,15,44795,0,0,0,0,6,0,0,0,0,0,0,0,0,'Parachute');
