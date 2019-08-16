-- Add missing template for Mysterious Wailing Caverns Chest 180055
-- Atleast displayId` is wrong and should be something like 51 with maybe data2 being 2 as is 180024
DELETE FROM `gameobject_template` WHERE `entry` = 180055; -- tbc-db
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `ScriptName`) VALUES
(180055, 2, 318, 'Mysterious Wailing Caverns Chest', '', '', 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

