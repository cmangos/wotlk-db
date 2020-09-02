-- q.12211 'Let Them Not Rise!'
-- becomes available after q.12206 'Blighted Last Rites' completed
UPDATE quest_template SET PrevQuestId = 12206 WHERE entry = 12211;

-- q.12230 'Stealing from the Siegesmiths'
-- becomes available after q.12211 'Let Them Not Rise!' completed
UPDATE quest_template SET PrevQuestId = 12211 WHERE entry = 12230;

-- q.12240 'A Means to an End'
-- q.12234 'Need to Know'
-- becomes available after q.12230 'Stealing from the Siegesmiths' completed
UPDATE quest_template SET PrevQuestId = 12230 WHERE entry IN (12234,12240);

-- q.12214 'Fresh Remounts'
-- becomes available after q.12209 'Materiel Plunder' completed
UPDATE quest_template SET PrevQuestId = 12209 WHERE entry = 12214;

-- q.12304 'Beachfront Property'
-- correct npc used
UPDATE creature_involvedrelation SET id = 32599 WHERE quest = 12304;
UPDATE creature_questrelation SET id = 32599 WHERE quest = 12304;

-- q.12245 'No Mercy for the Captured'
-- becomes available after q.12205 'WANTED: The Scarlet Onslaught' completed
UPDATE quest_template SET PrevQuestId = 12205 WHERE entry = 12245;
