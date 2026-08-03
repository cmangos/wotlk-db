-- q.13011 'Jormuttar is Soo Fat...'

-- o.192462 Icy Crater Spell Focus
UPDATE gameobject SET PhaseMask = 4 WHERE id = 192462;
-- c.30340 Jormuttar
-- summoned
DELETE FROM creature_addon WHERE guid=527872;
DELETE FROM creature_movement WHERE Id=527872;
DELETE FROM game_event_creature WHERE guid=527872;
DELETE FROM game_event_creature_data WHERE guid=527872;
DELETE FROM creature_battleground WHERE guid=527872;
DELETE FROM creature_linking WHERE guid=527872
 OR master_guid=527872;
DELETE FROM creature WHERE guid=527872;
UPDATE creature_template SET Faction = 1711, UnitFlags = 2048, UnitFlags2 = 2048 WHERE entry = 30340;
-- duplicate
-- c.30292 Dead Icemaw Bear
DELETE FROM creature_addon WHERE guid=527747;
DELETE FROM creature_movement WHERE Id=527747;
DELETE FROM game_event_creature WHERE guid=527747;
DELETE FROM game_event_creature_data WHERE guid=527747;
DELETE FROM creature_battleground WHERE guid=527747;
DELETE FROM creature_linking WHERE guid=527747 OR
master_guid=527747;
DELETE FROM creature WHERE guid=527747;
-- scripts
DELETE FROM dbscripts_on_relay WHERE id = 21258;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21258,1,31,30340,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Lure Jormuttar Bunny 30366 EAI: search for 30340'),
(21258,100,10,30340,300000,0,0,0,0,0,0,0,0,7312.9766,-2048.7727,761.4259,5.528935432434082031,'Part of Lure Jormuttar Bunny 30366 EAI: summon 30340');
-- theres % chance to fail on creating Bear Flank
DELETE FROM `dbscript_random_templates` WHERE id = 20391;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20391, 1, 21266, 30, 'Part of q.13011 - Script 1'),
(20391, 1, 21267, 70, 'Part of q.13011 - Script 2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21266 AND 21267;
INSERT INTO dbscripts_on_relay (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(21266,0,15, 56565, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,'Part of q.13011 - Script 1: cast Create Bear Flank'),
(21267,0,0, 0, 0, 0, 0, 0, 2, 30986, 0, 0, 0, 0, 0, 0, 0,'Part of q.13011 - Script 2: say');
UPDATE `broadcast_text` SET `ChatTypeID`='5' WHERE `Id`='30986';
DELETE FROM dbscripts_on_spell WHERE id = 56565;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(56565,1,15,56566,0,0,0,0,6,0,0,0,0,0,0,0,0,'cast 56566');
