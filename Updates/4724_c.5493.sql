-- Arnold Leland 5493
-- shouldn't teach Players `Master Fishing`
DELETE FROM `npc_trainer` WHERE entry = 5493;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES
(5493,7733,100,0,0,5,0),
(5493,7734,500,356,50,10,0),
(5493,18249,25000,356,200,10,0),
(5493,54083,10000,356,125,10,0);
UPDATE `creature_template` SET `TrainerTemplateId` = 0 WHERE `entry` IN (5493);
