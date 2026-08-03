-- q.13003 'Thrusting Hodir's Spear'
-- c.30275 Wild Wyrm
UPDATE creature_template SET ArmorMultiplier = 0, AgilityMultiplier = 0, RegenerateStats = 0, SpellList = 3027501 WHERE Entry = 30275;
DELETE FROM creature_movement_template WHERE Entry = 30275;
INSERT INTO creature_movement_template (`Entry`, `pathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path 1 -- req for quest (they all got this after boarded)
(30275,1,1,7238.3975,-2307.8713,926.4048,100,0,0),
(30275,1,2,7273.836,-2377.0088,934.3768,100,0,0),
(30275,1,3,7312.854,-2455.0088,951.95966,100,0,0),
(30275,1,4,7439.428,-2437.8508,925.07263,100,0,0),
(30275,1,5,7454.6978,-2308.415,983.9053,100,0,0),
(30275,1,6,7386.2524,-2254.302,1013.8497,100,0,0),
(30275,1,7,7264.816,-2215.4827,1002.0995,100,0,0),
(30275,1,8,7156.9243,-2058.915,1044.0172,100,0,0),
(30275,1,9,7139.803,-1915.9427,1028.3745,100,0,0),
(30275,1,10,7138.8223,-1802.875,996.4352,100,0,0),
(30275,1,11,7107.396,-1695.1892,1016.1005,100,0,0),
(30275,1,12,7010.9297,-1707.5312,1028.9327,100,0,0),
(30275,1,13,7004.7056,-1792.5192,1009.8229,100,0,0),
(30275,1,14,7036.028,-1879.1389,1000.3794,100,0,0),
(30275,1,15,7036.453,-2023.6649,1000.3793,100,0,0),
(30275,1,16,7046.568,-2162.3542,951.1572,100,0,0),
(30275,1,17,7127.067,-2211.9766,944.35254,100,0,0),
(30275,1,18,7224.1685,-2304.1187,930.6301,100,0,0);
DELETE FROM creature_template_spells WHERE entry = 30275;
DELETE FROM creature_spell_list_entry WHERE Id IN(3027501,3027502);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3027501, 'Wild Wyrm 30275 - charmed Spells 1', 0, 0),
(3027502, 'Wild Wyrm 30275 - charmed Spells 2', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3027501,3027502);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
-- set 1
('3027501','0','60533','0','-1','0','0','100','1','0','0','0','0','Wild Wyrm 30275 - Grab On'),
('3027501','1','56704','0','-1','0','0','100','1','0','0','0','0','Wild Wyrm 30275 - Dodge Claws'),
('3027501','2','56690','0','-1','0','0','100','1','0','0','0','0','Wild Wyrm 30275 - Thrust Spear'),
('3027501','3','60586','0','-1','0','0','100','1','0','0','0','0','Wild Wyrm 30275 - Mighty Spear Thrust'),
-- set 2
('3027502','0','56706','0','-1','0','0','100','1','0','0','0','0','Wild Wyrm 30275 - Pry Jaws Open'),
('3027502','2','60587','0','-1','0','0','100','1','0','0','0','0','Wild Wyrm 30275 - Fatal Strike');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21261 AND 21265;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21261,1,20,0,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: idle'),
(21261,1,48,33024,1,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: set UnitFlags'),
(21261,2,37,0,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: move towards Player'),
(21261,5000,15,56673,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: cast 56673'),
(21261,6000,20,3,1,0x8,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: set path 1'),
(21262,1,48,256,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: set UnitFlags'),
(21263,1,48,32768,2,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: set UnitFlags'),
(21264,5002,34,21095,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: 1st condition check - terminate if aura exist'),
(21264,5100,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: despawn self'),
(21265,0,20,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: set fall'),
(21265,4000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: despawn');
DELETE FROM conditions WHERE condition_entry = 21095;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(21095,1,60863,0,0,0,2);
DELETE FROM dbscripts_on_spell WHERE id IN (60596);
INSERT INTO dbscripts_on_spell (id, priority, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(60596,0,0,14,56673,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: remove 56673'),
(60596,0,100,35,6,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: send event 6'),
(60596,0,150,0,0,0,0,0,0,0,32813,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: Say'),
(60596,0,200,15,60863,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Wild Wyrm 30275 EAI: cast 60863');
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `id` IN (32813);
DELETE FROM spell_script_target WHERE entry IN (56673,60713,60810,60863);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(56673, 1, 30275, 0),
(60713, 1, 30275, 0),
(60810, 1, 30275, 0),
(60863, 1, 30275, 0);
