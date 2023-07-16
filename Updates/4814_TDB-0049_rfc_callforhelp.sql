-- Reduce default CallForHelp for RFC npcs
UPDATE `creature_template` SET `CallForHelp` = 7 WHERE `entry` IN (11318,11319,11320,11321);
UPDATE `creature_template` SET `CallForHelp` = 5 WHERE `entry` IN (11322,11323,11324);

