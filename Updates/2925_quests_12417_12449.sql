-- q.12417 'Return to the Earth' - A
-- q.12449 'Return to the Earth' - H
DELETE FROM dbscripts_on_quest_start WHERE id IN (12417,12449);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12449,100,0,0,0,0,0,0,0,2000020449,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry = 2000020449;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020449,'Be sure to go through the southern canyon when entering and exiting the shrine, $n. You will know the canyons where the battle is waged by the abominations that guard them... keep your distance.',0,0,0,1,NULL);
-- also remove old hacks
UPDATE quest_template SET ReqSourceCount1 = 6, ReqSpellCast1 = 0, StartScript = 12449 WHERE entry = 12449;
UPDATE quest_template SET ReqSourceCount1 = 6, ReqSpellCast1 = 0, StartScript = 12449 WHERE entry = 12417;

-- Ruby Keeper 27530
-- Part of Ruby Keeper EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20323);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20323,0,4,59,33554432,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ruby Keeper EAI: set UnitFlag'),
(20323,10000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ruby Keeper EAI: delay desp');
