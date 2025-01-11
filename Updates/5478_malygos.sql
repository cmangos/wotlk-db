DELETE FROM `creature_spell_list` WHERE `Id` IN (2885900, 3173400, 2885901, 3173401,2885902,3173402);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(2885900, 0, 56272, 15000, 15000, 20000, 25000, 0, 0, 0, 100, 2, 'Malygos 10 - Arcane Breath'),
(2885900, 1, 56140, 30000, 30000, 30000, 30000, 0, 0, 0, 100, 2, 'Malygos 10 - Summon Power Spark'),
(2885900, 2, 61693, 10000, 10000, 10000, 10000, 0, 0, 0, 100, 2, 'Malygos 10 - Arcane Storm'),
(3173400, 0, 60072, 15000, 15000, 20000, 25000, 0, 0, 0, 100, 2, 'Malygos 25 - Arcane Breath'),
(3173400, 1, 56140, 30000, 30000, 30000, 30000, 0, 0, 0, 100, 2, 'Malygos 25 - Summon Power Spark'),
(3173400, 2, 61693, 10000, 10000, 10000, 10000, 0, 0, 0, 100, 2, 'Malygos 25 - Arcane Storm'),

(2885901, 0, 56272, 15000, 15000, 20000, 25000, 0, 0, 0, 100, 2, 'Malygos 10 - Arcane Breath'),
(2885901, 1, 56140, 10000, 10000, 30000, 30000, 0, 0, 0, 100, 2, 'Malygos 10 - Summon Power Spark'),
(2885901, 2, 61693, 10000, 10000, 10000, 10000, 0, 0, 0, 100, 2, 'Malygos 10 - Arcane Storm'),
(3173401, 0, 60072, 15000, 15000, 20000, 25000, 0, 0, 0, 100, 2, 'Malygos 25 - Arcane Breath'),
(3173401, 1, 56140, 10000, 10000, 30000, 30000, 0, 0, 0, 100, 2, 'Malygos 25 - Summon Power Spark'),
(3173401, 2, 61694, 10000, 10000, 10000, 10000, 0, 0, 0, 100, 2, 'Malygos 25 - Arcane Storm'),

(2885902, 0, 57459, 20000, 20000, 3000, 5000, 0, 0, 0, 100, 2, 'Malygos 10 - Arcane Storm'),
(2885902, 1, 57432, 15000, 15000, 8000, 8000, 0, 0, 0, 100, 2, 'Malygos 10 - Arcane Pulse'),
(2885902, 2, 57407, 10000, 10000, 15000, 15000, 0, 0, 0, 100, 2, 'Malygos 10 - Surge of Power'),
(2885902, 3, 57430, 25000, 25000, 15000, 15000, 0, 100, 0, 100, 2, 'Malygos 10 - Static Field'),
(3173402, 0, 57459, 20000, 20000, 3000, 5000, 0, 0, 0, 100, 2, 'Malygos 25 - Arcane Storm'),
(3173402, 1, 57432, 15000, 15000, 8000, 8000, 0, 0, 0, 100, 2, 'Malygos 25 - Arcane Pulse'),
(3173402, 2, 60936, 10000, 10000, 15000, 15000, 0, 0, 0, 100, 2, 'Malygos 25 - Surge of Power'),
(3173402, 3, 57430, 25000, 25000, 15000, 15000, 0, 100, 0, 100, 2, 'Malygos 25 - Static Field');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2885900, 3173400, 2885901, 3173401,2885902,3173402);
INSERT INTO `creature_spell_list_entry` VALUES
(2885900, 'EOE - Malygos (10) Initial', 0, 0),
(3173400, 'EOE - Malygos (25) Initial', 0, 0),
(2885901, 'EOE - Malygos (10) Repeat', 0, 0),
(3173401, 'EOE - Malygos (25) Repeat', 0, 0),
(2885902, 'EOE - Malygos (10) Dragon Phase', 0, 0),
(3173402, 'EOE - Malygos (25) Dragon Phase', 0, 0);

UPDATE `creature_template` SET `SpellList`=2885900 WHERE `entry` IN (28859);
UPDATE `creature_template` SET `SpellList`=3173400 WHERE `entry` IN (31734);

UPDATE creature_template SET SpeedWalk=20/2.5,SpeedRun=20/7 WHERE entry=30161;

UPDATE broadcast_text SET ChatTypeId=3,SoundEntriesID1=0 WHERE Id=20021;
UPDATE broadcast_text SET ChatTypeId=3,SoundEntriesID1=0 WHERE Id=32957;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14540 WHERE Id=31790;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14539 WHERE Id=31789;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14538 WHERE Id=31788;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14537 WHERE Id=31787;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14532 WHERE Id=31782;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14536 WHERE Id=31786;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14535 WHERE Id=31785;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14534 WHERE Id=31784;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14531 WHERE Id=31780;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14530 WHERE Id=31779;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14529 WHERE Id=31778;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14528 WHERE Id=31777;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14527 WHERE Id=31776;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14526 WHERE Id=31775;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14524 WHERE Id=31773;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14518 WHERE Id=31781;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14523 WHERE Id=31765;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14522 WHERE Id=31772;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14521 WHERE Id=31769;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14520 WHERE Id=31768;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14519 WHERE Id=31767;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14533 WHERE Id=31783;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14525 WHERE Id=31774;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14517 WHERE Id=31764;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14516 WHERE Id=31763;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14515 WHERE Id=31762;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14514 WHERE Id=31761;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14513 WHERE Id=31760;
UPDATE broadcast_text SET ChatTypeId=1,SoundEntriesID1=14512 WHERE Id=31759;

