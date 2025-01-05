DELETE FROM spell_script_target WHERE entry IN(58685);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(58685, 1, 30882, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2886000, 3131100);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(2886000, 0, 56908, 20000, 20000, 25000, 35000, 0, 0, 0, 100, 2, 'Sartharion 10 - Flame Breath'),
(2886000, 1, 56910, 20000, 20000, 15000,20000 , 0, 0, 0, 100, 2, 'Sartharion 10 - Tail Lash'),
(2886000, 2, 56909, 7000, 7000, 7000, 10000, 0, 1, 0, 100, 1, 'Sartharion 10 - Cleave'),
(3131100, 0, 58956, 20000, 20000, 25000, 35000, 0, 0, 0, 100, 2, 'Sartharion 25 - Flame Breath'),
(3131100, 1, 58957, 20000, 20000, 15000,20000 , 0, 0, 0, 100, 2, 'Sartharion 25 - Tail Lash'),
(3131100, 2, 56909, 7000, 7000, 7000, 10000, 0, 1, 0, 100, 1, 'Sartharion 25 - Cleave');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2886000, 3131100);
INSERT INTO `creature_spell_list_entry` VALUES
(2886000, 'OS - Sartharion (10)', 0, 0),
(3131100, 'OS - Sartharion (25)', 0, 0);

UPDATE `creature_template` SET `SpellList`=2886000 WHERE `entry` IN (28860);
UPDATE `creature_template` SET `SpellList`=3131100 WHERE `entry` IN (31311);

DELETE FROM `creature_spell_list` WHERE `Id` IN (3045200, 3153400);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3045200, 0, 57579, 5000, 5000, 15000, 20000, 0, 100, 0, 100, 0, 'Tenebron 10 - Shadow Fissure'),
(3045200, 1, 57570, 20000, 20000, 20000, 25000, 0, 0, 0, 100, 0, 'Tenebron 10 - Shadow Breath'),
(3131100, 0, 57579, 5000, 5000, 15000, 20000, 0, 100, 0, 100, 0, 'Tenebron 25 - Shadow Fissure'),
(3131100, 1, 57570, 20000, 20000, 20000, 25000, 0, 0, 0, 100, 0, 'Tenebron 25 - Shadow Breath');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3045200, 3153400);
INSERT INTO `creature_spell_list_entry` VALUES
(3045200, 'OS - Tenebron (10)', 0, 0),
(3153400, 'OS - Tenebron (25)', 0, 0);

UPDATE `creature_template` SET `SpellList`=3045200 WHERE `entry` IN (30452);
UPDATE `creature_template` SET `SpellList`=3153400 WHERE `entry` IN (31534);

DELETE FROM `creature_spell_list` WHERE `Id` IN (3045100, 3152000);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3045100, 0, 57579, 5000, 5000, 15000, 20000, 0, 100, 0, 100, 0, 'Shadron 10 - Shadow Fissure'),
(3045100, 1, 57570, 20000, 20000, 20000, 25000, 0, 0, 0, 100, 0, 'Shadron 10 - Shadow Breath'),
(3152000, 0, 57579, 5000, 5000, 15000, 20000, 0, 100, 0, 100, 0, 'Shadron 25 - Shadow Fissure'),
(3152000, 1, 57570, 20000, 20000, 20000, 25000, 0, 0, 0, 100, 0, 'Shadron 25 - Shadow Breath');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3045100, 3152000);
INSERT INTO `creature_spell_list_entry` VALUES
(3045100, 'OS - Shadron (10)', 0, 0),
(3152000, 'OS - Shadron (25)', 0, 0);

UPDATE `creature_template` SET `SpellList`=3045100 WHERE `entry` IN (30451);
UPDATE `creature_template` SET `SpellList`=3152000 WHERE `entry` IN (31520);

DELETE FROM `creature_spell_list` WHERE `Id` IN (3044900, 3153500);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3044900, 0, 57579, 5000, 5000, 15000, 20000, 0, 100, 0, 100, 0, 'Vesperon 10 - Shadow Fissure'),
(3044900, 1, 57570, 20000, 20000, 20000, 25000, 0, 0, 0, 100, 0, 'Vesperon 10 - Shadow Breath'),
(3153500, 0, 57579, 5000, 5000, 15000, 20000, 0, 100, 0, 100, 0, 'Vesperon 25 - Shadow Fissure'),
(3153500, 1, 57570, 20000, 20000, 20000, 25000, 0, 0, 0, 100, 0, 'Vesperon 25 - Shadow Breath');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3044900, 3153500);
INSERT INTO `creature_spell_list_entry` VALUES
(3044900, 'OS - Vesperon (10)', 0, 0),
(3153500, 'OS - Vesperon (25)', 0, 0);

UPDATE `creature_template` SET `SpellList`=3044900 WHERE `entry` IN (30449);
UPDATE `creature_template` SET `SpellList`=3153500 WHERE `entry` IN (31535);


