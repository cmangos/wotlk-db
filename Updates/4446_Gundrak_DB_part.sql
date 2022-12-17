-- Gundrak - fixes

-- more exits added
DELETE FROM `areatrigger_teleport` WHERE id IN (5276,5233);
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `condition_id`) VALUES
(5276,'Gundrak (exit west)',0,0,0,0,0,0,0,571,6702.47,-4660.55,441.568,0.75,0),
(5233,'Gundrak (exit east)',0,0,0,0,0,0,0,571,6970.02,-4402.09,441.578,3.845,0);

-- Drakkari Frenzy 29834
UPDATE creature_template SET InhabitType=2 WHERE entry IN(29834);

-- Frog 13321
UPDATE creature_template SET InhabitType=3 WHERE entry IN(13321);

-- Drakkari Rhino 29838
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2983601);
DELETE FROM vehicle_accessory WHERE vehicle_entry = 29838;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(29838,0,29836,'Drakkari Battle Rider 29836 on Drakkari Rhino 29838');

-- Drakkari Rhino 29931
UPDATE creature_template SET MovementType = 0, ExtraFlags = 16384 WHERE entry IN (29931,29982);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2998201);
-- 3x Drakkari Raider 29982 on Drakkari Rhino 29931
DELETE FROM vehicle_accessory WHERE vehicle_entry = 29931;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(29931,0,29982,'3x Drakkari Raider 29982 on Drakkari Rhino 29931'),
(29931,1,29982,'3x Drakkari Raider 29982 on Drakkari Rhino 29931'),
(29931,2,29982,'3x Drakkari Raider 29982 on Drakkari Rhino 29931');
DELETE FROM `vehicle_seat_addon` WHERE seatentry IN (2178,2179,2180);
INSERT INTO `vehicle_seat_addon` VALUES 
(2178,0,-3.3,5,0,3.132604,1),
(2179,0,-5.9,-4.9,0,3.132604,1),
(2180,0,-7.9,0.02,0,3.132604,1);

-- Moorabi 29305 (30530 - Heroic)
/*
MOORABI_SPELL_LIST_TROLL_NORMAL   = 2930501,
MOORABI_SPELL_LIST_TROLL_HC  	   = 2930502,
MOORABI_SPELL_LIST_MAMMOTH_NORMAL = 3053001,
MOORABI_SPELL_LIST_MAMMOTH_HC 	   = 3053002,
*/
UPDATE `creature_template` SET `SpellList` = 2930501 WHERE `entry` = 29305;
UPDATE `creature_template` SET `SpellList` = 3053001 WHERE `entry` = 30530;
DELETE FROM creature_spell_list WHERE Id IN (2930501,2930502,3053001,3053002);
INSERT INTO creature_spell_list (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- normal - troll
('2930501','0','55104','0','1','0','100','1','8000','16000','8000','16000','Gundrak - Moorabi (Normal) - Troll Form - Determined Stab to current'), -- max - guesed values
('2930501','1','55106','0','1','0','100','1','7000','14000','20000','26000','Gundrak - Moorabi (Normal) - Troll Form - Numbing Shout to current'), -- max - guesed values
('2930501','2','55142','0','1','0','100','1','1000','1000','20000','26000','Gundrak - Moorabi (Normal) - Troll Form - Ground Tremor to current'), -- max - guesed values
-- normal - mamoth
('2930502','0','55102','0','1','0','100','1','8000','16000','8000','16000','Gundrak - Moorabi (Normal) - Mammoth Form - Determined Gore to current'), -- max - guesed values
('2930502','1','55100','0','1','0','100','1','7000','14000','20000','26000','Gundrak - Moorabi (Normal) - Mammoth Form - Numbing Roar to current'), -- max - guesed values
('2930502','2','55101','0','1','0','100','1','1000','1000','13000','18000','Gundrak - Moorabi (Normal) - Mammoth Form - Quake to current'), -- max - guesed values
-- heroic - troll
('3053001','0','55104','0','1','0','100','1','8000','16000','8000','16000','Moorabi - Moorabi (Heroic) - Troll Form - Determined Stab to current'), -- max - guesed values
('3053001','1','55106','0','1','0','100','1','7000','14000','20000','26000','Gundrak - Moorabi (Heroic) - Troll Form - Numbing Shout to current'), -- max - guesed values
('3053001','2','55142','0','1','0','100','1','1000','1000','20000','26000','Gundrak - Moorabi (Heroic) - Troll Form - Ground Tremor to current'), -- max - guesed values
-- heroic - mamoth
('3053002','0','59444','0','1','0','100','1','8000','16000','8000','16000','Gundrak - Moorabi (Heroic) - Mammoth Form - Determined Gore to current'), -- max - guesed values
('3053002','1','55100','0','1','0','100','1','7000','14000','20000','26000','Gundrak - Moorabi (Heroic) - Mammoth Form - Numbing Roar to current'), -- max - guesed values
('3053002','2','55101','0','1','0','100','1','1000','1000','13000','18000','Gundrak - Moorabi (Heroic) - Mammoth Form - Quake to current'); -- max - guesed values
