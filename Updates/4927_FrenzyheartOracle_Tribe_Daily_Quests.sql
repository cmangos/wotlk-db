-- +++++++++++++++++++++++++++++++
-- Frenzyheart/Oracle Tribe Daily Quests - BASE for Players choice.
-- this will open daily for both factions
-- +++++++++++++++++++++++++++++++

-- q.12692 'Return of the Lich Hunter'
UPDATE quest_template SET RequiredCondition = 20576, PrevQuestId = 0 WHERE entry = 12692;
-- q.12695 'Return of the Friendly Dryskin'
UPDATE quest_template SET RequiredCondition = 20607, PrevQuestId = 0 WHERE entry = 12695;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20798 AND 20799;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20798,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Remove NpcFlags'),
(20799,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Add NpcFlags');

-- +++++++++++++++++++++++++++++++
-- Frenzyheart Tribe Daily Quests
-- +++++++++++++++++++++++++++++++

-- q.12741 'Strength of the Tempest'
-- Player must gather 3 items to create another
UPDATE quest_template SET ReqSourceCount2=3, ReqSourceCount3=3 WHERE entry = 12741;

-- q.12703 'Kartak's Rampage'
-- item must drop from 1st killed
UPDATE creature_loot_template SET ChanceorQuestChance = -100 WHERE item = 39265;
DELETE FROM creature_loot_template WHERE entry IN (28116);
-- Kartak the Abominable 28116
UPDATE creature_template SET SpeedWalk = 2.4, SpeedRun = 1.714, RegenerateStats = 0, LootId = 0, VehicleTemplateId = 257, SpellList=0 WHERE Entry = 28116;
DELETE FROM creature_spell_list_entry WHERE Id IN (2811600);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2811600, 'Sholazar Basin - Kartak the Abominable 28116 - Vehicle spells',0,0);
DELETE FROM creature_spell_list WHERE Id IN (2811600);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2811600,0,52316,0,0,0,100,0,0,0,0,0,'Kartak the Abominable 28116 - Head Smash'),
(2811600,1,52271,0,0,0,100,0,0,0,0,0,'Kartak the Abominable 28116 - Violent Crash'),
(2811600,2,52311,0,0,0,100,0,0,0,0,0,'Kartak the Abominable 28116 - Furious Charge'),
(2811600,3,52272,0,0,0,100,0,0,0,0,0,'Kartak the Abominable 28116 - Boulder Throw'),
(2811600,5,52274,0,0,0,100,0,0,0,0,0,'Kartak the Abominable 28116 - Consume Gorloc');
UPDATE broadcast_text SET ChatTypeID = 3 WHERE `Id` IN (29005,28988);
DELETE FROM spell_script_target WHERE entry IN (52271,52274,52305);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(52271, 1, 28111, 0),
(52271, 1, 28112, 0),
(52274, 1, 28111, 0),
(52274, 1, 28112, 0),
(52305, 1, 28111, 0),
(52305, 1, 28112, 0);
-- Part of Kartak the Abominable 28116 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20800);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20800,10,34,20639,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kartak the Abominable 28116/Soo-holu 28115 EAI: area check'),
(20800,100,0,0,0,0,0,0,0,28988,0,0,0,0,0,0,0,'Part of Kartak the Abominable 28116/Soo-holu 28115 EAI: warning'),
(20800,101,15,56966,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Kartak the Abominable 28116/Soo-holu 28115 EAI: spell warning'),
(20800,15000,34,20639,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kartak the Abominable 28116/Soo-holu 28115 EAI: area check'),
(20800,15100,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kartak the Abominable 28116/Soo-holu 28115 EAI: Player Drop');
UPDATE broadcast_text SET ChatTypeID = 3 WHERE `Id` = 29005;
DELETE FROM conditions WHERE condition_entry BETWEEN 20636 AND 20639;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20636,4,4288,0,0,0),
(20637,4,4287,0,0,0),
(20638,4,4289,0,0,0),
(20639,-2,20638,20637,20636,0);
-- Sparktouched Warrior 28111 / Sparktouched Oracle 28112
DELETE FROM dbscripts_on_creature_death WHERE id IN (28111,28112);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(28111,1,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unactive'),
(28111,2,18,30000,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn'),
(28112,1,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unactive'),
(28112,2,18,30000,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn');

-- q.12734 'Rejek: First Blood'
-- missing object added
DELETE FROM `gameobject_template` WHERE `entry`=191146;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`,`ScriptName`) VALUES 
(191146, 6, 7205, 'Ensnaring Trap', '', '', '', 0, 0, 1, 12, 0, 5, 53077, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'');

-- q.12732 'The Heartblood's Strength'  4224
DELETE FROM dbscripts_on_quest_end WHERE id IN (12732);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12732,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12732,2,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags Removed'),
(12732,3,0,0,0,0,0,0,0,29247,0,0,0,0,0,0,0,''),
(12732,4,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12732,3000,15,52968,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12732,7000,0,0,0,0,0,0,0,29248,0,0,0,0,0,0,0,''),
(12732,7001,1,53,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12732,10000,1,36,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12732,13000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12732,16000,0,0,0,0,0,0,0,29249,0,0,0,0,0,0,0,''),
(12732,16001,1,53,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12732,16002,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags added'),
(12732,16003,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12732 WHERE entry = 12732;

-- q.12758 'A Hero's Headgear'
DELETE FROM dbscripts_on_quest_end WHERE id IN (12758);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12758,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12758,2,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags Removed'),
(12758,1000,0,0,0,0,0,0,0,29460,0,0,0,0,0,0,0,''),
(12758,1001,10,28139,40000,0,0,0,0,0,0,0,102,5258.08,4503.89,-85.3036,5.90333,'summon 28139'), -- path2
(12758,1002,10,28139,40000,0,0,0,0,0,0,0,103,5266.56,4519.91,-84.6035,4.79278,'summon 28139'), -- path3
(12758,10000,0,0,0,0,0,0,0,29463,0,0,0,0,0,0,0,''),
(12758,10001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12758,12000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,5.74,'move'),
(12758,14001,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12758,15000,15,53171,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 53171'),
(12758,17000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.46,'move'),
(12758,19000,0,0,0,0,0,0,0,29464,0,0,0,0,0,0,0,''),
(12758,19001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12758,29000,0,0,0,0,0,0,0,29466,0,0,0,0,0,0,0,''),
(12758,29001,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12758,35000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags added'),
(12758,35001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12758 WHERE entry = 12758;
-- Frenzyheart Pup 28139
DELETE FROM creature_movement_template WHERE entry = 28139;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28139,2,1,5264.68,4503.21,-84.6573,6.27482,23000,2813901),
(28139,2,2,5264.68,4503.21,-84.6573,6.27482,100,0),
(28139,2,3,5249.65,4501.64,-85.3437,100,100,1),
(28139,3,1,5266.9,4506.43,-84.5008,5.08966,23000,2813902),
(28139,3,2,5266.9,4506.43,-84.5008,5.08966,100,2813903),
(28139,3,3,5262.55,4526.42,-84.5208,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2813901 AND 2813903;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2813901,1,0,0,0,0,0,0,0x04,29461,0,0,0,0,0,0,0,'say'),
(2813902,1,0,0,0,0,0,0,0x04,29462,0,0,0,0,0,0,0,'say'),
(2813903,1,0,0,0,0,0,0,0x04,29465,0,0,0,0,0,0,0,'say');
-- Stormwatcher Head 29116
UPDATE creature_template SET UnitFlags = 33554432 WHERE Entry = 29116;

-- +++++++++++++++++++++++++++++++
-- Oracle Tribe Daily Quests
-- +++++++++++++++++++++++++++++++

-- q.12704 'Appeasing the Great Rain Stone'
-- condition update - for second quest
DELETE FROM dbscript_random_templates WHERE `id` = 20327;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20327,0,28265,0,'Lafoo 28120 - Random Say 1 (q.12572 & q.12704)'),
(20327,0,28261,0,'Lafoo 28120 - Random Say 2 (q.12572 & q.12704)'),
(20327,0,28266,0,'Lafoo 28120 - Random Say 3 (q.12572 & q.12704)'),
(20327,0,28267,0,'Lafoo 28120 - Random Say 4 (q.12572 & q.12704)');
DELETE FROM conditions WHERE condition_entry BETWEEN 20625 AND 20627;
DELETE FROM conditions WHERE condition_entry BETWEEN 20640 AND 20641; -- new
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20625,37,28362,7,0,0,0,''),
(20626,9,12572,1,0,0,0,''),
(20627,9,12704,1,0,0,0,''),
(20640,-2,20627,20626,0,0,0,''),
(20641,-1,20640,20625,0,0,0,'');

-- q.12761 'Mastery of the Crystals'
-- Crystal of the Frozen Grip 29125
-- Crystal of the Violent Storm 29126
-- Crystal of Unstable Energy 29127
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80 WHERE Entry IN (29125,29126,29127);

-- q.12726 'Song of Wind and Water'
-- Known Issue: Player drops from vehicle during entry update (core issue - can't be fixed here)
-- Haiphoon, the Great Tempest 28999
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.289, RegenerateStats = 14, SpellList=0 WHERE Entry = 28999;
UPDATE creature_template SET MinLevel =80, MaxLevel = 80, SpeedWalk = 1, SpeedRun = 1.289, RegenerateStats = 14 WHERE Entry = 28985;
DELETE FROM creature_spell_list_entry WHERE Id IN (2899900,2899901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2899900, 'Sholazar Basin - Haiphoon, the Great Tempest 28999 - Water Form Vehicle spells',0,0),
(2899901, 'Sholazar Basin - Haiphoon, the Great Tempest 28999 - Air Form Vehicle spells',0,0);
DELETE FROM creature_spell_list WHERE Id IN (2899900,2899901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2899900,0,61375,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Water Bolt'),
(2899900,1,61376,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Frost Nova'),
(2899900,2,52862,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Devour Wind'),
(2899900,5,52869,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Evocation'),
(2899901,0,61374,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Lightning Bolt'),
(2899901,1,52870,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Windshear'),
(2899901,2,52864,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Devour Water'),
(2899901,5,52869,0,0,0,100,0,0,0,0,0,'Haiphoon, the Great Tempest - Evocation');

-- q.12705 'Will of the Titans'
-- item must drop from 1st killed
UPDATE creature_loot_template SET ChanceorQuestChance = -100 WHERE item = 39266;
DELETE FROM gameobject_template WHERE entry IN (300218); -- temp removed
DELETE FROM game_event_gameobject WHERE guid = 511752;
DELETE FROM gameobject_battleground WHERE guid = 511752;
DELETE FROM gameobject WHERE guid = 511752;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(511752,190781,571,1,5110.54,5466.71,-91.8355,1.58118,0,0,0.710767,0.703427,180,180);
-- Soo-holu 28115
UPDATE creature_template SET SpeedWalk = 2.4, SpeedRun = 1.714, RegenerateStats = 14, LootId = 0, VehicleTemplateId = 257, SpellList=0 WHERE Entry = 28115;
DELETE FROM creature_loot_template WHERE entry IN (28115);
DELETE FROM creature_spell_list_entry WHERE Id IN (2811500);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2811500, 'Sholazar Basin - Soo-holu 28115 - Vehicle spells',0,0);
DELETE FROM creature_template_spells WHERE entry = 28115;
DELETE FROM creature_spell_list WHERE Id IN (2811500);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2811500,0,52331,0,0,0,100,0,0,0,0,0,'Soo-holu 28115 - Wide Swipe'),
(2811500,1,52358,0,0,0,100,0,0,0,0,0,'Soo-holu 28115 - Swift Paws'),
(2811500,2,53032,0,0,0,100,0,0,0,0,0,'Soo-holu 28115 - Flurry of Claws'),
(2811500,5,52321,0,0,0,100,0,0,0,0,0,'Soo-holu 28115 - Perseverance of the Gods');
UPDATE broadcast_text SET ChatTypeID = 3 WHERE `Id` = 29003;
