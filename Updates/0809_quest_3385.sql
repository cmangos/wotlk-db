-- Fix incorrect Tailoring requirement q.3385 
UPDATE quest_template SET RequiredSkillValue = 1 WHERE entry = 3385;
