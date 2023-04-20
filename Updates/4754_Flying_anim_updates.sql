-- Generic Relay
DELETE FROM dbscripts_on_creature_movement WHERE id IN (30601);
DELETE FROM dbscripts_on_relay WHERE id IN (30601);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30601,0,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'GENERIC - FLY ANIM ON - RUN ON');
-- for generic creature_spawn_data_template
DELETE FROM creature_spawn_data_template WHERE entry = 20056;
INSERT INTO creature_spawn_data_template (`Entry`, `SpawnFlags`, `RelayId`) VALUES 
(20056,3,30601);

-- Creatures
-- Nerub'ar Corpse Harvester 25445
DELETE FROM creature_spawn_data WHERE guid BETWEEN 509390 AND 509404;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(509390,20056),(509391,20056),(509392,20056),(509393,20056),(509394,20056),
(509395,20056),(509396,20056),(509397,20056),(509398,20056),(509399,20056),
(509400,20056),(509401,20056),(509402,20056),(509403,20056),(509404,20056);

-- Nexus Watcher 24770
UPDATE creature SET MovementType = 3 WHERE id = 24770;
DELETE FROM creature_spawn_data WHERE guid BETWEEN 507217 AND 507228;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(507217,20056),(507218,20056),(507219,20056),(507220,20056),(507221,20056),
(507222,20056),(507223,20056),(507224,20056),(507225,20056),(507226,20056),
(507227,20056),(507228,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (SELECT guid FROM creature WHERE id = 24770);

-- Dragonflayer Raider 23557
UPDATE creature SET MovementType = 3 WHERE id = 23557;
DELETE FROM creature_spawn_data WHERE guid BETWEEN 501157 AND 501161;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(501157,20056),(501158,20056),(501159,20056),(501160,20056),(501161,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (SELECT guid FROM creature WHERE id = 23557);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2355701;

-- Plagued Proto-Dragon 23680
UPDATE creature SET MovementType = 3 WHERE id = 23680;
DELETE FROM creature_spawn_data WHERE guid BETWEEN 501826 AND 501827;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(501826,20056),(501827,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (SELECT guid FROM creature WHERE id = 23680);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2368001;

-- Proto-Drake 23689
UPDATE creature SET MovementType = 3 WHERE id = 23689;
DELETE FROM creature_spawn_data WHERE guid BETWEEN 501855 AND 501860;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(501855,20056),(501856,20056),(501857,20056),(501858,20056),(501859,20056),(501860,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (SELECT guid FROM creature WHERE id = 23689);

-- Reanimated Frost Wyrm 26841
UPDATE creature SET MovementType = 3 WHERE id = 26841;
DELETE FROM creature_spawn_data WHERE guid BETWEEN 515922 AND 515935;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(515922,20056),(515923,20056),(515924,20056),(515925,20056),(515926,20056),
(515927,20056),(515928,20056),(515929,20056),(515930,20056),(515931,20056),
(515932,20056),(515933,20056),(515934,20056),(515935,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (SELECT guid FROM creature WHERE id = 26841);

-- Wyrmrest Guardian 26933
UPDATE creature SET MovementType = 3 WHERE id = 26933 AND MovementType = 2;
DELETE FROM creature_spawn_data WHERE guid IN (516075,516078,516082,516084,516086,516087,516088,516089,516090,516091,516092);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(516075,20056),(516078,20056),(516082,20056),(516084,20056),(516086,20056),
(516087,20056),(516088,20056),(516089,20056),(516090,20056),(516091,20056),
(516092,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (516075,516078,516082,516084,516086,516087,516088,516089,516090,516091,516092);

-- Wyrmrest Guardian 27608
UPDATE creature SET MovementType = 3 WHERE id = 27608;
DELETE FROM creature_spawn_data WHERE guid IN (519188,519191,519193,519194,519206,519208,519209,519210,519211,519212,519216,519221,519222,519226,519227);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(519188,20056),(519191,20056),(519193,20056),(519194,20056),(519206,20056),
(519208,20056),(519209,20056),(519210,20056),(519211,20056),(519212,20056),
(519216,20056),(519221,20056),(519222,20056),(519226,20056),(519227,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (SELECT guid FROM creature WHERE id = 27608);

-- Nexus Guardian 26276
DELETE FROM creature_spawn_data WHERE guid IN (512748,512747);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(512748,20056),(512747,20056);

-- Emberwyrm 26286
UPDATE creature SET MovementType = 3 WHERE id = 26286;
DELETE FROM creature_spawn_data WHERE guid IN (512960,512961,512962);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(512960,20056),(512961,20056),(512962,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (SELECT guid FROM creature WHERE id = 26286);

-- Ruby Keeper 27530
UPDATE creature SET MovementType = 2 WHERE guid = 518769;
DELETE FROM creature_spawn_data WHERE guid IN (518769);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(518769,20056);
UPDATE creature_movement SET WaitTime = 0, ScriptId = 0 WHERE Id IN (518769);

-- Wyrmrest Defender 27629
UPDATE creature_template SET UnitFlags = 0 WHERE entry = 27629;
DELETE FROM creature_spawn_data_template WHERE entry = 20057;
INSERT INTO creature_spawn_data_template (`Entry`, `UnitFlags`,`SpawnFlags`, `RelayId`) VALUES 
(20057,768,3,30601);
DELETE FROM creature_spawn_data WHERE guid BETWEEN 519281 AND 519290;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(519281,20057),(519282,20057),(519283,20057),(519284,20057),(519285,20057),
(519286,20057),(519287,20057),(519288,20057),(519289,20057),(519290,20057);

-- Vhel'kur 21801
UPDATE creature SET MovementType = 3 WHERE id = 21801;
DELETE FROM creature_spawn_data WHERE guid IN (76114);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(76114,20056);
UPDATE creature_movement_template SET WaitTime = 0, ScriptId = 0 WHERE entry IN (21801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2180101;

-- Insidion 23281
DELETE FROM creature_spawn_data WHERE guid IN (160764);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160764,20056);

-- Furywing 23261
DELETE FROM creature_spawn_data WHERE guid IN (160763);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160763,20056);

-- Rivendark 23061
DELETE FROM creature_spawn_data WHERE guid IN (160762);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160762,20056);

-- Obsidia 23282
DELETE FROM creature_spawn_data WHERE guid IN (160762);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160761,20056);
