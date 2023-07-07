-- Quest 8924 'Hunting for Ectoplasm'
-- https://youtu.be/ajD5SQ_3Mpc?t=183

-- Visual for Ectoplasmic Distiller
-- Currently only needed in tbc, but do remove/insert for any core
DELETE FROM `gameobject_template` WHERE `entry` = 181057;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `StringId`, `ScriptName`) VALUES
(181057, 8, 6659, 'Ectoplasmic Distiller', 0, 0, 0, 1.4, 0, 10, 181054, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Spell for Ectoplasmic Distiller
DELETE FROM `gameobject_template` WHERE `entry` = 181054;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `StringId`, `ScriptName`) VALUES
(181054, 6, 6659, 'Ectoplasmic Distiller Trap', 0, 0, 0, 1.4, 0, 0, 0, 27420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_ectoplasmic_distiller_trap');

-- Create conditions for q.8924 'Hunting for Ectoplasm'
DELETE FROM `conditions` WHERE `condition_entry` IN (8922, 8923, 8924);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(8922, 1, 27420, 0, 0, 0, 0, 'Target is affected by Aura ID 27420 - Ectoplasmic Distiller'),
(8923, 9, 8924, 1, 0, 0, 0, 'Quest ID 8924 Taken'),
(8924, -1, 8922, 8923, 0, 0, 0, 'Target is affected by Aura ID 27420 AND Quest ID 8924 Taken');

-- Change creature drops for quest item to require conditions
DELETE FROM `creature_loot_template` WHERE `item` IN (21935, 21936, 21937);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(7523, 21936, 80, 0, 1, 1, 8924, 'Frozen Ectoplasm'),
(7524, 21936, 80, 0, 1, 1, 8924, 'Frozen Ectoplasm'),
(8538, 21935, 80, 0, 1, 1, 8924, 'Stable Ectoplasm'),
(8539, 21935, 80, 0, 1, 1, 8924, 'Stable Ectoplasm'),
(8540, 21935, 80, 0, 1, 1, 8924, 'Stable Ectoplasm'),
(8541, 21935, 80, 0, 1, 1, 8924, 'Stable Ectoplasm'),
(8542, 21935, 80, 0, 1, 1, 8924, 'Stable Ectoplasm'),
(12178, 21937, 80, 0, 1, 1, 8924, 'Scorched Ectoplasm'),
(12179, 21937, 80, 0, 1, 1, 8924, 'Scorched Ectoplasm');
