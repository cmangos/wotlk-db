-- q.13144 'Killing Two Scourge With One Skeleton'
-- ReQ Quests: 13211,13152 Rewarded
UPDATE quest_template SET Requiredcondition = 20782 WHERE entry IN (13144);
DELETE FROM conditions WHERE condition_entry BETWEEN 20780 AND 20782;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20780,8,13211,0,0,0,''),
(20781,8,13152,0,0,0,''),
(20782,-1,20781,20780,0,0,'');
DELETE FROM spell_area WHERE spell = 58139;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(58139,4530,0,0,0,20783,0,0,2,1),
(58139,4531,0,0,0,20783,0,0,2,1),
(58139,4588,0,0,0,20783,0,0,2,1);
-- przerobic bo nie działa na conditions
DELETE FROM conditions WHERE condition_entry = 20783;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20783,8,13144,0,0,0,'');
-- may need to add finish quest
DELETE FROM dbscripts_on_quest_end WHERE id IN (13144);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13144,10,10,31428,90000,0,0,0,6|0x08,0,0,0,0,6648.76,3217.7263,810.50073,1.6057,'Player: summon 31428'),
(13144,11,10,31432,90000,0,0,0,6|0x08,0,0,0,20056,6588.4272,3278.2026,818.2033,5.044,'Player: summon 31432'),
(13144,1000,1,25,0,0,31428,50,7,0,0,0,0,0,0,0,0,'buddy emote'),
(13144,1100,0,0,0,0,31428,50,7,32173,0,0,0,0,0,0,0,'buddy say');
UPDATE quest_template SET CompleteScript = 13144 WHERE entry IN (13144);
-- Burning Skeleton 31048
UPDATE creature_template SET UnitClass = 2 WHERE Entry = 31048;
DELETE FROM dbscripts_on_spell WHERE id IN (58593,58602);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(58593,1,31,30689,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 30689'),
(58593,500,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(58593,900,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RuN ON'),
(58593,901,37,0,0,0,30689,50,1,0,0,0,0,0,0,0,0,'move towards target'),
(58593,4000,15,58596,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 58596');
DELETE FROM spell_script_target WHERE entry IN (58596,59091);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(58596, 1, 31048, 0),
(58596, 1, 30689, 0),
(59091, 1, 31432, 0);
-- Chained Abomination 30689
UPDATE creature_template SET Detection = 10, Pursuit = 10000 WHERE entry = 30689;
-- Ghostwing 31432
UPDATE creature_template SET Faction = 974, UnitFlags = 768, MinLevel = 80, MaxLevel = 80, Expansion = 2, UnitClass = 2, InhabitType = 4, VehicleTemplateId = 276, MovementType = 3 WHERE Entry = 31432;
DELETE FROM creature_movement_template WHERE Entry = 31432;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31432,1,6588.4272,3278.2026,818.2033,5.044,1000,5),
(31432,2,6644.4297,3222.9124,823.0705,100,10000,3143201),
(31432,3,6690.6504,3177.2793,860.5705,100,1000,1); -- 23:07:54.998
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3143201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3143201,1,1,460,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:07:44.850
(3143201,100,0,0,0,0,0,0,0x04,32171,0,0,0,0,0,0,0,'say'), -- 23:07:44.949
(3143201,6000,1,452,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:07:50.129
(3143201,6500,15,59091,1,0,31428,80,3,0,0,0,0,0,0,0,0,'buddy cast 59091 on source'),
(3143201,9000,1,5,0,0,30631,80,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 23:07:54.203
(3143201,9100,0,0,0,0,30631,80,7,32195,0,0,0,0,0,0,0,'buddy say'); -- 23:07:54.311
-- Crusader Olakin Sainrith 31428
UPDATE creature_template SET Faction = 2070, UnitFlags = 32768, MinLevel = 80, MaxLevel = 80, Expansion = 2, UnitClass = 2, EquipmentTemplateId = 1018 WHERE Entry = 31428;
