-- q.11983 'Blood Oath of the Horde' - Update
-- player will be able to see all Taunkas in 'Agmars Hammer'
DELETE FROM spell_area WHERE spell = 47418 AND area = 4165;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(47418,4165,0,0,0,20056,0,0,2,1);
DELETE FROM `conditions` WHERE `condition_entry` IN (20056);
INSERT INTO `conditions` (condition_entry, type, value1, value2) VALUES
(20056, 8, 11983, 0);
