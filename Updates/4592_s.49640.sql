-- Make The Aspen Grove Trapper, Trader & Supplier Hostile to Players after q.12308 completed
DELETE FROM spell_area WHERE spell = 49640;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(49640,394,0,0,0,20540,0,0,2,1),
(49640,4239,0,0,0,20540,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 20540;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20540,8,12308,0,0,0,0);
