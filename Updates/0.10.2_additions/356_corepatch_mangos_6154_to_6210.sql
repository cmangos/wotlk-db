-- 6164
DELETE FROM `command` WHERE `name` IN ('gm fly');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('gm fly',3,'Syntax: .gm fly on/off\r\nEnable/disable gm fly mode.');

-- 6171
DELETE FROM spell_affect WHERE (entry = 16757 OR entry = 16758) AND effectId = 1;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
16757, 1, 0x240
), (
16758, 1, 0x240
);
DELETE FROM spell_affect WHERE (entry = 17904 OR (entry >= 17912 AND entry <= 17916)) AND effectId = 0;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
17904, 0, 0
), (
17912, 0, 0
), (
17913, 0, 0
), (
17914, 0, 0
), (
17915, 0, 0
), (
17916, 0, 0
);
DELETE FROM spell_affect WHERE entry = 21899 AND effectId = 0;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
21899, 0, 0x100
);
DELETE FROM spell_affect WHERE entry = 24542 AND effectId = 1;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
24542, 1, 0xF0
);
DELETE FROM spell_affect WHERE entry = 24546 AND effectId = 1;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
24546, 1, 0x400041E00
);
DELETE FROM spell_affect WHERE (entry = 29187 OR entry = 29189 OR entry = 29191) AND effectId = 1;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
29187, 1, 0x4103000340750
), (
29189, 1, 0x4103000340750
), (
29191, 1, 0x4103000340750
);
DELETE FROM spell_affect WHERE entry = 39805 AND effectId = 1;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
39805, 1, 0x3
);
DELETE FROM spell_affect WHERE entry = 44293 AND effectId = 0;
INSERT INTO spell_affect ( `entry` , `effectId` , `SpellFamilyMask` )
VALUES (
44293, 0, 0x200
);

-- 6179
DELETE FROM `mangos_string` WHERE `entry` IN (589,590,591);
INSERT INTO `mangos_string` VALUES
(589,'   Point movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(590,'   Fear movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(591,'   Distract movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6193
DELETE FROM `spell_proc_event` WHERE `entry` IN (39442,39438,39440,39444);
INSERT INTO `spell_proc_event` VALUES
(39442,0,0,0,0,0x0000000000000000,0x00020001,0),
(39438,0,0,0,0,0x0000000000000000,0x00080001,0),
(39440,0,0,0,0,0x0000000000000000,0x00020000,0),
(39444,0,0,0,0,0x0000000000000000,0x00100002,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (36111,39443);
INSERT INTO `spell_proc_event` VALUES
(36111,0,0,0,0,0x0000000000000000,0x00000001,0),
(39443,0,0,0,0,0x0000000000000000,0x00401000,0);

-- 6198
DELETE FROM `spell_proc_event` WHERE `entry` IN (32748);
INSERT INTO `spell_proc_event` VALUES
(32748,0,0,0,8,0x0000000100000000,0x00080000,0);

-- 6210
DELETE FROM `spell_proc_event` WHERE `entry` IN (38299);
INSERT INTO `spell_proc_event` VALUES
(38299,0,0,0,0,0x0000000000000000,0x08000000,0);
