-- q.13356 'Retest Now' - H
-- q.13357 'Retest Now' - H -- Daily
-- q.13321 'Retest Now' - A
-- q.13322 'Retest Now' - A -- Daily
-- remove 1 item restriction for `Tainted Essence`
UPDATE quest_template SET ReqSourceCount1 = 10 WHERE entry IN (13321);
UPDATE quest_template SET ReqSourceCount2 = 10 WHERE entry IN (13322);
UPDATE quest_template SET ReqSourceCount3 = 10 WHERE entry IN (13356,13357);
-- item should drop only if player has aura 60311 with 100% drop
UPDATE creature_loot_template SET ChanceOrQuestChance = -100, condition_id = 20732 WHERE item = 44301;
DELETE FROM conditions WHERE condition_entry = 20732;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20732, 1, 60311, 0);
-- spell target corrected
DELETE FROM spell_script_target WHERE entry IN (60310);
INSERT INTO spell_script_target VALUES
(60310, 1, 32242, 0),
(60310, 1, 32244, 0),
(60310, 1, 32245, 0);
