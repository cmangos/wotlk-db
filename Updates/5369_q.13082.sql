-- q.13082 'The Boon of A'dal'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13082);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13082,1,15,53141,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 53141');
DELETE FROM dbscripts_on_quest_end WHERE id IN (13082);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13082,1,31,30691,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for 30691 - terminate if alive'),
(13082,500,15,57787,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Cast 57787'), -- 22:17:15.352
(13082,501,15,57746,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast 57746'), -- 22:17:15.352
(13082,502,15,57782,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 57782'), -- 22:17:15.352
(13082,503,15,57786,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 57786'), -- 22:17:15.352
(13082,504,15,57773,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 57773'); -- 22:17:15.352
UPDATE quest_template SET StartScript = 13082, CompleteScript = 13082 WHERE entry IN (13082);
DELETE FROM spell_target_position WHERE Id IN(53141,57747,57746,57782,57786,57773);
INSERT INTO spell_target_position VALUES
(53141,571,5807.75,588.347,661.505,1.72201),
(57747,571,8138.4,436.835,574.636,2.3795499),
(57746,571,8152.51,407.96,596.347,1.99079),
(57782,571,8134.81,416.529,588.223,1.99079),
(57786,571,8156.95,429.846,591.186,1.99079),
(57773,571,8138.4,436.835,574.636,2.3795);
DELETE FROM dbscripts_on_spell WHERE id IN (57787);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(57787,0,15,57747,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 57747'); -- 22:17:15.352
-- Spirit of Bridenbrad 30694
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 2, Faction = 1610, UnitFlags = 32776, MovementType = 2 WHERE entry = 30694;
DELETE FROM creature_template_addon WHERE entry IN (30694);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30694,0,3,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 30694;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(30694,1,8138.4,436.835,574.7193,2.37955,12000,3069401),
(30694,2,8138.1475,437.076,594.71625,100,100,10),
(30694,3,8138.1475,437.076,594.71625,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3069401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3069401,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(3069401,2000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'), -- 22:17:19.938
(3069401,2100,15,57771,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 57771'), -- 22:17:19.938
(3069401,7000,15,57764,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 57764'), -- 22:17:23.167
(3069401,7001,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'fly on');
-- Bridenbrad Light Bunny 30712
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 2, Faction = 1610, UnitFlags = 33554440 WHERE entry = 30712;
-- M'ori 30692
-- K'uri 30693
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 2, Faction = 1610, UnitFlags = 264, InhabitType = 4 WHERE entry IN (30692,30693);
-- A'dal 30691
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 2, Faction = 1610, UnitFlags = 264, InhabitType = 4, MovementType = 2 WHERE entry IN (30691);
DELETE FROM creature_movement_template WHERE entry = 30691;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(30691,1,8152.51,407.96,596.4303,1.99079,0,0),
(30691,2,8142.45,426.927,576.909,100,60000,3069101);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3069101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3069101,1,0,0,0,0,0,0,0,31434,0,0,0,0,0,0,0,''),
(3069101,6000,0,0,0,0,0,0,0,31435,0,0,0,0,0,0,0,''),
(3069101,14000,0,0,0,0,0,0,0,31436,0,0,0,0,0,0,0,''),
(3069101,27000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE spell_area SET quest_end = 13082 WHERE spell = 57745;
