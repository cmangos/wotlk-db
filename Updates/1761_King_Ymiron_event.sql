-- Queen Angerboda & King Ymiron Event - Howling Fjord

-- King Ymiron 29393
-- missing spawns added - WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid IN (5711114);
DELETE FROM creature_movement WHERE id IN (5711114);
DELETE FROM creature_linking WHERE guid IN (5711114);
DELETE FROM creature_linking WHERE master_guid IN (5711114);
DELETE FROM creature WHERE guid IN (5711114);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711114,29393,571,1,1,0,0,2851.36,-3863.74,248.53,5.305801,300,300,0,0,13945,0,0,0);
-- Update
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = 768 WHERE entry = 29393;
DELETE FROM creature_template_addon WHERE entry = 29393;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(29393,0,0,1,0,417,0,NULL);

-- The Lich King 29394
UPDATE creature_template SET FactionAlliance = 21, FactionHorde = 21, UnitFlags = 33536, MovementType = 2 WHERE entry = 29394;
DELETE FROM creature_template_addon WHERE entry = 29394;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(29394,0,0,1,0,0,0,41408);
DELETE FROM creature_movement_template WHERE entry = 29394;
INSERT INTO creature_movement_template (entry,pathID,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(29394,0,1,2850.257,-3872.007,248.6132,23000,2939401,1.413717);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2939401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2939401,0,15,34427,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2939401,4,0,0,0,0,0,0,0,2000001727,0,0,0,0,0,0,0,''),
(2939401,9,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2939401,14,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2939401,16,31,29393,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29393'),
(2939401,17,15,42811,0,0,29393,5711114,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2939401,20,35,5,5,0,0,0,0,0,0,0,0,0,0,0,0,'send event A'),
(2939401,21,31,29393,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29393'),
(2939401,22,15,34427,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2939401,22,15,34427,0,0,29393,5711114,7 | 0x10,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry = 2000001727;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001727,'Not yet, Ymiron, I have other plans for you. You will serve me better within Utgarde Pinnacle. And if these insects survive to find you again, you will get the chance to avenge your wife.',0,1,0,1,NULL);

-- Part of Queen Angerboda EAI
DELETE FROM `dbscripts_on_relay` WHERE id IN (20067,20068);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(20067,0,15,5,0,0,24014,5711110,7 | 0x10,0,0,0,0,0,0,0,0,''), -- should be 3617 (missing sereverside)
(20067,0,15,5,0,0,24014,5711111,7 | 0x10,0,0,0,0,0,0,0,0,''), -- should be 3617 (missing sereverside)
(20067,0,15,5,0,0,24014,5711112,7 | 0x10,0,0,0,0,0,0,0,0,''), -- should be 3617 (missing sereverside)
(20068,0,31,29394,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 29394'), -- must be only one available
(20068,1,10,29394,23000,0,0,0,0x08,0,0,0,0,2850.257,-3872.007,248.6132,1.413717,'summon: The Lich King');
