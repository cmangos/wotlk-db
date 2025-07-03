-- Champion PETS
-- Argent Gruntling 33239
UPDATE creature_template SET UnitClass = 1, UnitFlags = 776, NpcFlags = 1+128, CreatureTypeFlags = 0, StaticFlags4 = StaticFlags4|8|524288, GossipMenuId = 10358 WHERE Entry = 33239;
DELETE FROM creature_template_addon WHERE entry = 33239;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33239,0,0,1,0,0,0,67039);
DELETE FROM gossip_menu WHERE entry IN (10358);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(10358, 14372, 0, 0); -- Something I can do for you, Boss?
DELETE FROM npc_text_broadcast_text WHERE Id IN (14372);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14372,1,33680);
DELETE FROM npc_text WHERE id IN (14372);
DELETE FROM gossip_menu_option WHERE menu_id IN (10358);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10358,0,0,'Darkspear Champion\'s Pennant',33681,1,1,-1,0,1035801,0,0,NULL,0,21005),
(10358,1,0,'Forsaken Champion\'s Pennant',33682,1,1,-1,0,1035802,0,0,NULL,0,21008),
(10358,2,0,'Orgrimmar Champion\'s Pennant',33683,1,1,-1,0,1035803,0,0,NULL,0,21004),
(10358,3,0,'Silvermoon Champion\'s Pennant',33685,1,1,-1,0,1035804,0,0,NULL,0,21006),
(10358,4,0,'Thunder Bluff Champion\'s Pennant',33686,1,1,-1,0,1035805,0,0,NULL,0,21007);
DELETE FROM conditions WHERE condition_entry BETWEEN 21004 AND 21008;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21004,20,2783,0,0,0,0,''), -- Champion of Orgrimmar
(21005,20,2784,0,0,0,0,''), -- Champion of Sen'jin
(21006,20,2785,0,0,0,0,''), -- Champion of Silvermoon City
(21007,20,2786,0,0,0,0,''), -- Champion of Thunder Bluff
(21008,20,2787,0,0,0,0,''); -- Champion of the Undercity
DELETE FROM dbscripts_on_gossip WHERE id BETWEEN 1035801 AND 1035805;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1035801,0,15,63448,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 63455'), -- Darkspear
(1035802,0,15,63451,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 63455'), -- Forsaken
(1035803,0,15,63454,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 63455'), -- Orgrimmar
(1035804,0,15,63455,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 63455'), -- Silvermoon
(1035805,0,15,63456,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 63455'); -- Thunder Bluff
DELETE FROM dbscripts_on_spell WHERE id IN (63448,63451,63454,63455,63456);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(63448,0,15,63446,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63446'),
(63451,0,15,63441,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63441'),
(63454,0,15,63444,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63444'),
(63455,0,15,63438,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63438'),
(63456,0,15,63445,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63445');
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (63446,63441,63444,63438,63445);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(63446, 1, 33239, 0),
(63441, 1, 33239, 0),
(63444, 1, 33239, 0),
(63438, 1, 33239, 0),
(63445, 1, 33239, 0);
-- Argent Squire 33238
UPDATE creature_template SET UnitClass = 1, UnitFlags = 776, NpcFlags = 1+128, CreatureTypeFlags = 0, StaticFlags4 = StaticFlags4|8|524288, GossipMenuId = 10318 WHERE Entry = 33238;
DELETE FROM creature_template_addon WHERE entry = 33238;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33238,0,0,1,0,0,0,67039);
DELETE FROM gossip_menu WHERE entry IN (10318);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(10318, 14324, 0, 0); -- What may I do for you, $GSir:Dame;?
DELETE FROM npc_text_broadcast_text WHERE Id IN (14324);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14324,1,33400);
DELETE FROM npc_text WHERE id IN (14324);
DELETE FROM gossip_menu_option WHERE menu_id IN (10318);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10318,0,0,'Stormwind Champion\'s Pennant',33401,1,1,-1,0,1031801,0,0,NULL,0,438),
(10318,1,0,'Exodar Champion\'s Pennant',33676,1,1,-1,0,1031802,0,0,NULL,0,396),
(10318,2,0,'Ironforge Champion\'s Pennant',33679,1,1,-1,0,1031803,0,0,NULL,0,437),
(10318,3,0,'Gnomeregan Champion\'s Pennant',33678,1,1,-1,0,1031804,0,0,NULL,0,395),
(10318,4,0,'Darnassus Champion\'s Pennant',33675,1,1,-1,0,1031805,0,0,NULL,0,397);
-- 397 - Champion of Darnassus
-- 396 - Champion of the Exodar
-- 395 - Champion of Gnomeregan
-- 437 - Champion of Ironforge
-- 438 - Champion of Stormwind
DELETE FROM dbscripts_on_gossip WHERE id BETWEEN 1031801 AND 1031807;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1031801,0,15,62728,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 62728'), -- Stormwind
(1031802,0,15,63450,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63450'), -- Exodar
(1031803,0,15,63453,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63453'), -- Ironforge
(1031804,0,15,63452,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63452'), -- Gnomeregan
(1031805,0,15,63449,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63449'); -- Darnassus
DELETE FROM dbscripts_on_spell WHERE id IN (62728,63450,63453,63452,63449);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(62728,0,15,62727,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 62727'),
(63450,0,15,63439,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63439'),
(63453,0,15,63440,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63440'),
(63452,0,15,63442,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63442'),
(63449,0,15,63443,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63443');
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (62727,63439,63440,63442,63443);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(62727, 1, 33238, 0),
(63439, 1, 33238, 0),
(63440, 1, 33238, 0),
(63442, 1, 33238, 0),
(63443, 1, 33238, 0);
