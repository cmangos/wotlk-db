-- Nexus-Prince Shaffar 18344,20266
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~8 WHERE `entry` = 18344;
UPDATE `creature_template` SET `PickpocketLootId` = 18344, `EquipmentTemplateId` = 1520 WHERE `entry` = 20266;
