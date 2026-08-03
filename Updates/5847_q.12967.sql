-- q.12967 'Battling the Elements'

-- Phase Shift 2: Frost Giants - Area added
DELETE FROM spell_area WHERE spell = 55858 AND area IN (4495,4442);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(55858,4495,12956,0,12924,0,0,0,2,1),
(55858,4442,12956,0,0,0,0,0,2,1);
-- Fjorn's Anvil - See Quest Invisibility 3 
DELETE FROM spell_area WHERE spell = 61209;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(61209,4495,12966,0,12924,0,-55962,0,2,1);
-- Phase Shift 3: Fjorn's Anvil - Req q.12924 rewarded
UPDATE spell_area SET quest_start = 0, quest_start_active = 0, condition_id = 20917 WHERE spell = 55952;
DELETE FROM conditions WHERE condition_entry = 20917;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(20917,8,12924,0,0,0,0);
-- o.192060 Fjorn's Anvil
UPDATE gameobject SET phaseMask = 1+2+4 WHERE id = 192060;
-- o.192075 Snowdrift
DELETE FROM game_event_gameobject WHERE guid BETWEEN 510941 AND 510950;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 510941 AND 510950;
DELETE FROM gameobject WHERE guid BETWEEN 510941 AND 510950;
DELETE FROM game_event_gameobject WHERE guid = 521358;
DELETE FROM gameobject_battleground WHERE guid = 521358;
DELETE FROM gameobject WHERE guid = 521358;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(510941,192075,571,1,4,7176.214,-3511.2014,833.38074,1.9373122,0,0,0.8241253,0.56640756,120,120),
(510942,192075,571,1,4,7201.173,-3556.1301,828.02985,2.1816604,0,0,0.8870106,0.46174914,120,120),
(510943,192075,571,1,4,7230.4404,-3555.625,841.77185,1.8500489,0,0,0.7986355,0.60181504,120,120),
(510944,192075,571,1,4,7169.602,-3615.7139,830.24866,3.38594,0,0,-0.9925461,0.12186995,120,120),
(510945,192075,571,1,4,7162.5537,-3582.6572,830.3596,1.1170093,0,0,0.5299187,0.84804845,120,120),
(510946,192075,571,1,4,7131.5015,-3584.2239,840.1951,4.363324,0,0,-0.8191519,0.5735767,120,120),
(510947,192075,571,1,4,7165.4683,-3639.5352,832.1566,0.89011663,0,0,0.43051052,0.90258557,120,120),
(510948,192075,571,1,4,7219.587,-3580.4497,824.27875,2.4260077,0,0,0.9366722,0.35020736,120,120),
(510949,192075,571,1,4,7148.732,-3559.1675,830.3597,3.5604727,0,0,-0.9781475,0.20791209,120,120),
(510950,192075,571,1,4,7121.8325,-3542.562,835.00757,5.532695,0,0,-0.36650085,0.9304177,120,120),
(521358,192075,571,1,4,7218.6406,-3529.7073,828.53876,4.34587,0,0,-0.82412624,0.56640613,120,120);
-- o.192124 Smoldering Scrap
-- summoned
DELETE FROM gameobject WHERE id = 192124;
-- c.30123 Snorri
UPDATE creature SET phaseMask = 4, position_x = 7167.3755, position_y = -3543.0588, position_z = 827.746, orientation = 6.056292533874511718, spawndist = 0, MovementType = 0 WHERE id = 30123;
DELETE FROM creature_template_addon WHERE entry = 30123;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30123,0,0,1,0,0,0,61208);
-- c.30099 Njormeld
UPDATE creature SET phaseMask = 4, position_x = 7183.2954, position_y = -3519.8586, position_z = 827.4118, orientation = 0.03490658476948738, spawndist = 0, MovementType = 0 WHERE id = 30099;
DELETE FROM creature_template_addon WHERE entry = 30099;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30099,0,0,1,0,0,0,61208);
-- c.30169 Smoldering Scrap Bunny
DELETE FROM creature_addon WHERE guid IN (526293,526307,527605,527606,527607,527608,527609,527610,527611,527612,527613,527614,527617);
DELETE FROM creature_movement WHERE id IN (526293,526307,527605,527606,527607,527608,527609,527610,527611,527612,527613,527614,527617);
DELETE FROM game_event_creature WHERE guid IN (526293,526307,527605,527606,527607,527608,527609,527610,527611,527612,527613,527614,527617);
DELETE FROM game_event_creature_data WHERE guid IN (526293,526307,527605,527606,527607,527608,527609,527610,527611,527612,527613,527614,527617);
DELETE FROM creature_battleground WHERE guid IN (526293,526307,527605,527606,527607,527608,527609,527610,527611,527612,527613,527614,527617);
DELETE FROM creature_linking WHERE guid IN (526293,526307,527605,527606,527607,527608,527609,527610,527611,527612,527613,527614,527617);
DELETE FROM creature WHERE guid IN (526293,526307,527605,527606,527607,527608,527609,527610,527611,527612,527613,527614,527617);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(526293,30169,571,1,8,7204.097,-3497.6848,830.76733,2.635447263717651367,300,300,0,0),
(526307,30169,571,1,8,7210.0786,-3542.7576,827.57623,3.019419670104980468,300,300,0,0),
(527605,30169,571,1,8,7163.6865,-3606.8,831.85333,4.066617012023925781,300,300,0,0),
(527606,30169,571,1,8,7225.2397,-3495.331,839.9877,3.141592741012573242,300,300,0,0),
(527607,30169,571,1,8,7218.1313,-3519.2317,831.1962,3.455751895904541015,300,300,0,0),
(527608,30169,571,1,8,7167.148,-3635.3728,831.51355,3.071779489517211914,300,300,0,0),
(527609,30169,571,1,8,7248.6377,-3625.2446,826.9236,3.647738218307495117,300,300,0,0),
(527610,30169,571,1,8,7196.2646,-3652.629,823.59076,4.886921882629394531,300,300,0,0),
(527611,30169,571,1,8,7204.8613,-3628.2493,823.5885,4.223696708679199218,300,300,0,0),
(527612,30169,571,1,8,7246.637,-3648.9324,823.046,0.994837641716003417,300,300,0,0),
(527613,30169,571,1,8,7236.3813,-3678.7327,822.8235,0.872664630413055419,300,300,0,0),
(527614,30169,571,1,8,7206.611,-3404.1958,841.4804,4.223696708679199218,300,300,0,0),
(527617,30169,571,1,8,7191.6367,-3490.5977,833.99304,0.209439516067504882,300,300,0,0);
UPDATE creature SET phaseMask = 8 WHERE id = 30169;
-- c.30121 Frost Giant Stormherald
DELETE FROM creature_addon WHERE guid IN (527618,527622,527624);
DELETE FROM creature_movement WHERE id IN (527618,527622,527624);
DELETE FROM game_event_creature WHERE guid IN (527618,527622,527624);
DELETE FROM game_event_creature_data WHERE guid IN (527618,527622,527624);
DELETE FROM creature_battleground WHERE guid IN (527618,527622,527624);
DELETE FROM creature_linking WHERE guid IN (527618,527622,527624);
DELETE FROM creature WHERE guid IN (527618,527622,527624);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527618,30121,571,1,4,7138.599,-3545.8003,832.5992,5.627951622009277343,60,60,0,4),
(527622,30121,571,1,4,7136.62,-3553.63,832.396,5.71939,60,60,0,4), -- need to confirm cordinates
(527624,30121,571,1,4,7144.95,-3540.98,832.782,5.26732,60,60,0,4); -- need to confirm cordinates
UPDATE creature_template SET Faction = 2107, MinLevel = 80, MaxLevel = 80, SpeedWalk = 7/2.5, SpeedRun = 12/7.0, StaticFlags1 = 0, StaticFlags2 = 2099200, StaticFlags3 = 1, MovementType = 0 WHERE entry IN (30121);
DELETE FROM creature_template_addon WHERE entry = 30121;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30121,0,0,1,0,0,0,56568);
DELETE FROM creature_movement WHERE id IN (527618,527622,527624);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 527618
(527618,1,7138.599,-3545.8003,832.5992,100,1000,5),
(527618,2,7210.266,-3611.004,822.9377,100,0,0),
(527618,3,7223.166,-3623.9583,823.2048,100,0,0),
(527618,4,7251.037,-3644.0034,822.9533,100,0,0),
(527618,5,7251.037,-3644.0034,822.9533,3.159045934677124023,1000,3012101),
-- 527622
(527622,1,7136.62,-3553.63,832.396,100,1000,5),
(527622,2,7158.96,-3572.55,829.28,100,0,0),
(527622,3,7167.1,-3613.61,830.563,100,0,0),
(527622,4,7180.71,-3645.27,824.354,100,0,0),
(527622,5,7204.59,-3656.66,823.663,100,0,0),
(527622,6,7220.329,-3671.0652,823.6252,100,0,0),
(527622,7,7220.329,-3671.0652,823.6252,1.675516128540039062,1000,3012101),
-- 527624
(527624,1,7144.95,-3540.98,832.782,100,1000,5),
(527624,2,7166.09,-3571.17,827.864,100,0,0),
(527624,3,7184.11,-3596.96,827.663,100,0,0),
(527624,4,7201.9795,-3624.4211,823.4695,100,0,0),
(527624,5,7201.9795,-3624.4211,823.4695,5.137032032012939453,1000,3012101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3012101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3012101,1,20,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'idle'),
(3012101,100,48,512,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'remove unitflags');
DELETE FROM dbscripts_on_relay WHERE id IN (20492);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20492,1,48,512,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Frost Giant Stormherald 30121 EAI: add unitflags');
-- c.30122 Storm Peaks Anvil Bunny
DELETE FROM creature_addon WHERE guid IN (527629);
DELETE FROM creature_movement WHERE id IN (527629);
DELETE FROM game_event_creature WHERE guid IN (527629);
DELETE FROM game_event_creature_data WHERE guid IN (527629);
DELETE FROM creature_battleground WHERE guid IN (527629);
DELETE FROM creature_linking WHERE guid IN (527629);
DELETE FROM creature WHERE guid IN (5527629);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527629,30122,571,1,4,7219.516,-3645.3962,824.5578,2.617993831634521484,300,300,0,0);
UPDATE creature_template SET Faction = 35, MinLevel = 60, MaxLevel = 60, StaticFlags1 = 33554688, StaticFlags2 = 2099200 WHERE entry IN (30122);
-- c.30120 Seething Revenant
DELETE FROM creature_addon WHERE guid IN (527631,527632,527633,527639,527641);
DELETE FROM creature_movement WHERE id IN (527631,527632,527633,527639,527641);
DELETE FROM game_event_creature WHERE guid IN (527631,527632,527633,527639,527641);
DELETE FROM game_event_creature_data WHERE guid IN (527631,527632,527633,527639,527641);
DELETE FROM creature_battleground WHERE guid IN (527631,527632,527633,527639,527641);
DELETE FROM creature_linking WHERE guid IN (527631,527632,527633,527639,527641);
DELETE FROM creature WHERE guid IN (527631,527632,527633,527639,527641);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527631,30120,571,1,4,7191.471,-3664.6907,824.73145,6.066225051879882812,60,60,0,0),
(527632,30120,571,1,4,7247.753,-3619.3267,827.75775,4.844553947448730468,60,60,0,0),
(527633,30120,571,1,4,7268.6313,-3640.3645,825.26685,3.346689701080322265,60,60,0,0),
(527639,30120,571,1,4,7201.546,-3622.7827,823.52026,5.550147056579589843,60,60,0,0),
(527641,30120,571,1,4,7226.241,-3679.5269,823.619,2.180016040802001953,60,60,0,0);
UPDATE creature_template SET Faction = 2124, MinLevel = 80, MaxLevel = 80 WHERE entry IN (30120);
-- c.30123 Snorri 
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (30123);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(30123,55957,12967,1,12967,3,0);
-- c.30124 Snorri
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (7 / 2.5), SpeedRun = (12 / 7), RegenerateStats = 0, UnitClass = 1, SpellList = 3012401 WHERE Entry = 30124;
DELETE FROM creature_template_spells WHERE entry = 30124;
DELETE FROM creature_spell_list_entry WHERE Id IN(3012401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3012401, 'Argent Warhorse 33782 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3012401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3012401','0','56750','0','-1','0','0','100','1','0','0','0','0','Snorri 30124 - Gather Snow'),
('3012401','1','56753','0','-1','0','0','100','1','0','0','0','0','Snorri 30124 - Throw Snowball');
-- Part of Snorri 30124 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (21254,21255);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21254,0,34,20918,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Snorri 30124 EAI: area check'),
(21254,1,14,55962,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Snorri 30124 EAI: drop player'),
(21255,4000,15,32951,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Snorri 30124 EAI: cast 32951');
DELETE FROM conditions WHERE condition_entry = 20918;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20918, 4, 4495, 0);
