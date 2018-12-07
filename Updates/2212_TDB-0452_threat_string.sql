-- has accompanying core update
DELETE FROM `mangos_string` WHERE `entry` IN (1702);
INSERT INTO `mangos_string` VALUES
(1702,'Player |cffff0000%s|r [GUID: %u] has |cffff0000%f|r threat, taunt state %u and hostile state %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
