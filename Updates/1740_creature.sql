-- Dark Ranger Marrah
-- missing spawn added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid = 32374;
DELETE FROM creature_movement WHERE id = 32374;
DELETE FROM creature_linking WHERE guid = 32374;
DELETE FROM creature_linking WHERE master_guid = 32374;
DELETE FROM creature WHERE guid = 32374;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(32374,0,574,3,1,0,0,181.937,-76.8756,15.0322,3.54848,7200,7200,0,0,4399,0,0,2); -- entry = 0:`creature_conditional_spawn` used
DELETE FROM `creature_template_addon` WHERE entry = 24137;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(24137,0,0,1,0,0,0,34189);
-- waypoints
UPDATE creature_template SET MovementType = 2 WHERE entry = 24137;
DELETE FROM `creature_movement_template` WHERE entry = 24137;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(24137,0,1,185.245,-75.7529,16.3865,2.87973,2000,2413701);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2413701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2413701,1,14,34189,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2413701,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');
-- spawned only for horde group
DELETE FROM creature_conditional_spawn WHERE guid = 32374;
INSERT INTO creature_conditional_spawn (guid, EntryAlliance, EntryHorde, Comments) VALUES
(32374,0,24137,'Utgarde Keep - Alliance "No Spawn" / Horde - Dark Ranger Marrah');

-- gossip
UPDATE creature_template SET GossipMenuId = 10224 WHERE entry = 24137;
DELETE FROM gossip_menu WHERE entry = 10224;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(10224,14215,0,0);
