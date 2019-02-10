-- Second wave of quests in Fort Vildervar - Howling Fjord
-- q.11302 'The Enigmatic Frost Nymphs'
-- q.11346 'The Book of Runes'
-- q.11355 'March of the Giants'
-- According to ppls comments + all vids i checked... it looks like all 3 quests req. any of first wave of quests done in that area to unlock.
UPDATE quest_template SET RequiredCondition = 20014, PrevQuestId = 0 WHERE entry IN (11302,11346,11355);
DELETE FROM conditions WHERE condition_entry BETWEEN 20008 AND 20014;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20008, 8, 11329, 0), -- 'I'll Try Anything!'
(20009, 8, 11269, 0), -- 'Down to the Wire'
(20010, 8, 11292, 0), -- 'Preying Upon the Weak'
(20011, 8, 11284, 0), -- 'The Yeti Next Door'
(20012, -2, 20011, 20010),
(20013, -2, 20009, 20008),
(20014, -2, 20013, 20012);
