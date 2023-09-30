-- q.12805 'Salvaging Life's Strength'
DELETE FROM conditions WHERE condition_entry IN (20642);
INSERT INTO conditions (condition_entry, type, value1, comments) VALUES
(20642, 1, 54189, 'Quest 12805: npc has aura');
DELETE FROM dbscripts_on_spell WHERE id IN (54190);
INSERT INTO dbscripts_on_spell (id, priority, command, datalong, data_flags, condition_id, comments) VALUES
(54190, 0, 8, 29303, 0, 20642, 'Quest 12805: kill credit'),
(54190, 1, 14, 54189, 6, 20642, 'Quest 12805: preventing reuse');
