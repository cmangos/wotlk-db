-- q.13313 'Blinding the Eyes in the Sky' - H
-- q.13331 'Keeping the Alliance Blind' - H -- Daily
-- q.13295 'Get the Message' - A
-- q.13297 'Capture More Dispatches' - A -- Daily
DELETE FROM spell_area WHERE spell IN (60462,60463);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(60462,4540,13313,1,13313,0,0,0,2,1),
(60462,4540,13331,1,13331,0,0,0,2,1),
(60463,4515,13295,1,13295,0,0,0,2,1),
(60463,4515,13297,1,13297,0,0,0,2,1),
(60463,4523,13295,1,13295,0,0,0,2,1),
(60463,4523,13297,1,13297,0,0,0,2,1);
-- Orgrim's Hammer Scout 32201
DELETE FROM creature_template_addon WHERE entry = 32201;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32201,27525,0,1,0,0,0,NULL); -- 60481
