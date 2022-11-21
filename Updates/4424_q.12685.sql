-- q.12685 'You Reap What You Sow'
DELETE FROM dbscripts_on_event WHERE id IN (18858);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18858,0,31,28785,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 28785 - terminate if found'),
(18858,50,31,28671,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 28671 - terminate if not found'),
(18858,100,15,52353,0,0,28671,50,3,0,0,0,0,0,0,0,0,'buddy cast 52353 -> Player'),
(18858,101,0,0,0,0,28671,50,3,28837,0,0,0,0,0,0,0,'buddy Say -> Player'), -- 00:43:04.000
(18858,200,53,0,0,0,0,0,0,30017,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(18858,201,53,0,0,0,0,0,0,30018,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(18858,7000,0,0,0,0,28671,50,3,28838,0,0,0,0,0,0,0,'buddy Say -> Player'), -- 00:43:11.000
(18858,22000,10,28785,300000,0,0,0,8,0,0,0,0,5716.019,-4371.387,385.8849,4.757225,'summon 28785'), -- 00:43:26.000
(18858,22100,0,0,0,0,28785,50,3,28832,0,0,0,0,0,0,0,'buddy Say -> Player'), -- 00:43:26.000
(18858,23000,0,0,0,0,28671,50,3,28833,0,0,0,0,0,0,0,'buddy Say -> Player'), -- 00:43:27.000
(18858,30000,0,0,0,0,28785,50,3,28842,0,0,0,0,0,0,0,'buddy Say -> Player'), -- 00:43:35.000
(18858,30001,16,7056,0,0,28785,50,0,0,0,0,0,0,0,0,0,'buddy Sound -> Player'),
(18858,41000,0,0,0,0,28785,50,3,28843,0,0,0,0,0,0,0,'buddy Say -> Player'), -- 00:43:47.000
(18858,41001,15,52381,0,0,28785,50,0,0,0,0,0,0,0,0,0,'buddy -> Cast 52381'),
(18858,44000,0,0,0,0,28671,50,3,28877,0,0,0,0,0,0,0,'buddy Say -> Player'), -- 00:43:53.000
(18858,47002,44,28795,0,0,28671,50,0x04,0,0,0,0,0,0,0,0,'buddy template update'),
(18858,47003,0,0,0,0,28795,50,0x04,28855,0,0,0,0,0,0,0,'buddy Say -> Player'),
(18858,47004,26,0,0,0,28795,50,3,0,0,0,0,0,0,0,0,'buddy attack -> Player'),
(18858,49000,53,0,0,0,0,0,0,30017,0,0,0,0,0,0,0,'Set worldstate variable to 0'), -- off
(18858,49001,53,0,0,0,0,0,0,30018,0,0,0,0,0,0,0,'Set worldstate variable to 0'); -- off
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (28837,28838,28832,28833,28842,28843,28877,28855,28876);
DELETE FROM `spawn_group` WHERE id IN (30017,30018);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(30017, 'Zul\'Drak - Altar of Qutz\'lun - c.23837 spawn with q.12685', 0, 0, 20521, 0x08),
(30018, 'Zul\'Drak - Altar of Qutz\'lun - o.190736 & o.190737 spawn with q.12685', 1, 0, 20522, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id IN (30017,30018);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30017, 522763, -1),(30018, 514942, -1),
(30017, 523130, -1),(30018, 514737, -1),
(30017, 523131, -1),(30018, 514740, -1),
(30017, 523132, -1),(30018, 514741, -1),
(30017, 523133, -1),(30018, 514739, -1);
UPDATE gameobject SET spawntimesecsmin = 1, spawntimesecsmax = 1 WHERE guid IN (514942,514737,514740,514741,514739);
DELETE FROM conditions WHERE condition_entry IN (20521,20522);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20521, 42, 30017, 0, 1, 0, 'Zul\'Drak - Altar of Qutz\'lun - c.23837 spawn with q.12684'),
(20522, 42, 30018, 0, 1, 0, 'Zul\'Drak - Altar of Qutz\'lun - o.190736 & o.190737 spawn with q.12684');
DELETE FROM worldstate_name WHERE Id IN (30017,30018);
INSERT INTO worldstate_name(Id, Name) VALUES
(30017,'Zul\'Drak - Altar of Qutz\'lun - c.23837 spawn with q.12684'),
(30018,'Zul\'Drak - Altar of Qutz\'lun - o.190736 & o.190737 spawn with q.12684');
-- Duplicates removed
DELETE FROM gameobject WHERE guid IN (514779,514776,514939);
DELETE FROM game_event_gameobject WHERE guid IN (514779,514776,514939);
DELETE FROM gameobject_battleground WHERE guid IN (514779,514776,514939);
-- ELM General Purpose Bunny 23837
-- missing added
DELETE FROM creature_addon WHERE guid IN (522763,523130,523131,523132,523133);
DELETE FROM creature_movement WHERE id IN (522763,523130,523131,523132,523133);
DELETE FROM game_event_creature WHERE guid IN (522763,523130,523131,523132,523133);
DELETE FROM game_event_creature_data WHERE guid IN (522763,523130,523131,523132,523133);
DELETE FROM creature_battleground WHERE guid IN (522763,523130,523131,523132,523133);
DELETE FROM creature_linking WHERE guid IN (522763,523130,523131,523132,523133)
OR master_guid IN (522763,523130,523131,523132,523133);
DELETE FROM creature WHERE guid IN (522763,523130,523131,523132,523133);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(522763,23837,571,1,1,0,0,5707.188,-4371.667,387.4335,3.228859,1,1,0,0,0,0,0,0),
(523130,23837,571,1,1,0,0,5721.946,-4361.917,387.8101,4.29351,1,1,0,0,0,0,0,0),
(523131,23837,571,1,1,0,0,5717.041,-4378.735,387.6418,1.570796,1,1,0,0,0,0,0,0),
(523132,23837,571,1,1,0,0,5726.004,-4372.459,387.9738,2.775074,1,1,0,0,0,0,0,0),
(523133,23837,571,1,1,0,0,5711.149,-4361.718,387.6694,5.253441,1,1,0,0,0,0,0,0);
DELETE FROM `creature_spawn_data_template` WHERE entry IN (20040);
INSERT INTO `creature_spawn_data_template` (`Entry`, `RelayId`) VALUES 
(20040,20675);
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (522763,523130,523131,523132,523133);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(522763,20040),(523130,20040),(523131,20040),(523132,20040),(523133,20040);
DELETE FROM dbscripts_on_relay WHERE id IN (20675);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20675,0,15,52388,0,0,0,0,0,0,0,0,0,0,0,0,0,'23837 - Cast 52388 (q.12685)');
-- target for spells
DELETE FROM spell_script_target WHERE entry IN(52388);
INSERT INTO spell_script_target VALUES
(52388,1,23837,0);
-- Spirit of Quetz'lun 28785
UPDATE creature_template_addon SET auras = '51126 41408' WHERE entry = 28785;
DELETE FROM dbscripts_on_spell WHERE id IN (52380);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52380,0,15,52354,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id IN (28795);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28795,0,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'send Event A');
