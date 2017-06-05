-- q.11652 'The Plains of Nasam'
-- Belongs to ExclusiveGroup.. Player should finish all of included quests ..not only one!
UPDATE quest_template SET ExclusiveGroup = -11652 WHERE entry IN (11652,11705,11722);

--  ID - 47917 Siege Tank Control
--  You may only drive the tank at the Coast of Echoes and the Plains of Nasam. (players wont be able to load in wrong zone / automatic unload doesnt work yet)
DELETE FROM spell_area WHERE spell = 47917;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(47917,4027,0,0,0,0,0,0,2,0),
(47917,4130,0,0,0,0,0,0,2,0);
