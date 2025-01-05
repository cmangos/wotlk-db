-- q.13164 'The Fate of Bloodbane'
-- Orbaz Bloodbane 31283
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (31959,31961,31962,31963,31969,31970,31967,31975,31983,31964,31977,31968,31978);
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `Id` IN (31966);
-- Highlord Darion Mograine 31290
UPDATE creature_template SET Faction = 2051, MinLevel = 83, MaxLevel = 83, Expansion = 2, UnitClass = 2, UnitFlags = 512, DamageMultiplier = 5, EquipmentTemplateId = 365, MovementType = 0 WHERE Entry = 31290;
DELETE FROM creature_template_addon WHERE entry IN (31290);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31290,0,0,1,0,333,0,'42459');
DELETE FROM creature_movement_template WHERE Entry = 31290;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31290,1,1,5878.3,2019.73,507.347,100,0,0),
(31290,1,2,5885.69,2016.47,511.638,100,0,0),
(31290,1,3,5904.37,2006.88,516.346,100,0,0),
(31290,1,4,5948.84,1985.84,523.247,100,100,1);
-- Ominous Cloud 32406
UPDATE creature_template SET Faction = 14, MinLevel = 80, MaxLevel = 80, SpeedWalk = (1 / 2.5), SpeedRun = (1 / 7), Expansion = 2, UnitFlags = 33554432, StaticFlags2 = 2048, InhabitType = 3, MovementType = 1 WHERE Entry = 32406;
DELETE FROM creature_template_addon WHERE entry = 32406;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32406,0,0,1,0,0,0,'16245 60977 60984');
