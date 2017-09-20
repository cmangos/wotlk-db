-- Demonic Crystal Prisons(q.10528) -H -A (Update2)
-- @killerwife
-- This makes the animations more clean. Artor has 383 emote in creature_addon and this prevents the creature from making proper death animation as in videos. 
-- Also completeEmote=0 because a gossiping hovering corpse is not funny :D
UPDATE quest_template SET CompleteEmote = 0 WHERE entry = 10528;
DELETE FROM dbscripts_on_quest_end WHERE id = 10528;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10528,0,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Artor - Set Emote 0'),
(10528,1,15,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'Artor - Cast Death Touch'),
(10528,4,0,0,0,21318,25,0,2000005645,0,0,0,0,0,0,0,'Artor - Make spirit talk');
