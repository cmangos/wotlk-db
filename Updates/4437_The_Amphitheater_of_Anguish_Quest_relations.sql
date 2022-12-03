-- Zul'Drak - The Amphitheater of Anguish - Quest Chain Relations

-- q.12932 'The Amphitheater of Anguish: Yggdras!' - normal
-- not available to players if q.9977 'The Ring of Blood: The Final Challenge' completed
DELETE FROM conditions WHERE condition_entry = 20527;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20527, 8, 9977, 0, 1);
UPDATE quest_template SET ExclusiveGroup = 0, RequiredCondition = 20527 WHERE entry = 12932;
-- q.12954 'The Amphitheater of Anguish: Yggdras!' 
-- after ring of blood completed only
DELETE FROM conditions WHERE condition_entry = 20528;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20528, 8, 9977, 0);
UPDATE quest_template SET PrevQuestId = 0, ExclusiveGroup = 0, RequiredCondition = 20528 WHERE entry = 12954;

-- q.12933 'The Amphitheater of Anguish: Magnataur!'
UPDATE quest_template SET PrevQuestId = 0, ExclusiveGroup = 0, RequiredCondition = 20531 WHERE entry = 12933;
DELETE FROM conditions WHERE condition_entry BETWEEN 20529 AND 20531;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20529, 8, 12932, 0),
(20530, 8, 12954, 0),
(20531, -2, 20530, 20529);
UPDATE quest_template SET PrevQuestId = 0, ExclusiveGroup = 0, RequiredCondition = 20531 WHERE entry = 12954;

-- q.12974 'The Champion's Call!'
-- not available to players if q.12932 or q.12954 'The Ring of Blood: The Final Challenge' taken or completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20532 AND 20538;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20532, 9, 12932, 0, 1),
(20533, 8, 12932, 0, 1),
(20534, -1, 20533, 20532, 0),
(20535, 9, 12954, 0, 1),
(20536, 8, 12954, 0, 1),
(20537, -1, 20536, 20535, 0),
(20538, -1, 20537, 20534, 0);
UPDATE quest_template SET RequiredCondition = 20538 WHERE entry = 12974;
