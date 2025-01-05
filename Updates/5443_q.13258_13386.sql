-- q.13258 'Opportunity' - H
DELETE FROM spell_area WHERE spell = 59087;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59087,4522,0,0,0,20794,0,0,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 20791 AND 20794;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20791,9,13258,0,0,0,''),
(20792,8,13258,0,0,0,''),
(20793,-2,20792,20791,0,0,''),
(20794,-1,20793,21,0,0,'');
-- q.13386 'Exploiting an Opening' - A
DELETE FROM spell_area WHERE spell = 59073;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59073,4522,0,0,0,20798,0,0,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 20795 AND 20798;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20795,9,13386,0,0,0,''),
(20796,8,13386,0,0,0,''),
(20797,-2,20796,20795,0,0,''),
(20798,-1,20797,22,0,0,'');
