-- remove mana burn spell power coefficient
DELETE FROM spell_bonus_data WHERE entry = 8129;
INSERT INTO spell_bonus_data(entry,direct_bonus) VALUES
(8129,0);
