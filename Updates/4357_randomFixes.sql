-- q.9213 'The Shadow Guard'
-- q.9211 'The Ice Guard'
UPDATE quest_template SET SpecialFlags = SpecialFlags|1 WHERE entry IN (9211,9213);
-- q.9221 - correct
-- q.9226 - correct
-- q.9223 - correct
-- q.9227 - correct
-- q.9228 - correct
-- q.9222 - correct
-- q.9224 - correct
-- q.9225 - correct

-- q.9232 'The Only Song I Know...'
-- q.9229 'The Fate of Ramaladni'
UPDATE quest_template SET PrevQuestId = 9033 WHERE entry IN (9229,9232);
