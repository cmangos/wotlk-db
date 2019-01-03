-- Add phasing in battleground by spell_area and conditions

-- conditions for phasing
SET @conditionId=3149;
DELETE FROM conditions WHERE condition_entry IN (@conditionId, @conditionId+1);
INSERT INTO conditions(condition_entry,type,value1,value2,comments) VALUES
(@conditionId, 38, 4384, 0,'SotA - Alliance defending phasing'),
(@conditionId+1, 38, 4384, 1,'SotA - Horde defending phasing');

-- spell aura conditions for phasing
DELETE FROM spell_area WHERE spell IN (60027,60028);
INSERT INTO spell_area (spell,area,quest_start,quest_start_active,quest_end,condition_id,aura_spell,racemask,gender,autocast) VALUES
(60027, 4384, 0, 0, 0, @conditionId, 0, 0, 0, 1),
(60028, 4384, 0, 0, 0, @conditionId+1, 0, 0, 0, 1);
