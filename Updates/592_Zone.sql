-- Draenei Zone - polishing PArt 3.

-- q.9505 'The Prophecy of Velen' 
UPDATE quest_template SET DetailsEmote1 = 1 WHERE entry = 9505;

-- Gossip for Tuluun Corrected
DELETE FROM gossip_menu WHERE entry = 7467;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7467, 8785, 0, 94),
(7467, 9050, 0, 93);

-- Stillpine Ancestor Akida
-- Run Speed reduced
UPDATE creature_template SET SpeedRun = 0.9 WHERE Entry = 17379;

-- Stillpine Ancestor Coo
-- Walk Speed reduced
UPDATE creature_template SET SpeedWalk = 1 WHERE Entry = 17391;

-- q.9513 'Reclaiming the Ruins' 
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 2000, DetailsEmoteDelay3 = 5000 WHERE entry = 9513;
