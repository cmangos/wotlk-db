-- q.11256 'Skorn Must Fall!'
-- available after q.11281 'Mimicking Nature's Call' finished
UPDATE quest_template SET PrevQuestId = 11281 WHERE entry = 11256;

-- q.11297 'Keeping Watch on the Interlopers'
-- available after q.11275 'Making the Horn' finished
UPDATE quest_template SET PrevQuestId = 11275 WHERE entry = 11297;

-- q.11311 'Suppressing the Elements'
-- no prev q req.
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 11311;

-- q.11312 'The Frozen Glade'
-- available after q.11275 'Making the Horn' finished
UPDATE quest_template SET PrevQuestId = 11275 WHERE entry = 11312;

-- q.11265 'Of Keys and Cages' - H
-- available after q.11261 'The Conqueror of Skorn!' finished
UPDATE quest_template SET PrevQuestId = 11261 WHERE entry = 11265;

-- q.11316 'Spawn of the Twisted Glade'
-- q.11319 'Seeds of the Blacksouled Keepers'
-- available after q.11315 'Wild Vines' & q.11314 'The Fallen Sisters' finished
UPDATE quest_template SET RequiredCondition = 20019 WHERE entry IN (11316,11319);
DELETE FROM conditions WHERE condition_entry IN (20017,20018,20019);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20017, 8, 11314, 0), -- q.11314 'The Fallen Sisters' finished 
(20018, 8, 11315, 0), -- q.11314 'Wild Vines' finished 
(20019, -1, 20018, 20017);

-- q.11428 'Keeper Witherleaf'
-- available after q.11316 'Spawn of the Twisted Glade' & q.11319 'Seeds of the Blacksouled Keepers' finished
UPDATE quest_template SET RequiredCondition = 20022 WHERE entry = 11428;
DELETE FROM conditions WHERE condition_entry IN (20020,20021,20022);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20020, 8, 11316, 0), -- q.11316 'Spawn of the Twisted Glade' finished 
(20021, 8, 11319, 0), -- q.11319 'Seeds of the Blacksouled Keepers' finished 
(20022, -1, 20021, 20020);
