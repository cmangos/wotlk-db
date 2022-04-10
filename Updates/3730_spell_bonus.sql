-- Not reQ for WoTLK
UPDATE spell_bonus_data SET direct_bonus = 0, dot_bonus = 0 WHERE entry IN (17,11426,58597);
