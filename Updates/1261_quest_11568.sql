-- q.11568 'A return to Resting'

-- Objects
-- missing spawns added - WoTLK Range 571x Free guids used
DELETE FROM game_event_gameobject WHERE guid BETWEEN 5710017 AND 5710020;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 5710017 AND 5710020;
DELETE FROM gameobject WHERE guid BETWEEN 5710017 AND 5710020;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(5710017, 187386, 571, 1,1,-17.0786, -4883.18 ,298.535 ,0.1047193, 0, 0, 0.05233574,0.9986296, -30, -30, 255, 1), -- shield
(5710018, 187385, 571, 1,1, 11.99067,-4981.4  ,303.3151,1.06465,   0, 0, 0.5075378, 0.8616294, -30, -30, 255, 1), -- staff
(5710019, 187383, 571, 1,1,-83.31532,-5014.222,306.4164,6.265733,  0, 0,-0.00872612,0.9999619, -30, -30, 255, 1), -- heart
(5710020, 187384, 571, 1,1,-108.6433,-5143.833,324.7471,2.460913,  0, 0, 0.9426413, 0.3338076, -30, -30, 255, 1); -- armor

-- Correct target for spell=45323
DELETE FROM spell_script_target WHERE entry = 45323;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(45323,1,25229,0),
(45323,1,25230,0),
(45323,1,25231,0),
(45323,1,25232,0);
-- target player
DELETE FROM dbscripts_on_spell WHERE id = 45323;

UPDATE creature_template SET MovementType = 0 WHERE Entry IN (25229,25230,25231,25232); -- waypoints will be set by script
DELETE FROM creature_movement WHERE id IN (108841,108916,108998,109161);
DELETE FROM creature_movement_template WHERE entry IN (25229,25230,25231,25232);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #25229 - Shield Hill Creature Trigger - Isuldof
(25229,1,-83.9454,-5012.04,306.754,5000,2522901,2.87979),
-- #25230 - Shield Hill Creature Trigger - Windan
(25230,1,-111.002,-5143.26,324.024,3000,2523001,2.26893),
-- #25231 - Shield Hill Creature Trigger - Rodin
(25231,1,13.6827,-4983.4,303.369,3000,2523101,0.628319),
-- #25232 - Shield Hill Creature Trigger - Fengir
(25232,1,-12.4699,-4883.23,296.387,3000,2523201,5.70723);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2522901,2523001,2523101,2523201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #2522901
(2522901,0,9,5710019,30,0,0,0,0,0,0,0,0,0,0,0,0,'respawn object'),
(2522901,0,0,0,0,0,24877,100104,7 | 0x10,2000001503,0,0,0,0,0,0,0,''),
(2522901,3,0,0,0,0,24877,100104,7 | 0x10,2000001504,0,0,0,0,0,0,0,''),
(2522901,4,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
-- #2523001
(2523001,0,9,5710020,30,0,0,0,0,0,0,0,0,0,0,0,0,'respawn object'),
(2523001,0,0,0,0,0,24875,100024,7 | 0x10,2000001505,0,0,0,0,0,0,0,''),
(2523001,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
-- #2523101
(2523101,0,9,5710018,30,0,0,0,0,0,0,0,0,0,0,0,0,'respawn object'),
(2523101,0,0,0,0,0,24876,100070,7 | 0x10,2000001502,0,0,0,0,0,0,0,''),
(2523101,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
-- #2523201
(2523201,0,9,5710017,30,0,0,0,0,0,0,0,0,0,0,0,0,'respawn object'),
(2523201,0,0,0,0,0,24874,99811,7 | 0x10,2000001501,0,0,0,0,0,0,0,''),
(2523201,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- texts
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001501 AND 2000001505;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001501,'Your offering has come too late, little one. Can you feel the mist closing in upon you? The Kvaldir return...',0,0,0,0,NULL),
(2000001502,'From the mist and fog the Kvaldir approach. Flee while you still breathe the air of the living...',0,0,0,0,NULL),
(2000001503,'%s laughs.',0,2,0,0,NULL),
(2000001504,'Look to the seas, as your doom comes with the swell of tides.',0,0,0,0,NULL),
(2000001505,'My brothers have awoken. Your efforts are wasted...',0,0,0,0,NULL);
