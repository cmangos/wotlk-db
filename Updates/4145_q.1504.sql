-- q.1504 'The Binding'
-- Summon Voidwalker (Rank 1)
DELETE FROM spell_script_target WHERE entry IN (9222);
INSERT INTO spell_script_target VALUES
(9222, 0, 105576, 0);
