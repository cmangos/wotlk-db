-- Conquest Hold - Grizzly Hills

-- Generic Relays added
DELETE FROM dbscripts_on_relay WHERE id IN (30008,30009);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30008,0,1,4,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 4'),
(30009,0,1,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 21');

-- Conquest Hold Legionnaire 26839
UPDATE creature SET position_x = 3273.251, position_y = -2197.424, position_z = 117.45593, orientation = 4.067 WHERE guid = 515920;
UPDATE creature SET position_x = 3268.641, position_y = -2195.6433, position_z = 117.45593, orientation = 4.346 WHERE guid = 515921;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (515899,515906,515907,515911,515912,515921);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(515899,0,8,1,0,0,0,NULL),
(515906,0,8,1,0,0,0,NULL),
(515907,0,8,1,0,0,0,NULL),
(515911,0,8,1,0,0,0,NULL),
(515912,0,8,1,0,0,0,NULL),
(515920,0,0,1,0,0,0,49415),
(515921,0,0,1,0,0,0,49415);

-- Magistrix Phaelista 29160
UPDATE creature_template SET GossipMenuId = 9780 WHERE entry = 29160;

-- Hidetrader Jun'ik 27037
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27037);
DELETE FROM creature_template_addon WHERE entry = 27037;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27037,0,1,1,0,0,0,NULL);

-- Windseer Grayhorn 27262
UPDATE creature_template SET GossipMenuId = 9490 WHERE entry = 27262;
DELETE FROM gossip_menu WHERE entry = 9490;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9490, 12773, 0, 0);

-- Conquest Hold Outrider 26864
-- missing added
DELETE FROM creature_addon WHERE guid IN (507787,507876,507877);
DELETE FROM creature_movement WHERE id IN (507787,507876,507877);
DELETE FROM game_event_creature WHERE guid IN (507787,507876,507877);
DELETE FROM game_event_creature_data WHERE guid IN (507787,507876,507877);
DELETE FROM creature_battleground WHERE guid IN (507787,507876,507877);
DELETE FROM creature_linking WHERE guid IN (507787,507876,507877)
 OR master_guid IN (507787,507876,507877);
DELETE FROM creature WHERE guid IN (507787,507876,507877);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(507787,26864,571,1,1,0,0,3327.9,-2222.44,118.364,3.72655,180,180,0,0,0,0,0,2),
(507876,26864,571,1,1,0,0,3329.71,-2221.25,118.6,3.72655,180,180,0,0,0,0,0,0),
(507877,26864,571,1,1,0,0,3332.56,-2219.36,118.955,3.72655,180,180,0,0,0,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 26864;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26864,14334,0,1,0,0,0,NULL);
DELETE FROM creature_movement WHERE id = 507787;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(507787,1,3327.9,-2222.44,118.364,3.72655,100,5),
(507787,2,3316.52,-2229.91,116.692,100,0,0),
(507787,3,3304.02,-2244.76,113.997,100,0,0),
(507787,4,3294.62,-2252.12,113.06,100,0,0),
(507787,5,3286.99,-2254.48,113.603,100,0,0),
(507787,6,3276.51,-2254.34,114.365,100,0,0),
(507787,7,3260.11,-2250.75,114.267,100,0,0),
(507787,8,3246.11,-2247.49,114.558,100,0,0),
(507787,9,3228.99,-2245.27,114.72,100,0,0),
(507787,10,3214.93,-2244.45,116.265,100,0,0),
(507787,11,3197.38,-2244.27,115.608,100,0,0),
(507787,12,3176.27,-2244.52,114.904,100,0,0),
(507787,13,3163.77,-2244.28,114.329,100,0,0),
(507787,14,3151.4,-2237.88,112.492,100,0,0),
(507787,15,3146.37,-2231.66,114.197,100,0,0),
(507787,16,3142.2,-2226.87,115.954,100,0,0),
(507787,17,3138.26,-2217.24,116.54,100,0,0),
(507787,18,3132.41,-2197.08,113.424,100,0,0),
(507787,19,3130.38,-2186.07,110.976,100,0,0),
(507787,20,3128.45,-2175.32,107.516,100,0,0),
(507787,21,3126.81,-2161.43,106.153,100,0,0),
(507787,22,3126.49,-2137.16,97.8772,100,0,0),
(507787,23,3129.76,-2122.61,95.9353,100,0,0),
(507787,24,3139.8,-2105.11,94.7253,100,0,0),
(507787,25,3151.04,-2091.39,92.2904,100,0,0),
(507787,26,3168.99,-2069.29,89.5316,100,0,0),
(507787,27,3189.21,-2054.34,87.481,100,0,0),
(507787,28,3202.59,-2046.72,88.1715,100,0,0),
(507787,29,3221.16,-2040.19,87.4672,100,0,0),
(507787,30,3237.93,-2036.14,88.5198,100,0,0),
(507787,31,3250.69,-2035.78,89.4513,100,0,0),
(507787,32,3262.02,-2043.69,92.9265,100,0,0),
(507787,33,3275.77,-2055.76,97.6329,100,0,0),
(507787,34,3284.54,-2064.14,99.3037,100,0,0),
(507787,35,3289.81,-2071.38,98.2907,100,0,0),
(507787,36,3297.11,-2085.13,103.487,100,0,0),
(507787,37,3305.27,-2101.3,110.051,100,0,0),
(507787,38,3311.04,-2114.47,112.628,100,0,0),
(507787,39,3321.03,-2121.15,117.409,100,0,0),
(507787,40,3332.53,-2128.11,121.238,100,0,0),
(507787,41,3345.24,-2140.59,121.417,100,0,0),
(507787,42,3352.07,-2149.57,123.536,100,0,0),
(507787,43,3360.99,-2163.15,122.547,100,0,0),
(507787,44,3369.55,-2180.42,121.473,100,0,0),
(507787,45,3368.13,-2200.41,119.971,100,0,0),
(507787,46,3359.01,-2207.96,119.533,100,0,0),
(507787,47,3346.17,-2213.88,119.376,100,0,0);
-- links
DELETE FROM creature_linking WHERE master_guid = 507787;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(507876, 507787, 1+2+515),
(507877, 507787, 1+2+515);

-- Part of Pit-Fighting Spectator 26869 EAI
DELETE FROM dbscript_random_templates WHERE id = 20220;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20220,1,30008,40,'26869 - Random Script 1'),
(20220,1,30001,20,'26869 - Random Script 2'),
(20220,1,30002,20,'26869 - Random Script 3'),
(20220,1,30003,10,'26869 - Random Script 4'),
(20220,1,30009,10,'26869 - Random Script 5');

-- Gorgonna 27102
-- missing spawn added
DELETE FROM creature_addon WHERE guid = 518311;
DELETE FROM creature_movement WHERE id = 518311;
DELETE FROM game_event_creature WHERE guid = 518311;
DELETE FROM game_event_creature_data WHERE guid = 518311;
DELETE FROM creature_battleground WHERE guid = 518311;
DELETE FROM creature_linking WHERE guid = 518311
 OR master_guid = 518311;
DELETE FROM creature WHERE guid = 518311;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518311,27102,571,1,1,0,0,3270.9053,-2197.24,117.45593,4.102,300,300,0,0,66934,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (518311);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(518311,0,0,1,0,0,0,49415);
-- spell req.
DELETE FROM spell_area WHERE spell = 49417 AND area = 4206;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(49417,4206,0,0,0,20261,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 20261;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20261, 8, 12431, 0, 0);
