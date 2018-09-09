-- Summoned Searing Totem 22895 s.39591
UPDATE `creature_template` SET `AIName` = 'TotemAI' WHERE `entry` = 22895;
DELETE FROM `creature_template_spells` WHERE `entry` = 22895;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES 
(22895, 39592);
