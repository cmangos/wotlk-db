-- Resolve DBScript Diff for Auchenai Crypts

-- Delete dbscript_string moved to tbc range for alignment
-- DELETE FROM `dbscript_string` WHERE `entry` IN ();

-- Add creature_equip_template matching creature_template.entry
-- DELETE FROM `creature_equip_template` WHERE `entry` IN (578,1529,109,50,269,572); -- cant be removed all used
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18493, 30310, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18495, 27836, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18497, 5304, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18521, 2178, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18524, 23906, 0, 0);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (18702, 13698, 0, 0);

UPDATE `creature_template` SET `EquipmentTemplateId` = 18493 WHERE `entry` = 18493;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18495 WHERE `entry` = 18495;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18497 WHERE `entry` = 18497;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18521 WHERE `entry` = 18521;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18524 WHERE `entry` = 18524;
UPDATE `creature_template` SET `EquipmentTemplateId` = 18702 WHERE `entry` = 18702;

