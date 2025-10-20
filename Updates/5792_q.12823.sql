-- q.12823 'A Flawless Plan'
DELETE FROM dbscripts_on_event WHERE id IN (19455);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19455,1,31,29626,50,0,0,0,0x008,0,0,0,0,0,0,0,0,'search for 29626 - terminate if alive'),
(19455,2000,10,29626,300000,0,0,0,0x008,0,0,0,0,6447.5728,-1728.7552,480.7186,5.77704,'summon 29626');
-- Tormar Frostgut 29626
UPDATE creature_template SET Faction = 16, EquipmentTemplateId = 2547, MovementType = 2 WHERE entry = 29626;
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry IN (2547);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2547, 38170, 38170, 0);
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (30593);
DELETE FROM creature_movement_template WHERE Entry = 29626;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(29626,1,6470.204,-1743.3411,486.80005,100,0,0),
(29626,2,6488.025,-1747.5215,488.09357,100,0,0),
(29626,3,6503.44,-1748.83,490.644,6.09453,1000,3);
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (55693);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(55693,1,14,55486,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove aura');
