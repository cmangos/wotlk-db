-- q.11879 'Kaw the Mammoth Destroyer'

-- Duplicate
-- Wooly Mammoth Bull
DELETE FROM creature_addon WHERE guid=109124;
DELETE FROM creature_movement WHERE id=109124;
DELETE FROM game_event_creature WHERE guid=109124;
DELETE FROM game_event_creature_data WHERE guid=109124;
DELETE FROM creature_battleground WHERE guid=109124;
DELETE FROM creature_linking WHERE guid=109124 OR master_guid=109124;
DELETE FROM creature WHERE guid=109124;

-- s.46234 - Beast Empathy
DELETE FROM spell_area WHERE spell = 46234;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(46234,3537,11879,1,0,0,0,0,2,1),
(46234,4127,11879,1,0,0,0,0,2,1);

-- Kaw the Mammoth Destroyer
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry = 25802;
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE guid = 114932;
DELETE FROM dbscripts_on_relay WHERE id IN (20023,20024);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- looking for event
(20023,0,31,25743,50,0,0,0,0,0,0,0,0,0,0,0,0,''), -- Wooly Mammoth Bull 25743
(20023,1,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT'),
-- event script
(20024,0,0,0,0,0,0,0,0,2000001544,0,0,0,0,0,0,0,''),
(20024,3,1,53,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20024,5,3,0,700,0,0,0,0,0,0,0,0,3975.33,5475.08,37.1561,5.67616,''),
(20024,8,15,43671,0,0,25881,100,1,0,0,0,0,0,0,0,0,'board Moria'),
(20024,10,5,59,256,0,0,0,0,0,0,0,0,0,0,0,0,'Remove UnitFlags'),
(20024,10,5,59,256,0,25881,100,7,0,0,0,0,0,0,0,0,'buddy - Remove UnitFlags'),
(20024,11,31,25743,80,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20024,12,26,0,0,0,25743,80,1,0,0,0,0,0,0,0,0,'');
-- texts
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001544 AND 2000001545;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001544,'You challenge Kaw, destroyer of mammoths!? Then face me and feel my thunder!',0,1,0,22,NULL),
(2000001545,'Kaw\'s halberd breaks in two and falls to the ground!',0,3,0,0,NULL);
-- should cast 46310 on death
DELETE FROM dbscripts_on_creature_death WHERE id = 25802;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25802,0,0,0,0,0,0,0,0,2000001545,0,0,0,0,0,0,0,''),
(25802,0,15,46310,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- link Kaw the Mammoth Destroyer to Moria
DELETE FROM creature_linking WHERE master_guid = 114932;
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(98229,114932,128+1024);

-- Moria
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE guid = 98229;
DELETE FROM dbscripts_on_relay WHERE id = 20025;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20025,0,31,25802,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20025,1,18,0,0,0,25802,30,7,0,0,0,0,0,0,0,0,'despawn Kaw');

