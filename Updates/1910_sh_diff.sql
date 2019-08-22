-- Resolve DBScript Diff for Sethekk Halls

-- Delete dbscript_string moved to tbc range for alignment
DELETE FROM `dbscript_string` WHERE `entry` IN (
2000000600, -- 2000020108 "Thank you for freeing me, $n! I'm going to make my way to Shattrath!"
2000000601 --  2000020109 "Well done! Hurry, though, we don't want to be caught!"
);

-- Add creature_equip_template matching creature_template.entry
-- DELETE FROM `creature_equip_template` WHERE `entry` IN (1237,99,96,94); -- cant be removed all used
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18319, 2711, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18325, 12864, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18327, 12329, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18328, 12748, 0, 0);

UPDATE `creature_template` SET `EquipmentTemplateId` = 18319 WHERE `entry` = 18319;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18325 WHERE `entry` = 18325;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18327 WHERE `entry` = 18327;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18328 WHERE `entry` = 18328;

