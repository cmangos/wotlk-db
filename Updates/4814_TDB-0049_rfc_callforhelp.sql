-- Reduce default CallForHelp for RFC npcs
UPDATE `creature_template` SET `CallForHelp` = 5 WHERE `entry` IN (11318,11319,11320,11321,11322,11323,11324);

