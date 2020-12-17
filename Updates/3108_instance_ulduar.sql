
-- Ulduar teleport
-- Antechamber, Shattered walkway, Conservatory of Life, Spark of Imagination
DELETE FROM spell_script_target WHERE entry IN (64030,64029,64024,65061);
INSERT INTO spell_script_target VALUES
(64030,3,6030013,0),
(64024,3,6030009,0),
(64029,3,6030007,0),
(65061,3,6031366,0);
