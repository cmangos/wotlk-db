-- q.13889 'Hungry, Hungry Hatchling'
DELETE FROM spell_script_target WHERE entry IN(68358);
INSERT INTO spell_script_target VALUES
(68358,1,34320,0);
-- Mor'vek 11701
UPDATE creature_template SET GossipMenuId=10438, MovementType = 1 WHERE Entry = 11701;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 11701;
DELETE FROM gossip_menu WHERE entry IN (10438);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(10438, 14474, 0, 0);
DELETE FROM `creature_linking_template` WHERE `master_entry` = 11701;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(34158, 1, 11701, 512, 0);
-- quest relations
-- Venomhide Eggs 13887
UPDATE quest_template SET PrevQuestId = 13850 WHERE `entry` = 13887;
-- They Grow Up So Fast 13906
UPDATE quest_template SET PrevQuestId = 13887 WHERE `entry` = 13906;
