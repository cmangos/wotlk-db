-- q.12928 'Norgannon's Shell' - H
-- q.12872 'Norgannon's Shell' - A
DELETE FROM dbscripts_on_event WHERE id IN (19410);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19410,1,31,29775,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 29775'),
(19410,100,10,29775,300000,0,0,0,0x08,0,0,0,0,7991.8125,-827.6735,968.2633,2.897246599197387695,'summon 29851'),
(19410,100,53,0,0,0,0,0,0,33020,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on 
(19410,49000,53,0,0,0,0,0,0,33020,0,0,0,0,0,0,0,'Set worldstate variable to 0'); -- off
DELETE FROM dbscripts_on_relay WHERE id IN (21273);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21273,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'), -- 21:23:15.040
(21273,100,0,0,0,0,0,0,0,30402,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - say'), -- 21:23:15.138 - Use of the Inventor
(21273,4000,1,69,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'), -- 21:23:19.894
(21273,4100,0,0,0,0,0,0,0,30403,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - say'), -- 21:23:19.991 - Verifying status of Norgannon's shell.
(21273,9900,1,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'),
(21273,10000,1,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'), -- 21:23:26.366
(21273,10100,0,0,0,0,0,0,0,30404,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - say'), -- 21:23:26.471 - Norgannon's shell accounted for
(21273,16000,1,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'), -- 21:23:32.840
(21273,16100,0,0,0,0,0,0,0,30405,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - say'), -- 21:23:32.943 - Standby to verify identity as Keeper Mimir.
(21273,21000,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - send event 5'), -- 21:23:37.696 
(21273,31000,1,25,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'), -- 21:23:47.397
(21273,31100,0,0,0,0,0,0,0,30406,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - say'), -- 21:23:47.489 - Identity verification failed. User is not
(21273,35000,1,27,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'), -- 21:23:52.244
(21273,35100,0,0,0,0,0,0,0,30407,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - say'), -- 21:23:52.322 - The Inventor's Disk has fallen into the hands of an unaut
(21273,41000,1,5,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - emote'), -- 21:23:58.741
(21273,41100,0,0,0,0,0,0,0,30408,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - say'), -- 21:23:58.835 - Impostor must be dealt with.
(21273,44000,48,768,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - ubitFlags Removed'), -- 21:23:58.741
(21273,45000,35,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Archivist Mechaton 29775 EAI - send event 6'); -- 21:24:03.578
-- o.191761 Prototype Console
UPDATE gameobject SET position_x = 7974.1694, position_y = -826.5645, position_z = 967.87555, orientation = 5.742135, rotation0 = 0, rotation1 = 0, rotation2 = -0.26723766, rotation3 = 0.9636307 WHERE guid = 510667;
-- c.29775 Archivist Mechaton
DELETE FROM creature WHERE guid=526356;
DELETE FROM creature_addon WHERE guid=526356;
DELETE FROM creature_movement WHERE Id=526356;
DELETE FROM game_event_creature WHERE guid=526356;
DELETE FROM game_event_creature_data WHERE guid=526356;
DELETE FROM creature_battleground WHERE guid=526356;
DELETE FROM creature_linking WHERE guid=526356 OR master_guid=526356;
UPDATE creature_template SET Faction = 14, MinLevel = 80, MaxLevel = 80, UnitClass = 2, SpeedWalk = (2.5 / 2.5), SpeedRun = (6.944439888000488281 / 7), UnitFlags = 768, EquipmentTemplateId = 859 WHERE entry IN (29775);
-- spawn group
DELETE FROM `spawn_group` WHERE id = 33020;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33020, 'Storm Peaks - o.191762 Floor Glyph | o. o.191763 Energy Column', 1, 0, 21133, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 33020;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33020, 510654, -1),
(33020, 510655, -1);
DELETE FROM conditions WHERE condition_entry IN (21133);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(21133, 42, 33020, 1, 1, 0, 'Storm Peaks - o.191762 Floor Glyph | o. o.191763 Energy Column');
DELETE FROM worldstate_name WHERE Id=33020;
INSERT INTO worldstate_name(Id, Name) VALUES
(33020,'Storm Peaks - o.191762 Floor Glyph | o. o.191763 Energy Column');
