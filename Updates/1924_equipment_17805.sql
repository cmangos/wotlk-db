--  Add Entry Equipment for Coilfang Slavemaster 17805
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (17805, 2023, 0, 0);
UPDATE `creature_template` SET `EquipmentTemplateId` = 17805 WHERE `entry` = 17805;

