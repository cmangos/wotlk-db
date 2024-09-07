-- The Skybreaker - Icecrown

-- missing creatures added 
-- these ones makes transports visible on minimap
DELETE FROM creature_addon WHERE guid IN (6220070,6230081);
DELETE FROM creature_movement WHERE id IN (6220070,6230081);
DELETE FROM game_event_creature WHERE guid IN (6220070,6230081);
DELETE FROM game_event_creature_data WHERE guid IN (6220070,6230081);
DELETE FROM creature_battleground WHERE guid IN (6220070,6230081);
DELETE FROM creature_linking WHERE guid IN (6220070,6230081);
DELETE FROM creature where guid IN (6220070,6230081);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Orgrim's Hammer 30342
(6220070, 30342, 622, 1, 1,23.432428,0.020079,33.579506,3.106686,300,300,0,0),
-- The Skybreaker 30343
(6230081, 30343, 623, 1, 1,5.240269,0.25788,20.869116,3.159046,300,300,0,0);
-- Navigator Anderlain 30392
UPDATE creature_template SET UnitFlags = 0 WHERE entry = 30392;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 30392);
DELETE FROM creature_template_addon WHERE entry IN (30392);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30392,0,0,0,0,0,0,NULL);
-- Navigator Dobbs 30347
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 30347);
DELETE FROM creature_template_addon WHERE entry IN (30347);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30347,0,0,0,0,0,0,NULL);
-- Chief Officer Leonards 30350
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 30350);
DELETE FROM creature_template_addon WHERE entry IN (30350);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30350,0,0,0,0,0,0,NULL);
-- Thassarian 29799
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29799);
DELETE FROM creature_template_addon WHERE entry IN (29799);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29799,0,0,0,0,0,0,NULL);
-- High Captain Justin Bartlett 30344
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 30344);
DELETE FROM creature_template_addon WHERE entry IN (30344);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30344,0,0,0,1,0,0,NULL);
DELETE FROM creature_questrelation WHERE quest IN (13317); -- not available in 3.3.x (maybe was during wotlk beta)
-- Absalan the Pious 31259
UPDATE creature SET position_x = 36.03125, position_y = 40.45996, position_z = 25.032227, movementtype = 2, spawndist = 0 WHERE id = 31259;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31259;
DELETE FROM creature_movement_template WHERE Entry = 31259;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31259,1 ,36.03125,40.45996,25.032227,100,0,0),
(31259,2 ,42.86328,38.39746,25.035522,100,0,0),
(31259,3 ,43.387207,13.015381,40.14966,100,0,0),
(31259,4 ,43.466797,-10.491455,40.436096,100,0,0),
(31259,5 ,43.288086,-33.447998,25.42279,100,0,0),
(31259,6 ,41.141113,-42.0625,25.034363,100,0,0),
(31259,7 ,35.072266,-25.8833,25.036377,100,0,0),
(31259,8 ,21.955566,-24.119873,22.472046,100,0,0),
(31259,9 ,16.964355,-18.411865,20.549194,100,0,0),
(31259,10,9.681641,-8.688232,20.518982,100,0,0),
(31259,11,9.254883,4.6862793,20.486084,100,0,0),
(31259,12,17.853516,18.583984,20.57367,100,0,0),
(31259,13,22.04834,22.752197,22.085083,100,0,0),
(31259,14,28.72168,24.986816,24.415955,100,0,0),
(31259,15,35.53125,26.030518,25.020996,100,0,0);
DELETE FROM dbscript_random_templates WHERE id = 20366;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20366,0,31923,0,'Part of Absalan the Pious 31259 EAI - Random Say OOC 1'),
(20366,0,31924,0,'Part of Absalan the Pious 31259 EAI - Random Say OOC 2'),
(20366,0,31925,0,'Part of Absalan the Pious 31259 EAI - Random Say OOC 3'),
(20366,0,31926,0,'Part of Absalan the Pious 31259 EAI - Random Say OOC 4'),
(20366,0,31927,0,'Part of Absalan the Pious 31259 EAI - Random Say OOC 5'),
(20366,0,31928,0,'Part of Absalan the Pious 31259 EAI - Random Say OOC 6'),
(20366,0,31929,0,'Part of Absalan the Pious 31259 EAI - Random Say OOC 7');
-- Knight-Captain Drosche 32302
UPDATE creature SET position_x = 54.591797, position_y = 6.6220703, position_z = 40.090088, movementtype = 2, spawndist = 0 WHERE id = 32302;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 32302;
DELETE FROM creature_movement_template WHERE Entry = 32302;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32302,1,54.591797,6.6220703,40.090088,100,0,0),
(32302,2,54.591797,6.6220703,40.090088,3.1241,25000,0),
(32302,3,54.521484,-0.083496094,40.090027,100,0,0),
(32302,4,54.20508,-6.822754,40.08966,100,0,0),
(32302,5,54.20508,-6.822754,40.08966,3.159,25000,0),
(32302,6,55.04004,0.07836914,40.090576,100,0,0);
-- Skybreaker Deckhand 30351
DELETE FROM dbscripts_on_relay WHERE id IN (20982);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20982,2000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Skybreaker Deckhand 30351 EAI: emote'),
(20982,20000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Skybreaker Deckhand 30351 EAI: reset emote');
-- individual
UPDATE creature SET position_x = -3.7216797, position_y = -9.791992, position_z = 20.449036, orientation = 2.617, movementtype = 4, spawndist = 0 WHERE guid = 6230036; -- linear
DELETE FROM creature_movement WHERE id = 6230036;
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(6230036,1 ,-3.7216797,-9.791992,20.449036,100,25000,3035101),
(6230036,2 ,-5.34375,-10.37915,20.741394,100,0,0),
(6230036,3 ,-3.84375,-13.87915,20.741394,100,0,0),
(6230036,4 ,4.65625,-12.87915,21.241394,100,0,0),
(6230036,5 ,10.90625,-7.8791504,20.991394,100,0,0),
(6230036,6 ,12.15625,8.62085,20.991394,100,0,0),
(6230036,7 ,16.65625,17.12085,20.991394,100,0,0),
(6230036,8 ,23.90625,25.12085,22.991394,100,0,0),
(6230036,9 ,35.15625,25.62085,25.241394,100,0,0),
(6230036,10,36.15625,33.12085,25.241394,100,0,0),
(6230036,11,37.65625,38.62085,25.241394,100,0,0),
(6230036,12,41.15625,40.37085,25.241394,100,0,0),
(6230036,13,42.90625,43.12085,25.241394,100,0,0),
(6230036,14,40.53418,45.03369,25.033752,100,25000,3035101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3035101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3035101,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Skybreaker Deckhand 30351 EAI: RUN ON'),
(3035101,2000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Skybreaker Deckhand 30351 EAI: emote'),
(3035101,20000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Skybreaker Deckhand 30351 EAI: reset emote');
DELETE FROM creature_spawn_data WHERE guid IN(6230036);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(6230036,80);
-- Skybreaker Engineer 30394
UPDATE creature SET position_x = -57.66162, position_y = -6.0041504, position_z = 23.54663, orientation = 4.9567, movementtype = 4, spawndist = 0 WHERE guid = 6230023; -- linear
DELETE FROM creature_movement WHERE id = 6230023;
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(6230023,1,-57.914062,6.1088862,23.440796,100,23000,3039401),
(6230023,2,-57.78784,1.8023679,23.493713,100,0,0),
(6230023,3,-57.78784,1.0523679,23.743713,100,0,0),
(6230023,4,-57.78784,0.052367926,23.743713,100,0,0),
(6230023,5,-57.66162,-6.0041504,23.54663,100,0,0),
(6230023,6,-57.66162,-6.0041504,23.54663,4.9567,23000,3039401);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3039401);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3039401,1000,1,69,0,0,0,0,0x04,233,0,0,0,0,0,0,0,'Part of Skybreaker Deckhand 30351 EAI: random emote'),
(3039401,19000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Skybreaker Deckhand 30351 EAI: reset emote');
-- Skybreaker Marine 30352
UPDATE creature_template SET Faction = 1891 WHERE Entry = 30352;
DELETE FROM creature_template_addon WHERE entry IN (30352);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30352,0,0,1,1,0,0,NULL);
