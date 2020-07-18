-- q.12487 'To Conquest Hold, But Be Careful!'
-- can be started without visiting Agmars Hammer' in Dragonblight
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 12487;
