-- q.12249 'Ursoc, the Bear God' - Alliance
-- q.12236 'Ursoc, the Bear God' - Horde

-- Ursoc - summoned creature
DELETE FROM creature_addon WHERE guid=515442;
DELETE FROM creature_movement WHERE id=515442;
DELETE FROM game_event_creature WHERE guid=515442;
DELETE FROM game_event_creature_data WHERE guid=515442;
DELETE FROM creature_battleground WHERE guid=515442;
DELETE FROM creature_linking WHERE guid=515442
 OR master_guid=515442;
DELETE FROM creature WHERE guid=515442;

-- Cosmetic Trigger - LAB 24921
DELETE FROM creature_template_addon WHERE entry = 24921;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(24921,0,0,0,0,0,0,16245);
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 507811 AND 507816;
DELETE FROM creature_movement WHERE id BETWEEN 507811 AND 507816;
DELETE FROM game_event_creature WHERE guid BETWEEN 507811 AND 507816;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 507811 AND 507816;
DELETE FROM creature_battleground WHERE guid BETWEEN 507811 AND 507816;
DELETE FROM creature_linking WHERE guid BETWEEN 507811 AND 507816
OR master_guid BETWEEN 507811 AND 507816;
DELETE FROM creature WHERE guid BETWEEN 507811 AND 507816;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(507811,24921,571,1,1,0,0,4669.846,-3871.47,329.4667,5.131268,60,60,0,0,0,0,0,0),
(507812,24921,571,1,1,0,0,4678.452,-3870.054,329.5016,4.468043,60,60,0,0,0,0,0,0),
(507813,24921,571,1,1,0,0,4673.316,-3880.024,339.7046,1.658063,60,60,0,0,0,0,0,0),
(507814,24921,571,1,1,0,0,4677.513,-3879.599,339.5704,6.056293,60,60,0,0,0,0,0,0),
(507815,24921,571,1,1,0,0,4672.563,-3873.402,328.7137,3.246312,60,60,0,0,0,0,0,0), -- for quest
(507816,24921,571,1,1,0,0,4675.925,-3872.5,329.157,4.066617,60,60,0,0,0,0,0,0); -- for quest

-- Tur Ragepaw 27328
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27328;
DELETE FROM creature_template_addon WHERE entry = 27328;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27328,0,0,1,0,0,0,NULL);
-- gossip updates 9497
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 949701 WHERE menu_id = 9497 AND Id = 0; -- bear form
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 949702 WHERE menu_id = 9497 AND Id = 1; -- 0 form
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 949703 WHERE menu_id = 9497 AND Id = 2; -- healer
DELETE FROM dbscripts_on_gossip WHERE id BETWEEN 949701 AND 949703; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Bear Form
(949701,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(949701,5,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPcFlags Removed'),
(949701,10,35,6,40,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event AI 6'),
(949701,20,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(949701,30,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(949701,50,15,48368,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 48368'),
-- (949701,70,15,24868,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 24868'), -- missing spells - not sure if needed at all
-- (949701,100,15,24899,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 24899'), -- missing spells - not sure if needed at all
-- (949701,200,15,9033,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 9033'), -- missing spells - not sure if needed at all
(949701,500,15,52507,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 52507'),
(949701,2000,0,0,0,0,0,0,0,2000020834,0,0,0,0,0,0,0,'say'),
(949701,4900,22,250,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'set faction'),
(949701,5000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set: WP Path:1'),
-- Moonkin Form
(949702,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(949702,5,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPcFlags Removed'),
(949702,10,35,6,40,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event AI 6'),
(949702,20,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(949702,30,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(949702,50,15,48369,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 48369'),
(949702,500,15,24905,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 24905'),
(949702,500,15,52503,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 52503'),
(949703,2000,0,0,0,0,0,0,0,2000020836,0,0,0,0,0,0,0,'say'),
(949702,4900,22,250,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'set faction'),
(949702,5000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set: WP Path:1'),
-- Tree of Life Form
(949703,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(949703,5,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPcFlags Removed'),
(949703,10,35,6,40,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event AI 6'),
(949703,20,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(949703,30,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(949703,50,15,48371,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 48371'),
(949703,500,15,52553,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: 52553'),
(949703,2000,0,0,0,0,0,0,0,2000020835,0,0,0,0,0,0,0,'say'),
(949703,4900,22,250,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'set faction'),
(949703,5000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set: WP Path:1');
-- Waypoints comes from gossip
DELETE FROM creature_movement_template WHERE entry = 27328;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27328,1,1,4679.3,-3866.04,327.765,100,0,0),
(27328,1,2,4688.51,-3855.47,326.962,100,0,0),
(27328,1,3,4705.27,-3845.65,327.482,100,0,0),
(27328,1,4,4726.23,-3846.97,330.175,100,0,0),
(27328,1,5,4743.54,-3849.22,332.747,100,0,0),
(27328,1,6,4755.76,-3847.74,333.814,100,0,0),
(27328,1,7,4782.42,-3843.84,333.871,100,0,0),
(27328,1,8,4813.29,-3838.41,336.661,100,0,0),
(27328,1,9,4834.83,-3838.11,338.275,100,0,0),
(27328,1,10,4865.42,-3842.79,338.17,6.21187,300000,2732801); -- script
DELETE FROM dbscripts_on_creature_movement WHERE id = 2732801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2732801,1000,0,0,0,0,0,0,0x04,2000020833,0,0,0,0,0,0,0,'say'),
(2732801,4900,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2732801,5000,10,26633,600000,0,0,0,0x08,0,0,0,0,4893.27,-3842.42,337.648,3.12414,'summon: Ursoc 26633');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020833 AND 2000020836;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020833,'Ursoc, brother of Ursol and guardian of the furbolg tribes... show yourself!',0,0,0,0,NULL),
(2000020834,'Stay behind me, $r.  I will do my best to protect you.',0,0,0,0,NULL),
(2000020835,'I will watch over you and your allies, $r.',0,0,0,0,NULL),
(2000020836,'My freedom means nothing if we fail to save Ursoc.  Make haste, $n.',0,0,0,0,NULL);
