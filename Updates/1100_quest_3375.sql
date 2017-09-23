-- Add proper conditions for getting Replacement Phial q.3375
-- http://www.wowhead.com/quest=3375/replacement-phial#comments:id=427683
-- Also made the quest repeatable
-- Note that the comment states the quest becomes unavailable after completing q.2361, but I believe that is incorrect since the last quest to use the Scrying Bowl is q.2204 (with the same name)
DELETE FROM conditions WHERE condition_entry BETWEEN 1259 AND 1266;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1259, 9, 2200, 0), -- Back to Uldaman accepted
(1260, 8, 2200, 0), -- Back to Uldaman rewarded
(1261, 8, 2204, 0), -- Restoring the Necklace rewarded
(1262, 24, 7667, 1), -- Player does not own item 7667
(1263, -3, 1261, 0), -- Restoring the Necklace NOT rewarded
(1264, -2, 1259, 1260), -- Back to Uldaman accepted OR rewarded
(1265, -1, 1263, 1264), -- (Restoring the Necklace NOT rewarded) AND (Back to Uldaman accepted OR rewarded)
(1266, -1, 1265, 1262); -- ((Restoring the Necklace NOT rewarded) AND (Back to Uldaman accepted OR rewarded)) AND Player does not own item 7667

UPDATE quest_template SET SpecialFlags = 1, RequiredCondition = 1266 WHERE entry = 3375;
