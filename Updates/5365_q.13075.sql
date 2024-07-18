-- q.13075 'The Boon of Remulos'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13075);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13075,0,15,57670,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 57670');
DELETE FROM dbscripts_on_quest_end WHERE id IN (13075);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13075,0,15,57678,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 57678');
UPDATE quest_template SET StartScript = 13075, CompleteScript = 13075 WHERE entry IN (13075);

-- Moonglade Return Portal 32788
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitClass = 2, Faction = 35, UnitFlags = 768 WHERE entry = 32788;
DELETE FROM creature_template_addon WHERE entry IN (32788);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32788,0,0,0,0,0,0,'61722');
DELETE FROM npc_spellclick_spells WHERE npc_entry IN(32788);
INSERT INTO npc_spellclick_spells(npc_entry, spell_id, cast_flags, quest_start, quest_start_active, quest_end, condition_id) VALUES
(32788,57539,1,13075,1,13075,0);
-- poss corrected for spell 57541
DELETE FROM spell_target_position WHERE Id IN(57541,57539);
INSERT INTO spell_target_position VALUES
(57541,1,7842.86,-2213.05,470.847,4.6259999),
(57539,571,6215.54,-8.40005,410.165,3.838589);
