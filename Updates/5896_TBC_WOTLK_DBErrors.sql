-- DB errors

-- TBC
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2144101, command 2 call for wrong field 209 (max count: 148) in Creature (Entry: 21441 Counter: 9011629) DBGuid: 9011629.
UPDATE dbscripts_on_creature_movement SET command = 54, datalong = 2, datalong2 = 0 WHERE id = 2144101 AND priority = 2;
-- DB-SCRIPTS: Process table `dbscripts_on_relay` id 18041, command 36 has buddy 19439 not found in range 5 of searcher Creature (Entry: 19779 Counter: 9011241) DBGuid: 5306489 (data-flags 1), skipping.
DELETE FROM dbscripts_on_relay WHERE id = 18041 AND delay = 900;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18041,900,31,19439,5,0,0,0,0,0,0,0,0,0,0,0,0,'Netherstorm - Sunfury Geologist - search for target');
-- DoCastSpellIfCan by Creature (Entry: 16317 Counter: 9011859) attempt to cast spell 29066 but spell failed due to unknown result 7 : SPELL_FAILED_ALREADY_HAVE_SUMMON.
UPDATE dbscripts_on_creature_movement SET delay = 3000 WHERE id = 1631701;
-- ERROR:MoveSplineInitArgs::Validate: expression 'path.size() > 1' failed for Creature (Entry: 25063 Counter: 5300855) DBGuid: 5300855
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE id BETWEEN 5300851 AND 5300856;
DELETE FROM `creature_spawn_data` WHERE guid BETWEEN 5300851 AND 5300856;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(5300851,1),(5300852,1),(5300853,1),(5300854,1),(5300855,1),(5300856,1);

-- WoTLK
DELETE from npc_vendor WHERE entry IN (2842,19045,23896);
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2830301, command 15 has buddy 16570 not found in range 20 of searcher Creature (Entry: 28303 Counter: 522166) DBGuid: 522166 (data-flags 7), skipping.
UPDATE dbscripts_on_creature_movement SET datalong3 = 5, search_radius = 30 WHERE id = 2830301 AND delay IN (100,101);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2830301 AND delay = 7000;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2830301,7000,35,5,20,0,0,0,0,0,0,0,0,0,0,0,0,'send Event 5');
-- ERROR:MoveSplineInitArgs::Validate: expression 'path.size() > 1' failed for Creature (Entry: 31265 Counter: 530065) DBGuid: 530065
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3126501,3126502,3126503);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3126501,1,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'RUN ON'),
(3126501,2,57,3,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'AnimTier = 3'),
(3126501,100,20,3,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'set - path 1'),
(3126502,100,57,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'AnimTier = 0'),
(3126503,101,20,2,2,0,0,0,0x004,0,0,0,0,0,0,0,0,'set - path 2');
