-- q.12976 'A Monument to the Fallen'
-- See Invis Tier 2 - Area added (horn)
DELETE FROM spell_area WHERE spell = 56772 AND area = 4438;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(56772,4438,0,0,0,20927,0,0,2,1);
DELETE FROM conditions WHERE condition_entry IN (20927);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20927, 8, 12976, 0, 0, 0, 0); -- rewarded
