-- Dungeon: The Nexus

-- Grand Magus Telestra
-- linked to her 3 copies
DELETE FROM creature_linking_template WHERE master_entry = 26731;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26928,576,26731,4096,255), -- FLAG_DESPAWN_ON_EVADE
(26929,576,26731,4096,255), -- FLAG_DESPAWN_ON_EVADE
(26930,576,26731,4096,255); -- FLAG_DESPAWN_ON_EVADE

-- Mage Hunter Ascendant
UPDATE creature SET position_x = 364.997711, position_y = 151.189407, position_z = -34.622726, orientation = 0.2, spawndist = 0, MovementType = 2 WHERE guid = 126455;
-- Mage Slayer
UPDATE creature_template SET SpeedWalk = 1 WHERE entry IN (26730,30473);
UPDATE creature SET position_x = 364.251282, position_y = 152.721436, position_z = -34.622726, orientation = 0.2, spawndist = 0, MovementType = 0 WHERE guid = 126474;
UPDATE creature SET position_x = 364.781952, position_y = 149.675323, position_z = -34.622726, orientation = 0.2, spawndist = 0, MovementType = 0 WHERE guid = 126475;
DELETE FROM creature_movement WHERE id = 126455;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126455,1,362.893,151.051,-34.4854,0,0,3.2807),
(126455,2,344.9,158.21,-29.3743,0,0,2.97675),
(126455,3,338.549,159.146,-29.2453,0,0,3.0278),
(126455,4,323.202,159.993,-23.6787,0,0,3.42286),
(126455,5,316.983,157.939,-23.5394,0,0,3.74251),
(126455,6,305.225,148.414,-18.9015,0,0,4.23574),
(126455,7,302.256,139.51,-17.7899,0,0,4.52084),
(126455,8,301.949,133.514,-15.7694,0,0,4.72897),
(126455,9,301.757,120.104,-16.6367,0,0,4.70148),
(126455,10,301.78,127.748,-15.7694,0,0,1.58737),
(126455,11,301.794,133.676,-15.7694,0,0,1.53632),
(126455,12,302.469,142.384,-18.4027,0,0,1.23237),
(126455,13,305.575,148.883,-19.0404,0,0,0.757208),
(126455,14,316.924,157.883,-23.5414,0,0,0.304818),
(126455,15,323.833,160.223,-23.8922,0,0,6.25735),
(126455,16,339.623,159.172,-29.352,0,0,6.23536),
(126455,17,344.812,158.099,-29.3656,0,0,6.05865),
(126455,18,362.573,150.844,-34.3731,0,0,0.26476),
(126455,19,364.986,151.125,-34.6227,0,0,0.136739);
-- links
DELETE FROM creature_linking WHERE master_guid = 126455;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126474, 126455, 1+512),
(126475, 126455, 1+512);

-- Mage Hunter Ascendant
UPDATE creature SET position_x = 483.906616, position_y = 151.573807, position_z = -34.464886, orientation = 3.03, spawndist = 0, MovementType = 2 WHERE guid = 126461;
-- Mage Slayer
UPDATE creature SET position_x = 484.380829, position_y = 153.796326, position_z = -34.439747, orientation = 3.03, spawndist = 0, MovementType = 0 WHERE guid = 126479;
UPDATE creature SET position_x = 483.704132, position_y = 149.134094, position_z = -34.392941, orientation = 3.03, spawndist = 0, MovementType = 0 WHERE guid = 126478;
DELETE FROM creature_movement WHERE id = 126461;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126461,1,464.556,154.74,-35.0204,0,0,2.97544),
(126461,2,482.979,151.464,-34.6232,0,0,0.114231),
(126461,3,502.67,158.525,-29.4013,0,0,0.334143),
(126461,4,507.786,158.844,-29.3808,0,0,0.0317644),
(126461,5,524.383,159.32,-23.5859,0,0,5.76281),
(126461,6,529.668,157.353,-23.5492,0,0,5.80444),
(126461,7,540.653,147.109,-18.7303,0,0,5.10151),
(126461,8,544.367,134.8,-16.968,0,0,4.98763),
(126461,9,553.491,102.61,-16.6384,0,0,4.71559),
(126461,10,544.511,134.323,-16.8281,0,0,1.82139),
(126461,11,540.809,146.84,-18.6927,0,0,2.28979),
(126461,12,530.381,156.777,-23.1997,0,0,2.69122),
(126461,13,524.046,159.461,-23.5843,0,0,2.86793),
(126461,14,507.678,158.861,-29.3791,0,0,3.17424),
(126461,15,501.479,158.274,-29.4009,0,0,3.50175),
(126461,16,484.07,151.558,-34.4125,0,0,3.47819);
-- links
DELETE FROM creature_linking WHERE master_guid = 126461;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126479, 126461, 1+512),
(126478, 126461, 1+512);

-- Mage Hunter Ascendant
UPDATE creature SET position_x = 630.295471, position_y = 77.511467, position_z = -20.383087, orientation = 5.2, spawndist = 0, MovementType = 2 WHERE guid = 126457;
-- Mage Slayer
UPDATE creature SET position_x = 628.112000, position_y = 77.212852, position_z = -20.384174, orientation = 5.2, spawndist = 0, MovementType = 0 WHERE guid = 126476;
UPDATE creature SET position_x = 632.327515, position_y = 79.084503, position_z = -20.314247, orientation = 5.2, spawndist = 0, MovementType = 0 WHERE guid = 126477;
DELETE FROM creature_movement WHERE id = 126457;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126457,1,636.669,55.7489,-21.643,0,0,4.9316),
(126457,2,630.127,77.7157,-20.376,0,0,2.05312),
(126457,3,622.979,86.6703,-20.0397,0,0,2.2259),
(126457,4,616.271,94.5165,-17.3573,0,0,2.34371),
(126457,5,605.901,106.377,-17.9771,0,0,2.87311),
(126457,6,597.431,108.425,-17.8067,0,0,3.31628),
(126457,7,591.402,106.528,-17.5597,0,0,3.47336),
(126457,8,587.649,105.042,-16.3916,0,0,4.20457),
(126457,9,580.983,93.9381,-16.6384,0,0,4.1421),
(126457,10,572.928,88.4297,-16.6384,0,0,3.74783),
(126457,11,581.315,94.1624,-16.6384,0,0,0.878768),
(126457,12,588.732,105.524,-16.2721,0,0,0.713834),
(126457,13,597.961,108.532,-17.8106,0,0,6.0711),
(126457,14,606.35,106.106,-17.9905,0,0,5.30377),
(126457,15,612.328,98.8926,-17.3573,0,0,5.46085),
(126457,16,616.502,94.5746,-17.3573,0,0,5.48441),
(126457,17,622.876,87.0866,-20.0014,0,0,5.42158),
(126457,18,630.529,77.568,-20.3802,0,0,5.27628);
-- links
DELETE FROM creature_linking WHERE master_guid = 126457;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126476, 126457, 1+512),
(126477, 126457, 1+512);

-- Mage Hunter Ascendant - static ones
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (126454,126458,126459,126460);

-- Crystal Spider
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (126426,126428,126432);

-- Groups of Alliance/Horde depending spawns
-- Cmangos req. feature to select correct group (alliance/horde) to spawn
-- well add only one group until this is possible
-- missing spawn added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 71182 AND 71191;
DELETE FROM creature_movement WHERE id BETWEEN 71182 AND 71191;
DELETE FROM creature_linking WHERE guid BETWEEN 71182 AND 71191;
DELETE FROM creature_linking WHERE master_guid BETWEEN 71182 AND 71191;
DELETE FROM creature WHERE guid BETWEEN 71182 AND 71191;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Alliance Ranger
(71182,26802,576,3,1,0,0,460.826,162.661,-35.0202,3.769911,3600,3600,0,0,37164,16155,0,0),
(71183,26802,576,3,1,0,0,442.812,176.398,-35.0201,4.276057,3600,3600,0,0,37164,16155,0,0),
-- Alliance Berserker
(71184,26800,576,3,1,0,0,408.059,187.066,-35.0195,5.009095,3600,3600,0,0,37164,0,0,0),
(71185,26800,576,3,1,0,0,450.258,175.462,-35.0202,4.118977,3600,3600,0,0,37164,0,0,0),
(71186,26800,576,3,1,0,0,460.961,147.602,-35.0204,3.455752,3600,3600,0,0,37164,0,0,0),
-- Alliance Cleric
(71187,26805,576,3,1,0,0,443.366,183.462,-35.0202,4.310963,3600,3600,0,0,37164,16155,0,0),
(71188,26805,576,3,1,0,0,428.6,189.332,-35.0199,4.607669,3600,3600,0,0,37164,16155,0,0),
(71189,26805,576,3,1,0,0,420.703,189.507,-35.0197,4.782202,3600,3600,0,0,37164,16155,0,0),
-- Alliance Commander (Normal mode only)
(71190,27949,576,1,1,0,0,424.547,185.962,-35.0198,4.48239,3600,3600,0,0,74328,0,0,0),
-- Commander Stoutbeard (Heroic mode only)
(71191,26796,576,2,1,0,0,424.547,185.962,-35.0198,4.48239,3600,3600,0,0,337025,0,0,0);
-- Addons corrected
-- Alliance Ranger 26802/Horde Ranger 26801
DELETE FROM creature_template_addon WHERE entry IN (26801,26802);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26801,0,0,1,0,333,0,47543),
(26802,0,0,1,0,333,0,47543);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (26801,26802));
-- Alliance Berserker 26800 / Horde Berserker 26799
DELETE FROM creature_template_addon WHERE entry IN (26799,26800);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26799,0,0,1,0,333,0,47543),
(26800,0,0,1,0,333,0,47543);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (26799,26800));
-- Alliance Cleric 26805 / Horde Cleric 26803
DELETE FROM creature_template_addon WHERE entry IN (26805,26803);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26805,0,0,1,0,375,0,47543),
(26803,0,0,1,0,375,0,47543);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (26805,26803));
-- Alliance Commander 27949 / Horde Commander 27947
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16 WHERE entry = 27947;
DELETE FROM creature_template_addon WHERE entry IN (27947,27949);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(27947,0,0,1,0,333,0,47543),
(27949,0,0,1,0,333,0,47543);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (27947,27949));
-- Commander Kolurg 26798/Commander Stoutbeard 26796
DELETE FROM creature_template_addon WHERE entry IN (26796,26798);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26796,0,0,1,0,333,0,47543),
(26798,0,0,1,0,333,0,47543);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (26796,26798));

-- Azure Enforcer
-- wrong spell removed from addon
UPDATE creature_addon SET auras = NULL WHERE guid = 126491;

-- Azure Scale-Binder
-- wrong spell removed from addon
UPDATE creature_addon SET auras = NULL WHERE guid = 126498;

-- Chaotic Rift
DELETE FROM creature_template_addon WHERE entry = 26918;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26918,0,0,1,0,0,0,'48019 47687 63577');
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26918);

-- Crazed Mana-Wrath
-- movement corrected
UPDATE creature_template SET MovementType = 1 WHERE entry = 26746; -- for summons
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id = 26746; -- for static spawns
-- Duplicates removed - these ones comes from spell 47692
DELETE FROM creature WHERE guid IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561);
DELETE FROM creature_addon WHERE guid IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561);
DELETE FROM creature_movement WHERE id IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561);
DELETE FROM game_event_creature WHERE guid IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561);
DELETE FROM game_event_creature_data WHERE guid IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561);
DELETE FROM creature_battleground WHERE guid IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561);
DELETE FROM creature_linking WHERE guid IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561)
 OR master_guid IN (126542,126539,126538,126568,126552,126574,126564,126548,126558,126545,126547,126544,126563,126573,126551,126557,126541,126562,126582,126556,
 126578,126567,126572,126579,126565,126583,126569,126575,126553,126559,126549,126525,126543,126540,126580,126554,126576,126550,126546,126555,126581,126571,126577,126566,126561);
-- positions corrected
UPDATE creature SET position_x = 686.036560, position_y = -185.174316, position_z = -29.015478, spawndist = 7, MovementType = 1 WHERE guid = 126529;
UPDATE creature SET position_x = 674.527954, position_y = -171.207123, position_z = -28.985048, spawndist = 7, MovementType = 1 WHERE guid = 126570;
UPDATE creature SET position_x = 686.375183, position_y = -168.980194, position_z = -28.981131, spawndist = 7, MovementType = 1 WHERE guid = 126560;
UPDATE creature SET position_x = 660.736267, position_y = -146.888550, position_z = -28.979431, spawndist = 7, MovementType = 1 WHERE guid = 126535;

-- Crazed Mana-Wyrm
DELETE FROM creature_template_addon WHERE entry = 26761;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26761,0,0,0,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26918);
-- 2 individual
DELETE FROM creature_addon WHERE guid IN (126587,126588);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(126587,0,0,0,0,0,0,29266),
(126588,0,0,0,0,0,0,29266);
UPDATE creature SET position_x = 702.458923, position_y = -109.657356, position_z = -3.192018, orientation = 1.547485 WHERE guid = 126594;
-- duplicates removed
DELETE FROM creature WHERE guid IN (126597,126590,126593,126598,126595,126596);
DELETE FROM creature_addon WHERE guid IN (126597,126590,126593,126598,126595,126596);
DELETE FROM creature_movement WHERE id IN (126597,126590,126593,126598,126595,126596);
DELETE FROM game_event_creature WHERE guid IN (126597,126590,126593,126598,126595,126596);
DELETE FROM game_event_creature_data WHERE guid IN (126597,126590,126593,126598,126595,126596);
DELETE FROM creature_battleground WHERE guid IN (126597,126590,126593,126598,126595,126596);
DELETE FROM creature_linking WHERE guid IN (126597,126590,126593,126598,126595,126596)
 OR master_guid IN (126597,126590,126593,126598,126595,126596);

-- Azure Skyrazor
DELETE FROM creature_template_addon WHERE entry = 26736;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26736,0,0,0,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26736);
-- individual
DELETE FROM creature_addon WHERE guid IN (126505,126506);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(126505,0,0,0,0,0,0,29266),
(126506,0,0,0,0,0,0,29266);

-- Crystalline Protector
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 126617;
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid IN (126614,126610);

-- Crystalline Frayer
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id = 26793;

-- Crystalline Keeper / Crystalline Tender
-- They're spawned in groups (linked)

-- Group 1: 2 Crystalline Keepers + Crystalline Tender
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 126603;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (126443,126604);
DELETE FROM creature_movement WHERE id = 126603;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126603,1,450.23,-174.61,-14.0888,0,0,3.08299),
(126603,2,438.457,-175.49,-14.0888,0,0,3.21651),
(126603,3,428.303,-176.987,-14.0888,0,0,3.41679),
(126603,4,418.639,-180.035,-14.0888,0,0,3.60528),
(126603,5,411.897,-184.733,-14.0888,0,0,4.15742),
(126603,6,409.866,-190.709,-14.0888,0,0,4.5681),
(126603,7,410.166,-201.87,-14.0888,0,0,4.81785),
(126603,8,408.891,-192.731,-14.0888,0,0,1.42352),
(126603,9,412.075,-184.712,-14.0888,0,0,0.968773),
(126603,10,417.788,-179.683,-14.0888,0,0,0.513242),
(126603,11,428.489,-176.114,-14.0888,0,0,0.28155),
(126603,12,440.214,-174.92,-14.0888,0,0,0.0891269),
(126603,13,450.437,-174.627,-14.0888,0,0,6.11706),
(126603,14,457.875,-177.315,-14.0888,0,0,5.86432);
-- links
DELETE FROM creature_linking WHERE master_guid = 126603;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126443, 126603, 1+512),
(126604, 126603, 1+512);

-- Group 2: 2 Crystalline Keepers + Crystalline Tender
-- missing one added -- removed guid reused
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(126542,26782,576,1,1,0,0,433.286,-276.671,-14.0888,2.5096,3600,3600,0,0,37164,0,0,0);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 126609;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 126447;
DELETE FROM creature_movement WHERE id = 126609;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126609,1,424.117,-268.788,-14.0888,0,0,2.53028),
(126609,2,417.098,-264.393,-14.5316,0,0,2.5185),
(126609,3,413.192,-257.666,-14.0888,0,0,2.05118),
(126609,4,409.222,-250.395,-14.0888,0,0,2.13365),
(126609,5,405.865,-241.681,-14.0888,0,0,1.792),
(126609,6,408.403,-232.496,-14.0888,0,0,1.41894),
(126609,7,413.011,-224.781,-14.5316,0,0,0.910862),
(126609,8,421.665,-220.931,-14.0888,0,0,0.180442),
(126609,9,440.855,-219.046,-14.0888,0,0,0.0901208),
(126609,10,453.932,-217.631,-14.0888,0,0,0.439623),
(126609,11,440.56,-219.09,-14.0888,0,0,3.23957),
(126609,12,421.772,-221.121,-14.0888,0,0,3.56944),
(126609,13,412.841,-224.74,-14.5316,0,0,3.95821),
(126609,14,408.486,-232.613,-14.0888,0,0,4.50453),
(126609,15,409.281,-250.317,-14.0888,0,0,4.99643),
(126609,16,416.351,-263.94,-14.5316,0,0,5.46766),
(126609,17,425.793,-269.94,-14.0888,0,0,5.74647),
(126609,18,438.126,-277.096,-14.0888,0,0,5.75433),
(126609,19,448.684,-284.39,-14.0888,0,0,5.6051),
(126609,20,431.844,-273.621,-14.0888,0,0,2.56954);
-- links
DELETE FROM creature_linking WHERE master_guid = 126609;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126447, 126609, 1+512),
(126542, 126609, 1+512);

-- Group 3: 2 Crystalline Keepers + 2 Crystalline Tenders
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 126441;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (126601,126442,126602);
DELETE FROM creature_movement WHERE id = 126441;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126441,1,369.71,-182.064,-14.0877,0,0,2.96742),
(126441,2,402.914,-190.467,-14.0877,0,0,6.02654);
-- links
DELETE FROM creature_linking WHERE master_guid = 126441;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126601, 126441, 1+512),
(126442, 126441, 1+512),
(126602, 126441, 1+512);

-- Group 4: Crystalline Keeper + Crystalline Tender
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 126600;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 126440;
DELETE FROM creature_movement WHERE id = 126600;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126600,1,345.226,-180.203,-14.5042,0,0,2.97704),
(126600,2,337.596,-176.205,-14.2833,0,0,2.50188),
(126600,3,331.599,-171.378,-14.384,0,0,2.36443),
(126600,4,317.305,-162.238,-14.582,0,0,2.56863),
(126600,5,309.758,-153.679,-14.8237,0,0,2.1563),
(126600,6,331.202,-170.977,-14.3924,0,0,5.61205),
(126600,7,340.787,-180.057,-14.172,0,0,6.09664),
(126600,8,349.336,-181.933,-14.5042,0,0,0.0632021),
(126600,9,363.173,-175.22,-14.0888,0,0,0.597273),
(126600,10,356.528,-178.94,-14.0888,0,0,3.53859);
-- links
DELETE FROM creature_linking WHERE master_guid = 126600;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126440, 126600, 1+512);

-- Group 5: Crystalline Keeper + Crystalline Tender
UPDATE creature SET orientation = 0.46, spawndist = 0, MovementType = 0 WHERE guid = 126607;
UPDATE creature SET position_x = 405.006500, position_y = -315.269592, position_z = -14.088806, orientation = 0.46, spawndist = 0, MovementType = 2 WHERE guid = 126446;
UPDATE creature SET position_x = 404.665771, position_y = -317.481049, position_z = -14.088806, orientation = 0.46, spawndist = 0, MovementType = 0 WHERE guid = 126608;
DELETE FROM creature_movement WHERE id = 126446;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126446,1,411.343,-310.907,-14.5316,0,0,0.962368),
(126446,2,413.539,-303.651,-14.0893,0,0,1.52393),
(126446,3,413.524,-292.677,-14.0893,0,0,1.5632),
(126446,4,413.784,-281.13,-14.0893,0,0,1.52785),
(126446,5,413.196,-293.273,-14.0893,0,0,4.68908),
(126446,6,413.614,-303.968,-14.0893,0,0,4.67337),
(126446,7,409.438,-312.388,-14.5316,0,0,4.05684),
(126446,8,404.154,-315.5,-14.0888,0,0,3.51492),
(126446,9,394.125,-318.054,-14.0888,0,0,3.33428),
(126446,10,377.377,-320.3,-14.0888,0,0,3.23218),
(126446,11,366.408,-320.64,-14.0888,0,0,2.94551),
(126446,12,356.29,-315.13,-14.1828,0,0,2.3329),
(126446,13,350.516,-303.65,-14.0888,0,0,1.99125),
(126446,14,344.149,-290.194,-14.0888,0,0,2.03052),
(126446,15,337.687,-281.253,-14.0888,0,0,2.33682),
(126446,16,328.755,-273.645,-14.0888,0,0,2.62742),
(126446,17,318.669,-268.774,-14.0888,0,0,2.76879),
(126446,18,306.266,-261.933,-14.0888,0,0,2.72952),
(126446,19,322.557,-270.995,-14.0888,0,0,5.84362),
(126446,20,330.998,-275.176,-14.0888,0,0,5.68261),
(126446,21,338.263,-282.112,-14.0888,0,0,5.54124),
(126446,22,345.078,-292.806,-14.0888,0,0,5.23494),
(126446,23,350.757,-304.051,-14.0888,0,0,5.20352),
(126446,24,356.685,-315.101,-14.0888,0,0,5.66926),
(126446,25,367.071,-320.677,-14.0888,0,0,6.15228),
(126446,26,385.803,-319.651,-14.0888,0,0,0.12827),
(126446,27,404.057,-315.66,-14.0888,0,0,0.292592);
-- links
DELETE FROM creature_linking WHERE master_guid = 126446;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126607, 126446, 1+512),
(126608, 126446, 1+512);

-- Group 6: 2 Crystalline Keepers + 2 Crystalline Tenders
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 126444;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 126445;
UPDATE creature SET position_x = 254.349884, position_y = -239.190414, position_z = -8.412683, orientation = 2.44, spawndist = 0, MovementType = 0 WHERE guid = 126606;
UPDATE creature SET position_x = 253.081985, position_y = -240.520981, position_z = -8.254071, orientation = 2.44, spawndist = 0, MovementType = 0 WHERE guid = 126605;
DELETE FROM creature_movement WHERE id = 126444;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(126444,1,244.022,-231.343,-8.25407,0,0,2.4171),
(126444,2,240.212,-224.906,-8.25407,0,0,1.68825),
(126444,3,243.513,-216.012,-8.25407,0,0,0.90311),
(126444,4,251.637,-210.095,-8.25407,0,0,0.467214),
(126444,5,263.128,-206.445,-8.25402,0,0,0.231594),
(126444,6,271.602,-207.412,-8.32406,0,0,5.8197),
(126444,7,281.243,-215.66,-8.25405,0,0,5.35633),
(126444,8,286.645,-226.934,-8.25405,0,0,5.21888),
(126444,9,292.497,-235.151,-10.2541,0,0,5.69404),
(126444,10,303.969,-240.576,-14.0888,0,0,5.97094),
(126444,11,311.473,-239.994,-14.0888,0,0,0.13855),
(126444,12,316.485,-240.073,-14.0888,0,0,6.01726),
(126444,13,322.435,-245.491,-14.0888,0,0,5.34575),
(126444,14,322.323,-253.271,-14.0888,0,0,4.34437),
(126444,15,311.76,-251.457,-14.0888,0,0,2.6322),
(126444,16,304.813,-241.001,-14.0888,0,0,2.86547),
(126444,17,289.847,-235.171,-9.50793,0,0,2.82228),
(126444,18,283.394,-237.732,-8.25404,0,0,3.81188),
(126444,19,272.249,-245.941,-8.25404,0,0,3.44039),
(126444,20,262.671,-246.96,-8.25404,0,0,2.73431),
(126444,21,251.869,-239.419,-8.25404,0,0,2.37303);
-- links
DELETE FROM creature_linking WHERE master_guid = 126444;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126445, 126444, 1+512),
(126605, 126444, 1+512),
(126606, 126444, 1+512);
