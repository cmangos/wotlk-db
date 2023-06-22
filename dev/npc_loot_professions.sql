DELETE FROM `reference_loot_template` WHERE `entry` = 10006;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 10006;
DELETE FROM `item_loot_template` WHERE `entry` = 33926 AND `mincountOrRef` = -10006;
INSERT INTO `item_loot_template` (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(33926, 50501, 20, 1, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!');
