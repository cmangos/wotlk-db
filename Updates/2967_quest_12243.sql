-- q.12243 'Fire Upon the Waters'

-- missing added
DELETE FROM creature_addon WHERE guid IN (517407,517408,517409);
DELETE FROM creature_movement WHERE id IN (517407,517408,517409);
DELETE FROM game_event_creature WHERE guid IN (517407,517408,517409);
DELETE FROM game_event_creature_data WHERE guid IN (517407,517408,517409);
DELETE FROM creature_battleground WHERE guid IN (517407,517408,517409);
DELETE FROM creature_linking WHERE guid IN (517407,517408,517409)
 OR master_guid IN (517407,517408,517409);
DELETE FROM creature WHERE guid IN (517407,517408,517409);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517407,24288,571,1,1,0,0,2457.33,-399.852,27.0748,3.11929,300,300,0,0,42,0,0,0),
(517408,24288,571,1,1,0,0,2455.3,-400.963,45.208,2.90501,300,300,0,0,42,0,0,0),
(517409,24288,571,1,1,0,0,2488.64,-399.817,31.9425,3.27022,300,300,0,0,42,0,0,0);
-- Fire Upon the Waters Kill Credit Bunny 28013
UPDATE creature_template SET InhabitType = 4 WHERE entry = 28013;
DELETE FROM creature_template_addon WHERE entry = 28013;
INSERT INTO creature_template_addon VALUES
(28013,0,0,1,0,0,0,48522);
-- quest script
DELETE FROM dbscripts_on_spell WHERE id = 48455;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48455,1,8,28013,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(48455,2,31,28013,70,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 28013 - terminate if alive'),
(48455,3,10,28013,120000,0,0,0,0,0,0,0,0,2457.35,-389.165,21.6233,3.18296,''),
(48455,4,10,28013,120000,0,0,0,0,0,0,0,0,2456.48,-389.184,31.3597,3.08479,''),
(48455,5,10,28013,120000,0,0,0,0,0,0,0,0,2457.85,-397.249,30.8027,3.06515,''),
(48455,6,10,28013,120000,0,0,0,0,0,0,0,0,2457.2,-404.667,29.8888,3.1005,''),
(48455,7,10,28013,120000,0,0,0,0,0,0,0,0,2456.15,-412.665,28.9309,3.04945,''),
(48455,8,10,28013,120000,0,0,0,0,0,0,0,0,2455.71,-403.589,40.2183,3.29528,''),
(48455,9,10,28013,120000,0,0,0,0,0,0,0,0,2455.32,-396.008,42.0208,3.23637,''),
(48455,10,10,28013,120000,0,0,0,0,0,0,0,0,2454.64,-398.077,50.2872,3.1382,''),
(48455,11,10,28013,120000,0,0,0,0,0,0,0,0,2454.43,-404.435,47.864,3.08715,''),
(48455,12,10,28013,120000,0,0,0,0,0,0,0,0,2462.44,-401.546,19.5241,6.21695,''),
(48455,13,10,28013,120000,0,0,0,0,0,0,0,0,2465.44,-402.006,19.6897,6.13449,''),
(48455,14,10,28013,120000,0,0,0,0,0,0,0,0,2468.44,-402.456,20.6473,6.13449,''),
(48455,15,10,28013,120000,0,0,0,0,0,0,0,0,2471.36,-403.298,22.3098,5.96956,''),
(48455,16,10,28013,120000,0,0,0,0,0,0,0,0,2474.51,-404.171,24.5753,6.04417,''),
(48455,17,10,28013,120000,0,0,0,0,0,0,0,0,2477.23,-404.844,27.5465,6.04417,''),
(48455,18,10,28013,120000,0,0,0,0,0,0,0,0,2480.22,-405.061,30.8544,6.04417,''),
(48455,19,10,28013,120000,0,0,0,0,0,0,0,0,2481.99,-405.675,33.2213,6.0049,''),
(48455,20,10,28013,120000,0,0,0,0,0,0,0,0,2484.03,-406.369,36.0373,6.03239,''),
(48455,21,10,28013,120000,0,0,0,0,0,0,0,0,2460.73,-399.391,20.187,0.511033,''),
(48455,22,10,28013,120000,0,0,0,0,0,0,0,0,2463.22,-398.395,21.2276,0.381442,''),
(48455,23,10,28013,120000,0,0,0,0,0,0,0,0,2465.39,-397.524,22.7233,0.381442,''),
(48455,24,10,28013,120000,0,0,0,0,0,0,0,0,2467.17,-396.953,23.8787,0.310756,''),
(48455,25,10,28013,120000,0,0,0,0,0,0,0,0,2470.06,-396.05,25.6931,0.298975,''),
(48455,26,10,28013,120000,0,0,0,0,0,0,0,0,2473,-395.308,28.8442,0.220435,''),
(48455,27,10,28013,120000,0,0,0,0,0,0,0,0,2475.99,-394.98,31.9411,0.126187,''),
(48455,28,10,28013,120000,0,0,0,0,0,0,0,0,2478.77,-394.423,36.4579,0.204727,''),
(48455,29,10,28013,120000,0,0,0,0,0,0,0,0,2481.03,-394.068,40.4844,0.12226,''),
(48455,30,10,28013,120000,0,0,0,0,0,0,0,0,2483.09,-393.952,44.3102,0.12226,''),
(48455,31,10,28013,120000,0,0,0,0,0,0,0,0,2488.87,-395.532,27.699,3.18533,''),
(48455,32,10,28013,120000,0,0,0,0,0,0,0,0,2485.02,-397.19,37.2156,3.20889,''),
(48455,33,10,28013,120000,0,0,0,0,0,0,0,0,2487.76,-403.354,34.7235,3.24031,''),
(48455,34,10,28013,120000,0,0,0,0,0,0,0,0,2490.06,-404.417,26.4677,3.14606,''),
(48455,35,10,28013,120000,0,0,0,0,0,0,0,0,2459.04,-403.444,22.369,1.32337,''),
(48455,36,10,28013,120000,0,0,0,0,0,0,0,0,2458.03,-411.982,21.1437,1.58648,''),
(48455,37,10,28013,120000,0,0,0,0,0,0,0,0,2458.44,-395.254,23.6981,3.12515,''),
(48455,100,10,24110,110000,0,0,0,0,0,0,0,0,2479.72,-400.369,13.4741,3.17237,'npcs controler'),
(48455,200,20,2,1,0,24110,100,7,0,0,0,0,0,0,0,0,'npcs controler - set pathid = 1');
-- target for 48490
DELETE FROM spell_script_target WHERE entry IN (48490,48526);
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(48490,1,28013,0),
(48526,1,27233,0);
-- ELM General Purpose Bunny Large - npcs controler
DELETE FROM creature_movement_template WHERE entry = 24110;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(24110,1,1,3217.295,-701.342,167.539,0.2443461,120000,2411002); -- 2411001 used already
DELETE FROM dbscripts_on_creature_movement WHERE id = 2411002;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2411002,0,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 5');

-- Part of Onslaught Deckhand EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20336);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20336,1,31,24110,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Deckhand EAI: search for 24110'),
(20336,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onslaught Deckhand EAI: Run ON'),
(20336,100,37,0,0,0,24110,100,1,0,0,0,0,0,0,0,0,'Part of Onslaught Deckhand EAI: move towards target'),
(20336,4000,20,1,7,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of Onslaught Deckhand EAI: random movement');
-- resret missing
