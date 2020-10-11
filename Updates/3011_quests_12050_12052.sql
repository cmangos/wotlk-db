-- q.12050 'Lumber Hack'
-- q.12052 'Harp on This!'

-- Xink
-- gossip available during q.12050 'Lumber Hack' & missing q. item
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 942201, condition_id = 20112 WHERE menu_id = 9422;
DELETE FROM conditions WHERE condition_entry BETWEEN 20110 AND 20112;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20110,9,12050,0,0,0,0),
(20111,23,36734,1,0,0,1),
(20112,-1,20111,20110,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 942201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(942201,0,15,52872,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Xink's Shredder 27061
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 27061;
DELETE FROM creature_template_spells WHERE entry = 27061;
INSERT INTO creature_template_spells(entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(27061,47921,47938,49857,47966,0,47939,0,0);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 27061;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(27061, 47920, 0, 0, 0, 1, 0);
DELETE FROM dbscripts_on_relay WHERE id = 20364;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20364,0,37,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Xink\'s Shredder EAI: move towards summoner');
-- Coldwind Tree 188539
-- Poster Knife 190353
DELETE FROM dbscripts_on_go_template_use WHERE id IN (188539,190353);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(188539,0,40,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(190353,0,40,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry = 47939;
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(47939,0,188539,0),
(47939,0,190353,0);
