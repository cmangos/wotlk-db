-- q.11390 'I've Got a Flying Machine!'
-- q.11391 'Steel Gate Patrol'

-- Invisible Stalker (Floating) (5.00)
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5710793 AND 5710795;
DELETE FROM creature_movement WHERE id BETWEEN 5710793 AND 5710795;
DELETE FROM creature_linking WHERE guid BETWEEN 5710793 AND 5710795;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5710793 AND 5710795;
DELETE FROM creature WHERE guid BETWEEN 5710793 AND 5710795;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5710793,24526,571,1,1,0,0,1997.441,-3257.168,150.3535,3.124139,300,300,0,0,42,0,0,0),
(5710794,24526,571,1,1,0,0,1997.441,-3257.168,150.3535,3.124139,300,300,0,0,42,0,0,0),
(5710795,24526,571,1,1,0,0,2091.156,-3245.318,161.0752,0.9773844,300,300,0,0,42,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (5710793,5710794,5710795);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(5710793,0,0,0,0,0,0,'43890 43891'),
(5710794,0,0,0,0,0,0,'43890'),
(5710795,0,0,0,0,0,0,'43890 43891');

-- Summoned for 2 quests
DELETE FROM creature WHERE guid IN (104704,104706);
DELETE FROM creature_addon WHERE guid IN (104704,104706);
DELETE FROM creature_movement WHERE id IN (104704,104706);
DELETE FROM game_event_creature WHERE guid IN (104704,104706);
DELETE FROM game_event_creature_data WHERE guid IN (104704,104706);
DELETE FROM creature_battleground WHERE guid IN (104704,104706);
DELETE FROM creature_linking WHERE guid IN (104704,104706)
 OR master_guid IN (104704,104706);
 
-- Sack of Relics 24439 spawntime corrected
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 24439;
 
-- SpellID: 43889 -- player must have this to see targeted place
DELETE FROM spell_area WHERE spell = 43889;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(43889,3999,11390,1,11390,0,0,0,2,1);
 
-- Steel Gate Chief Archaeologist
-- only when quests are active 
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 895401, condition_id = 20002 WHERE menu_id = 8954 AND id = 0;
DELETE FROM conditions WHERE condition_entry BETWEEN 20000 AND 20003;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20000, 9, 11390, 0),
(20001, 9, 11391, 0),
(20002, -2, 20001, 20000);
DELETE FROM dbscripts_on_gossip WHERE id = 895401; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(895401,0,15,45973,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(895401,1,15,43767,0,0,0,0,6,0,0,0,0,0,0,0,0,'');

 -- Quest script
DELETE FROM dbscripts_on_quest_start WHERE id IN (11390,11391);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #11390
(11390,0,15,45973,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(11390,1,15,43767,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
-- #11391
(11391,0,15,45973,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(11391,1,15,43767,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(11391,2,10,15214,15000,0,0,0,0x08,0,0,0,0,2046.149,-3221.081,60.13985,6.230825,'Summon Invisible Stalker');
UPDATE quest_template SET StartScript = 11390 WHERE entry = 11390;
UPDATE quest_template SET StartScript = 11391 WHERE entry = 11391;

-- Part of Lead Archaeologist Malzie EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20122);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20122,0,10,24440,300000,0,0,0,0x08,1,0,0,0,2173.411,-3246.403,179.519,1.815142,'Summon Gjalerbron Gargoyle #0'),
(20122,0,10,24440,300000,1,0,0,0x08,1,0,0,0,2252.807,-3224.385,200.084,3.543018,'Summon Gjalerbron Gargoyle #1'),
(20122,0,10,24440,300000,2,0,0,0x08,1,0,0,0,2256.531,-3265.516,197.007,2.96706,'Summon Gjalerbron Gargoyle #2'),
(20122,0,10,24440,300000,3,0,0,0x08,1,0,0,0,2159.514,-3194.063,143.9113,0.6457718,'Summon Gjalerbron Gargoyle #3'),
(20122,1,10,24440,300000,4,0,0,0x08,1,0,0,0,2238.714,-3355.42,181.49,3.001966,'Summon Gjalerbron Gargoyle #4'),
(20122,1,10,24440,300000,5,0,0,0x08,1,0,0,0,2223.474,-3241.018,192.57,4.904375,'Summon Gjalerbron Gargoyle #5'),
(20122,1,10,24440,300000,6,0,0,0x08,1,0,0,0,2198.835,-3173.413,192.8549,5.096361,'Summon Gjalerbron Gargoyle #6'),
(20122,1,10,24440,300000,7,0,0,0x08,1,0,0,0,2250.896,-3192.698,198.4919,5.77704,'Summon Gjalerbron Gargoyle #7'),
(20122,2,10,24440,300000,0,0,0,0x08,1,0,0,0,2173.411,-3246.403,179.519,1.815142,'Summon Gjalerbron Gargoyle #0'),
(20122,2,10,24440,300000,1,0,0,0x08,1,0,0,0,2252.807,-3224.385,200.084,3.543018,'Summon Gjalerbron Gargoyle #1'),
(20122,2,10,24440,300000,2,0,0,0x08,1,0,0,0,2256.531,-3265.516,197.007,2.96706,'Summon Gjalerbron Gargoyle #2'),
(20122,2,10,24440,300000,3,0,0,0x08,1,0,0,0,2159.514,-3194.063,143.9113,0.6457718,'Summon Gjalerbron Gargoyle #3'),
(20122,2,10,24440,300000,4,0,0,0x08,1,0,0,0,2238.714,-3355.42,181.49,3.001966,'Summon Gjalerbron Gargoyle #4'),
(20122,3,10,24440,300000,5,0,0,0x08,1,0,0,0,2223.474,-3241.018,192.57,4.904375,'Summon Gjalerbron Gargoyle #5'),
(20122,3,10,24440,300000,6,0,0,0x08,1,0,0,0,2198.835,-3173.413,192.8549,5.096361,'Summon Gjalerbron Gargoyle #6'),
(20122,3,10,24440,300000,7,0,0,0x08,1,0,0,0,2250.896,-3192.698,198.4919,5.77704,'Summon Gjalerbron Gargoyle #7');

-- Gjalerbron Gargoyle 24440
UPDATE creature_template SET MovementType = 2 WHERE entry = 24440;
DELETE FROM creature_movement_template WHERE entry = 24440;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- #0
(24440,0,1,2190.686,-3291.007,174.8357,0,0,100),
(24440,0,2,2177.234,-3270.622,174.8357,0,0,100),
(24440,0,3,2154.767,-3260.519,174.8357,0,0,100),
(24440,0,4,2126.85,-3260.701,174.8357,0,0,100),
(24440,0,5,2093.854,-3282.568,174.8357,0,0,100),
(24440,0,6,2065.487,-3277.929,174.8357,0,0,100),
(24440,0,7,2020.17,-3239.36,171.846,5000,2444001,100),
-- #1
(24440,1,1,2181.557,-3264.775,181.998,0,0,100),
(24440,1,2,2137.121,-3261.297,181.998,0,0,100),
(24440,1,3,2090.474,-3263.353,181.998,0,0,100),
(24440,1,4,2073.41,-3250.01,183.082,0,0,100),
(24440,1,5,2036.73,-3225.58,134.215,5000,2444001,100),
-- #2
(24440,2,1,2166.063,-3243.593,180.9555,0,0,100),
(24440,2,2,2159.82,-3250.004,180.9555,0,0,100),
(24440,2,3,2139.998,-3230.149,180.9555,0,0,100),
(24440,2,4,2119.428,-3219.818,180.9555,0,0,100),
(24440,2,5,2082.412,-3218.636,180.9555,0,0,100),
(24440,2,6,2057.24,-3231.404,180.9555,0,0,100),
(24440,2,7,2014.207,-3245.663,130.8795,0,0,100),
(24440,2,8,2013.85,-3265.01,115.036,5000,2444001,100),
-- #3
(24440,3,1,2158.682,-3318.337,183.7175,0,0,100),
(24440,3,2,2130.74,-3310.896,183.7175,0,0,100),
(24440,3,3,2096.034,-3300.941,183.7175,0,0,100),
(24440,3,4,2076.361,-3320.212,177.4952,0,0,100),
(24440,3,5,2044.67,-3331.994,177.4952,0,0,100),
(24440,3,6,1997.702,-3316.084,172.1619,5000,2444001,100),
-- #4
(24440,4,1,2190.686,-3291.007,174.8357,0,0,100),
(24440,4,2,2177.234,-3270.622,174.8357,0,0,100),
(24440,4,3,2154.767,-3260.519,174.8357,0,0,100),
(24440,4,4,2126.85,-3260.701,174.8357,0,0,100),
(24440,4,5,2093.854,-3282.568,174.8357,0,0,100),
(24440,4,6,2065.487,-3277.929,174.8357,0,0,100),
(24440,4,7,2047.55,-3295.78,140.094,5000,2444001,100),
-- #5
(24440,5,1,2181.557,-3264.775,181.998,0,0,100),
(24440,5,2,2137.121,-3261.297,181.998,0,0,100),
(24440,5,3,2090.474,-3263.353,181.998,0,0,100),
(24440,5,4,2047.13,-3224.15,87.5117,5000,2444001,100),
-- #6
(24440,6,1,2190.686,-3291.007,174.8357,0,0,100),
(24440,6,2,2177.234,-3270.622,174.8357,0,0,100),
(24440,6,3,2154.767,-3260.519,174.8357,0,0,100),
(24440,6,4,2126.85,-3260.701,174.8357,0,0,100),
(24440,6,5,2093.854,-3282.568,174.8357,0,0,100),
(24440,6,6,2065.487,-3277.929,174.8357,0,0,100),
(24440,6,7,2078.46,-3307.87,130.718,5000,2444001,100),
-- #7
(24440,7,1,2181.557,-3264.775,181.998,0,0,100),
(24440,7,2,2137.121,-3261.297,181.998,0,0,100),
(24440,7,3,2090.474,-3263.353,181.998,0,0,100),
(24440,7,4,2050.56,-3260.4,131.57,5000,2444001,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2444001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2444001,0,20,1,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random');

-- correct target
DELETE FROM spell_script_target WHERE entry IN (43768,43770,43789);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES 
(43768,1,24418,5),
(43770,1,24439,0);

-- spell for vehicle
-- this req. conditions ... for both quests spells are diff.
DELETE FROM creature_template_spells WHERE entry = 24418;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(24418,43770,0,0,0); -- q.11390
-- (24418,43799,43769,0,44009); -- q.11391

-- spell scripts
DELETE FROM dbscripts_on_spell WHERE id IN (43770,43789,36553);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(43770,0,15,43789,0,0,24439,20,7,0,0,0,0,0,0,0,0,''),
(43789,0,15,46598,0,0,24418,20,1,0,0,0,0,0,0,0,0,''),
(36553,2,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Lets check if veh is in correct zone (unboard if not)
-- Part of Steel Gate Flying Machine EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20121);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20121,0,34,20003,0,0,0,0,0,0,0x04,0,0,0,0,0,0,''),
(20121,1,14,43768,0,0,0,0,0,0,0x04,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry =  20003;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20003, 4, 3999, 0);

-- invis stalkers shouldnt move
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 119544;
