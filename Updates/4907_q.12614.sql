-- q.12614 'Post-partum Aggression'
-- start/end scripts
DELETE FROM dbscripts_on_quest_start WHERE id IN (12614);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12614,1,0,15,51757,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 51757');
UPDATE quest_template SET StartScript = 12614 WHERE entry = 12614;
DELETE FROM dbscripts_on_quest_end WHERE id IN (12614);
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12614,0,0,31,27986,20,0,0,0,0x08,0,0,0,0,0,0,0,0,'quest check'),
(12614,10,0,10,27986,60000,0,0,0,0x08,0,0,0,0,6448.843,5087.138,-63.85333,5.899213,'summon 27986'),
(12614,100,0,45,20774,0,0,27986,20,0,0,0,0,0,0,0,0,0,'summon - relay');
UPDATE quest_template SET CompleteScript = 12614 WHERE entry = 12614;
-- other updates
DELETE FROM creature_template_spells WHERE entry IN(28468);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(28468,51748,51756,51751,51752,0,0,0,0);
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28468;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(28468,1,28451,'Hemet Nesingwary on Stampy');
-- Hemet Nesingwary 28451
UPDATE creature_template SET Faction = 113, EquipmentTemplateid = 799 WHERE Entry = 28451;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28857);
DELETE FROM creature_template_addon WHERE entry IN (28451);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28451,0,0,2,0,0,0,NULL);
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (51748);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(51748,0,0,0,0,0,28451,10,7,28074,0,0,0,0,0,0,0,'Buddy Say');
-- Relay
DELETE FROM dbscripts_on_relay WHERE id IN (20774);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20774,0,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - NpcFlags Remove'),
(20774,100,0,0,0,0,0,0,0,0,28026,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,100,1,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,1000,0,53,0,0,0,0,0,0,32539,1,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Set worldstate variable to 1'),
(20774,5000,0,0,0,0,0,0,0,0,28027,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,5000,1,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,11000,0,0,0,0,0,0,0,0,28028,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,11000,1,1,430,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,17000,0,0,0,0,0,0,0,0,28029,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,17000,1,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,23000,0,0,0,0,0,0,0,0,28030,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,23000,1,1,432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,29000,0,0,0,0,0,0,0,0,28032,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,29000,1,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,32000,1,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,37000,0,0,0,0,0,0,0,0,28033,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,37000,1,1,4,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,43000,0,0,0,0,0,0,0,0,28036,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Say'),
(20774,43000,1,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - emote'),
(20774,48000,0,35,5,20,0,0,0,0,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - send EventAI 5'),
(20774,54000,0,53,0,0,0,0,0,0,32539,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - Set worldstate variable to 0'),
(20774,58000,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Hemet Nesingwary 27986 (q.12614) - unactive');
-- OBJECT
DELETE FROM `spawn_group` WHERE id = 32539;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32539, 'Sholazar Basin - o.190601 spawn with q.12614', 1, 0, 20571, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 32539;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32539, 514752, -1);
DELETE FROM conditions WHERE condition_entry IN (20571);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20571, 42, 32539, 1, 1, 0, 'Sholazar Basin - o.190601 spawn with q.12614');
DELETE FROM worldstate_name WHERE Id=32539;
INSERT INTO worldstate_name(Id, Name) VALUES
(32539,'Sholazar Basin - o.190601 spawn with q.12614');
