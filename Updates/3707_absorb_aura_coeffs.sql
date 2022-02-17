UPDATE spell_bonus_data SET direct_bonus=0.1 WHERE entry IN(6143,543);
UPDATE spell_bonus_data SET direct_bonus=0.3 WHERE entry IN(6229);
INSERT INTO spell_bonus_data(entry,direct_bonus,comments) VALUES
(58597,0.75,'Paladin - Sacred Shield');

