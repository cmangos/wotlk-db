-- Luma Skymother 25697
UPDATE creature_template SET GossipMenuId = 11417 WHERE entry = 25697;
DELETE FROM gossip_menu WHERE entry = 11417;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11417,12390);
DELETE FROM npc_text WHERE id IN (12390);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12390);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12390, 0, 24551);
-- Earthen Ring Flamecaller 25754
UPDATE creature_template SET GossipMenuId = 9260 WHERE entry = 25754;
DELETE FROM gossip_menu WHERE entry = 9260;
INSERT INTO gossip_menu (entry,text_id) VALUES
(9260,12572);
DELETE FROM npc_text WHERE id IN (12572);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12572);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12572, 0, 25373);
-- Shaman Beam Bunny 000 - 003
UPDATE creature_template SET MovementType = 3 WHERE entry IN (25964,25965,25966);
-- text updates
UPDATE broadcast_text SET ChatTypeId = 3 WHERE Id BETWEEN 24930 AND 24932;
-- Event starts from objects 'Ice Stone 187882' gossip instead of quest script
-- q.11691 Summon Ahune
UPDATE quest_template SET prevQuestId = 11696, RewSpellCast = 0, CompleteScript = 0 WHERE entry = 11691;
DELETE FROM dbscripts_on_quest_end WHERE id = 11691;
-- Ice Stone 187882
UPDATE gameobject_template SET Data3 = 11389 WHERE entry = 187882;
DELETE FROM gossip_menu WHERE entry = 11389;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11389,15864);
DELETE FROM npc_text WHERE id IN (15864);
DELETE FROM npc_text_broadcast_text WHERE Id IN (15864);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(15864, 0, 25213);
DELETE FROM gossip_menu_option WHERE menu_id = 11389;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(11389,1,0,'Disturb the stone and summon Lord Ahune.',40443,1,1,-1,0,1138901,0,0,NULL,0,0);
-- gossip Scripts should also use ID+01
DELETE FROM dbscripts_on_gossip WHERE `id` IN (7540,7520);
UPDATE gossip_menu_option SET action_script_id = 754001 WHERE menu_id = 7540;
UPDATE gossip_menu_option SET action_script_id = 752001 WHERE menu_id = 7520;
-- Spell Target
DELETE FROM spell_script_target WHERE entry IN (46735);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(46735, 1, 26190);
-- Id: 46320
-- Name: Slippery Floor Ambient Periodic
DELETE FROM `dbscripts_on_spell` WHERE `id` IN (46320);
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(46320, 1, 15, 45946, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast 45946 t->t'),
(46320, 10, 15, 45947, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'cast 45947 t->t');


-- Wotlk+ updates
-- Skarthis the Summoner 40446
UPDATE creature_template SET UnitClass = 2, MinLevelMana = 3994, MaxLevelMana = 3994 WHERE entry = 40446;
-- Ahunite Frostwind 25757
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, faction = 1998, UnitClass = 2, MinLevelMana = 3994, MaxLevelMana = 3994 WHERE entry = 25757;
UPDATE creature_template SET UnitClass = 2 WHERE entry = 26341;
-- Frozen Core 25865
UPDATE creature_template SET Expansion = 2 WHERE entry IN (25865,26339);
-- Conditions reQ for Ahune Event
DELETE FROM conditions WHERE condition_entry BETWEEN 20311 AND 20312;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20311, 42, 20001, 0, 1, 0, 'The Slave Pens - Midsummer Fire Festival - Creatures spawned with event "ON"'),
(20312, 42, 20001, 0, 0, 0, 'The Slave Pens - Midsummer Fire Festival - Creatures spawned with event "OFF"');
