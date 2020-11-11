-- q.12474 'To Fordragon Hold!'
UPDATE creature_involvedrelation SET id = 27872 WHERE quest = 12474;
DELETE FROM dbscripts_on_quest_end WHERE id = 12474;
UPDATE quest_template SET CompleteScript = 0 WHERE entry = 12474;
DELETE FROM spell_area WHERE spell = 46999 AND racemask = 1101;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(46999,4169,0,0,0,20174,0,1101,2,1),
(46999,4170,0,0,0,20174,0,1101,2,1),
(46999,4171,0,0,0,20174,0,1101,2,1),
(46999,4172,0,0,0,20174,0,1101,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 20170 AND 20174;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20170, 9, 12474, 0, 0),
(20171, 8, 12474, 0, 0),
(20172, -2, 20171, 20170, 0),
(20173, 8, 12499, 0, 1), -- not finished yet
(20174, -1, 20173, 20172, 0);

-- q.12224 'The Kor'kron Vanguard!'
DELETE FROM spell_area WHERE spell = 46999 AND racemask = 690;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(46999,4169,0,0,0,20179,0,690,2,1),
(46999,4170,0,0,0,20179,0,690,2,1),
(46999,4171,0,0,0,20179,0,690,2,1),
(46999,4172,0,0,0,20179,0,690,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 20175 AND 20179;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20175, 9, 12224, 0, 0),
(20176, 8, 12224, 0, 0),
(20177, -2, 20176, 20175, 0),
(20178, 8, 12500, 0, 1), -- not finished yet
(20179, -1, 20178, 20177, 0);