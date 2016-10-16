-- q.7702 'Kill 'Em With Sleep Deprivation'
-- q.7704 'Look at the Size of It!'
-- Quests were missing in DB
-- 7702 - scripted. 2 waves of Sleepy Dark Iron Work will show up + Boss at the end of event..
-- Chambermaid Pillaclencher - will drop Pillaclencher's Ornate Pillow, so Players can start quest 7704
-- Stats corrected for 'Sleepy Dark Iron Work' and 'Chambermaid Pillaclencher'
-- missing spell added

-- missing quests added
DELETE FROM quest_template WHERE entry IN (7702,7704);
INSERT INTO quest_template (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) values
('7702','2','51','30','49','0','0','0','0','0','0','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','5','0','0','0','Kill \'Em With Sleep Deprivation','If we want to put a dent in the productivity of the Dark Iron forces working out of the Slag Pit, we have to hit them where it\'s going to hurt the most.$B$BIt\'s a little known fact but dwarves, particularly of the Dark Iron variety, need rest! Lots of rest!$B$BNow I ask you; How can they sleep without pillows? Exactly, $N, they can\'t. This is why you must weasel your way into the Slag Pit and steal their pillows.','Deep within the Slag Pit of the Cauldron, you will find the sleeping quarters of the Dark Iron dwarves.$B$BTravel to the sleeping quarters and steal 20 Dark Iron Pillows. Return to Evonice Sootsmoker in the Searing Gorge when you have accomplished this task.','Wonderful! Those sleepy Dark Irons will head back to their homes in the Depths to get some rest, greatly slowing down the productivity of the Slag Pit.','Don\'t let the crazy goggles fool you, $N. I\'m the smart one here.',NULL,'Return to Evonice Sootsmoker at The Cauldron in Searing Gorge.',NULL,NULL,NULL,NULL,'18943','0','0','0','0','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','19129','0','0','0','1','0','0','0','59','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','14000','3900','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0'),
('7704','2','51','45','51','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','5','18950','1','0','Look at the Size of It!','Well, well, well... Isn\'t this a surprise. The Chambermaid had a gigantic ornate pillow and now it\'s yours. Evonice Sootsmoker will definitely want to get her grubby little hands all over this item. Take it to her and see if she\'ll offer you any goodies for your trouble.','Take Chambermaid Pillaclencher\'s Pillow to Evonice Sootsmoker in the Searing Gorge.','This is better than even I could have thought possible! The Chambermaid\'s magical pillow is mine! You better believe you\'re going to get a nice reward for this accomplishment, $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18950','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','18951','0','0','0','1','0','0','0','59','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','4050','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
DELETE FROM creature_questrelation WHERE id = 14628 AND quest = 7702;
INSERT INTO creature_questrelation (id, quest) VALUES
(14628,7702);
DELETE FROM creature_involvedrelation WHERE id = 14628;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(14628,7702),
(14628,7704);
DELETE FROM quest_poi WHERE questId IN (7702,7704);
INSERT INTO quest_poi (questId, poiId, objIndex, mapID, mapAreaId, floorID, unk3, unk4) VALUES
(7702, 1, -1, 0, 28, 0, 0, 1),
(7704, 0, -1, 0, 28, 0, 0, 1);
DELETE FROM quest_poi_points WHERE questId IN (7702,7704);
INSERT INTO quest_poi_points (questId, poiId,  x, y) VALUES
(7702, 0, -6514, -1366),
(7702, 0, -6509, -1365),
(7702, 0, -6513, -1342),
(7702, 0, -6556, -1310),
(7702, 0, -6578, -1314),
(7702, 0, -6576, -1324),
(7702, 0, -6569, -1336),
(7702, 0, -6562, -1344),
(7702, 0, -6555, -1352),
(7702, 0, -6544, -1359),
(7702, 0, -6533, -1363),
(7702, 0, -6524, -1365),
(7702, 1, -6513, -1179),
(7704, 0, -6513, -1179);

-- Dark Iron Pillow
UPDATE gameobject SET spawntimesecs = 60 WHERE id = 179828;
-- Event related to object 179828
DELETE FROM dbscripts_on_event WHERE id = 8540;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8540,1,31,15214,500,0,0,0x08,0,0,0,0,0,0,0,0,''), -- check if creature is alive (prevent double spawn)
(8540,2,10,15214,600000,0,0,0x08,1,0,0,0,-6543.29,-1336.53,208.8,0.874413,'summon invis'),
-- 1st wave 
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6573.83,-1293.15,208.743,5.0292,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6572.83,-1293.15,208.743,5.0292,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6574.83,-1293.15,208.743,5.0292,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6573.73,-1295.1,208.743,4.83044,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6575.53,-1292.49,208.743,4.76541,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6574.2,-1291.39,208.743,4.76541,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6572.64,-1291.1,208.743,4.76541,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6571.42,-1292.28,208.743,4.37271,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6572.13,-1290.6,208.743,4.53843,'summon: Sleepy Dark Iron Work'),
(8540,5,10,14635,180000,0,0,0x08,1,0,0,0,-6575.04,-1291.18,208.743,4.99867,'summon: Sleepy Dark Iron Work'),
(8540,8,0,0,0,14635,500,7,2000001028,0,0,0,0,0,0,0,''),
-- 2nd wave
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6573.83,-1293.15,208.743,5.0292,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6572.83,-1293.15,208.743,5.0292,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6574.83,-1293.15,208.743,5.0292,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6573.73,-1295.1,208.743,4.83044,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6575.53,-1292.49,208.743,4.76541,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6574.2,-1291.39,208.743,4.76541,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6572.64,-1291.1,208.743,4.76541,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6571.42,-1292.28,208.743,4.37271,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6572.13,-1290.6,208.743,4.53843,'summon: Sleepy Dark Iron Work'),
(8540,180,10,14635,180000,0,0,0x08,1,0,0,0,-6575.04,-1291.18,208.743,4.99867,'summon: Sleepy Dark Iron Work'),
(8540,184,0,0,0,14635,500,7,2000001029,0,0,0,0,0,0,0,''),
-- Boss
(8540,360,10,14636,600000,0,0,0x08,0,0,0,0,-6561.74,-1338.03,208.811,0.506955,'summon: Chambermaid Pillaclencher');

-- Sleepy Dark Iron Work
UPDATE creature_template SET MinLevel = 44, MaxLevel = 45, FactionAlliance = 54, FactionHorde = 54, Expansion = 0, UnitClass = 1, MinLevelHealth = 178, MaxLevelHealth = 184, RangedBaseAttackTime = 2000, MeleeAttackPower = 184, RangedAttackPower = 17, MinMeleeDmg = 103, MaxMeleeDmg = 105, Armor = 2695, MovementType = 2, EquipmentTemplateId = 53 WHERE entry = 14635;
DELETE FROM creature_movement_template WHERE entry = 14635;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14635,1,-6557.94,-1320.05,208.912, 0, 0,100, 0, 0),
(14635,2,-6558.38,-1340.06,208.869, 0, 0,100, 0, 0),
(14635,3,-6536.66,-1341.34,208.805, 0, 0,100, 0, 0),
(14635,4,-6515.78,-1356.03,209.086, 0, 0,100, 0, 0),
(14635,5,-6499.38,-1354.04,209.249, 0, 0,100, 0, 0),
(14635,6,-6520.72,-1358.79,209.129, 0, 0,100, 0, 0),
(14635,7,-6534.91,-1341.64,208.791, 0, 0,100, 0, 0),
(14635,8,-6558.63,-1339.51,208.865, 0, 0,100, 0, 0),
(14635,9,-6558.35,-1319.12,208.916, 0, 0,100, 0, 0),
(14635,10,-6573.87,-1291.23,208.743, 0, 0,100, 0, 0),
(14635,11,-6557.94,-1320.05,208.912, 0, 0,100, 0, 0),
(14635,12,-6558.38,-1340.06,208.869, 0, 0,100, 0, 0),
(14635,13,-6536.66,-1341.34,208.805, 0, 0,100, 0, 0),
(14635,14,-6515.78,-1356.03,209.086, 0, 0,100, 0, 0),
(14635,15,-6499.38,-1354.04,209.249, 0, 0,100, 0, 0),
(14635,16,-6520.72,-1358.79,209.129, 0, 0,100, 0, 0),
(14635,17,-6534.91,-1341.64,208.791, 0, 0,100, 0, 0),
(14635,18,-6558.63,-1339.51,208.865, 0, 0,100, 0, 0),
(14635,19,-6558.35,-1319.12,208.916, 0, 0,100, 0, 0),
(14635,20,-6573.87,-1291.23,208.743, 5000, 1463501,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1463501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1463501,1,20,1,15,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1463501,1,18,15000,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry IN (2000001028,2000001029);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001028,'Our pillas! Someone has stolen our pillas!',0,1,0,0,NULL),
(2000001029,'We\'ll not let this act of madness go unpunished!',0,1,0,0,NULL);

-- Chambermaid Pillaclencher
UPDATE creature_template SET MinLevel = 44, MaxLevel = 45, FactionAlliance = 754, FactionHorde = 754, Expansion = -1, UnitClass = 1, MinLevelHealth = 17820, MaxLevelHealth = 18480, RangedBaseAttackTime = 2000, MeleeAttackPower = 184, RangedAttackPower = 17, MinMeleeDmg = 103, MaxMeleeDmg = 105, Armor = 2695, EquipmentTemplateId = 2516 WHERE entry = 14636;
-- Chambermaid Pillaclencher - equipment
DELETE FROM creature_equip_template WHERE entry = 2516;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(2516,12858,12859,0);
DELETE FROM dbscripts_on_creature_death WHERE id = 14636;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14636,1,15,23408,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Pillaclencher's Ornate Pillow
-- Server side spell added
DELETE FROM spell_template WHERE id = 23408;
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(23408, 256, 8388864, 0, 0, 0, 101, 5, 76, 32, 0, 15, 0, 179832, 0, 0, 'Drop Pillow DND');
