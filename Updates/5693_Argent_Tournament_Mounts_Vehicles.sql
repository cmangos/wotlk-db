-- Tournament Mounts\Vehicles

-- Stabled Sunreaver Hawkstrider 33842
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33842);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(33842,63791,0,0,0,3,20339);
DELETE FROM conditions WHERE condition_entry BETWEEN 20328 AND 20339;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20328,9,13829,0,0,0,''),
(20329,9,13838,0,0,0,''),
(20330,9,13839,0,0,0,''),
(20331,-2,20330,20329,20328,0,''),
(20332,8,13829,0,0,0,''),
(20333,8,13838,0,0,0,''),
(20334,8,13839,0,0,0,''),
(20335,-2,20334,20333,20332,0,''),
(20336,-2,20335,20331,0,0,''),
(20337,8,13680,0,0,1,''),
(20338,1,62853,0,0,0,''),
(20339,-1,20338,20337,20336,0,'');

-- Sunreaver Hawkstrider 33844
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (2.5 / 2.5), SpeedRun = (11 / 7), RegenerateStats = 0, UnitClass = 1, SpellList = 3384401 WHERE Entry = 33844;
DELETE FROM creature_template_spells WHERE entry = 33844;
DELETE FROM creature_spell_list_entry WHERE Id IN(3384401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3384401, 'Argent Tournament Training Mounts - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3384401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3384401','0','62544','0','-1','0','0','100','1','0','0','0','0','Argent Tournament Training Mounts - Thrust'),
('3384401','1','62575','0','-1','0','0','100','1','0','0','0','0','Argent Tournament Training Mounts - Shield-Breaker'),
('3384401','2','62960','0','-1','0','0','100','1','0','0','0','0','Argent Tournament Training Mounts - Charge'),
('3384401','3','62552','0','-1','0','0','100','1','0','0','0','0','Argent Tournament Training Mounts - Defend'),
('3384401','4','64077','0','-1','0','0','100','1','0','0','0','0','Argent Tournament Training Mounts - Refresh Mount'),
('3384401','5','62863','0','-1','0','0','100','1','0','0','0','0','Argent Tournament Training Mounts - Duel');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21138 AND 21139;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21138,1,48,768,1,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: add unitflags'),
(21138,2,35,6,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: send event 6'),
(21138,6,14,63130,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21138,7,14,63131,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21138,8,14,63132,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21138,9,14,62552,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21138,10,14,63151,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: Player Drop'),
(21138,15,18,2500,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: despawn'),
(21139,1,34,20348,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: area check'),
(21139,50,48,768,1,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: add unitflags'),
(21139,52,35,6,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: send event 6'),
(21139,100,0,0,0,0,0,0,2,33855,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: text'),
(21139,101,14,63151,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: Player Drop'),
(21139,107,14,63130,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21139,108,14,63131,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21139,109,14,63132,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21139,110,14,62552,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove aura'),
(21139,115,18,2500,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: despawn');
DELETE FROM conditions WHERE condition_entry BETWEEN 20340 AND 20348;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20340, 4, 4658,0,0,0),
(20341, 4, 4673,0,0,0),
(20342, 4, 4670,0,0,0),
(20343, 4, 4669,0,0,0),
(20344, -2, 20343,20342,20341,20340),
(20345, 4, 4671,0,0,0),
(20346, 4, 4672,0,0,0),
(20347, -2, 20346,20345,20344,0),
(20348, -1, 20347,20338,0,0);
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `Id` IN (33855);

-- Stabled Quel'dorei Steed 33843
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33843);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(33843,63792,0,0,0,3,20359);
DELETE FROM conditions WHERE condition_entry BETWEEN 20349 AND 20359;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20349,9,13828,0,0,0,''),
(20350,9,13835,0,0,0,''),
(20351,9,13837,0,0,0,''),
(20352,-2,20351,20350,20349,0,''),
(20353,8,13828,0,0,0,''),
(20354,8,13835,0,0,0,''),
(20355,8,13837,0,0,0,''),
(20356,-2,20355,20354,20353,0,''),
(20357,-2,20356,20352,0,0,''),
(20358,8,13679,0,0,1,''),
-- 20338
(20359,-1,20358,20357,20338,0,'');
-- Quel'dorei Steed 33845
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (2.5 / 2.5), SpeedRun = (11 / 7), RegenerateStats = 0, UnitClass = 1, SpellList = 3384401 WHERE Entry = 33845;
-- shared
DELETE FROM dbscripts_on_relay WHERE id IN (21140);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21140,0,14,62552,2,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove stack from aura'),
(21140,1,14,62552,2,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Tournament Training Mounts EAI: remove stack from aura');
DELETE FROM conditions WHERE condition_entry = 20381;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20381,1,62552,1,0,0);
DELETE FROM dbscripts_on_spell WHERE id IN (62552,65177);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(62552,100,15,63119,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Player shield stack check'), -- delay required
(62552,101,15,64192,0,0,0,0,6,0,0,0,0,0,0,0,0,'NPC shield stack check'), -- delay required
(65177,0,15,62726,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Jeran Lockwood 33973
UPDATE creature_template SET GossipMenuId = 10398 WHERE Entry IN (33973);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33973);
DELETE FROM creature_template_addon WHERE entry = 33973;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33973,28919,0,1,1,0,0,'64718');
DELETE FROM `gossip_menu` WHERE `entry` IN (10397,10398);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10397, 14434, 0, 0),
(10398, 14431, 0, 20362), -- Well met, $c.$B$BI train Aspirants in the
(10398, 14453, 0, 20368); -- You must be riding a tournament mount
DELETE FROM npc_text_broadcast_text WHERE Id IN (14431,14434,14453);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14431,1,33963),
(14434,1,33968),
(14453,1,34089);
DELETE FROM npc_text WHERE id IN (14431,14434,14453);
DELETE FROM gossip_menu_option WHERE menu_id IN (10397,10398);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10397,0,0,'Show me how to train with a Melee Target.',33964,1,1,-1,0,1039801,0,0,NULL,0,20362),
(10398,0,0,'Show me how to train with a Melee Target.',33964,1,1,-1,0,1039801,0,0,NULL,0,20362),
(10398,1,0,'Tell me more about Defend and Thrust.',34090,1,1,10397,0,0,0,0,NULL,0,20362);
DELETE FROM dbscripts_on_gossip WHERE id = 1039801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1039801,1,15,64113,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1039801,2,15,64204,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1039801,1000,0,0,0,0,0,0,6,34032,0,0,0,0,0,0,0,'');
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `Id` IN (34032);
DELETE FROM conditions WHERE condition_entry BETWEEN 20360 AND 20362;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
-- 20328 - q.13829 - H
-- 20349 - q.13828 - A
(20360,-2,20349,20328,0,0),
-- 20338 - aura from item equiped
(20361,1,63151,1,0,0),
(20362,-1,20361,20360,0,0);
DELETE FROM conditions WHERE condition_entry BETWEEN 20363 AND 20368;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4,flags) VALUES
(20363,9,13829,0,0,0,1),
(20364,9,13828,0,0,0,1),
(20365,-1,20364,20363,0,0,0),
(20366,1,62853,0,0,0,1),
(20367,1,63151,1,0,0,1),
(20368,-2,20367,20366,20365,0,0);

-- Valis Windchaser 33974
UPDATE creature_template SET GossipMenuId = 10402 WHERE Entry IN (33974);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33974);
DELETE FROM creature_template_addon WHERE entry = 33974;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33974,28919,0,1,1,0,0,'64718');
DELETE FROM `gossip_menu` WHERE `entry` IN (10401,10402);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10401, 14439, 0, 0),
(10402, 14438, 0, 20370), -- Well. Another $c, come to learn the ways of the Shield-Breaker...?
(10402, 14453, 0, 20374); -- must equip....
DELETE FROM npc_text_broadcast_text WHERE Id IN(14439,14438);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14439,1,33981),
(14438,1,33979);
DELETE FROM npc_text WHERE id IN (14439,14438);
DELETE FROM gossip_menu_option WHERE menu_id IN (10401,10402);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10401,0,0,'Show me how to train with a Ranged Target.',33980,1,1,-1,0,1040201,0,0,NULL,0,20370),
(10402,0,0,'Show me how to train with a Ranged Target.',33980,1,1,-1,0,1040201,0,0,NULL,0,20370),
(10402,1,0,'Tell me more about using the Shield-Breaker.',34091,1,1,10401,0,0,0,0,NULL,0,20370);
DELETE FROM dbscripts_on_gossip WHERE id = 1040201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1040201,1,15,64115,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1040201,2,15,64211,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1040201,1000,0,0,0,0,0,0,6,34035,0,0,0,0,0,0,0,'');
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `Id` IN (34035);
DELETE FROM conditions WHERE condition_entry BETWEEN 20369 AND 20370;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
-- 20329 - q.13838 - H
-- 20350 - q.13835 - A
(20369,-2,20350,20329,0,0),
-- 20338 - aura from item equiped
-- 20361 - riding aura
(20370,-1,20361,20338,20369,0);
DELETE FROM conditions WHERE condition_entry BETWEEN 20371 AND 20374;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4,flags) VALUES
(20371,9,13838,0,0,0,1),
(20372,9,13835,0,0,0,1),
(20373,-1,20372,20371,0,0,0),
-- 20366 - !aura from items
-- 20367 - !aura riding
(20374,-2,20373,20367,20366,0,0);

-- Rugan Steelbelly 33972
UPDATE creature_template SET GossipMenuId = 10400 WHERE Entry IN (33972);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33972);
DELETE FROM creature_template_addon WHERE entry = 33972;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33972,28919,0,1,1,0,0,'64718');
DELETE FROM `gossip_menu` WHERE `entry` IN (10399,10400);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10399, 14437, 0, 0),
(10400, 14436, 0, 20376), -- Hey there, how are ye?$B$BCome ta learn the art o' the Charge, $c?
(10400, 14455, 0, 20380); -- My advice is no good to ye unless ye
DELETE FROM npc_text_broadcast_text WHERE Id IN(14436,14455,14437);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14436,1,33975),
(14455,1,34103),
(14437,1,33977);
DELETE FROM npc_text WHERE id IN (14436,14455,14437);
DELETE FROM gossip_menu_option WHERE menu_id IN (10399,10400);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10399,0,0,'Show me how to train with a Charge Target.!',33976,1,1,-1,0,1039901,0,0,NULL,0,20376),
(10400,0,0,'Show me how to train with a Charge Target.!',33976,1,1,-1,0,1039901,0,0,NULL,0,20376),
(10400,1,0,'Tell me more about the Charge.',34092,1,1,10399,0,0,0,0,NULL,0,20376);
DELETE FROM dbscripts_on_gossip WHERE id = 1039901;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1039901,1,15,64114,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1039901,2,15,64212,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1039901,1000,0,0,0,0,0,0,6,34034,0,0,0,0,0,0,0,'');
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `Id` IN (34034);
DELETE FROM conditions WHERE condition_entry BETWEEN 20375 AND 20376;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
-- 20330 - q.13839 - H
-- 20351 - q.13837 - A
(20375,-2,20351,20330,0,0),
-- 20338 - aura from item equiped
-- 20361 - riding aura
(20376,-1,20361,20338,20375,0);
DELETE FROM conditions WHERE condition_entry BETWEEN 20377 AND 20380;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4,flags) VALUES
(20377,9,13839,0,0,0,1),
(20378,9,13837,0,0,0,1),
(20379,-1,20378,20377,0,0,0),
-- 20366 - !aura from items
-- 20367 - !aura riding
(20380,-2,20379,20367,20366,0,0);

-- spell: Armistice 64373
-- should be applied in all Argent Tournament areas
DELETE FROM spell_area WHERE spell = 64373;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(64373,4658,0,0,0,0,0,0,2,1),
(64373,4673,0,0,0,0,0,0,2,1),
(64373,4670,0,0,0,0,0,0,2,1),
(64373,4669,0,0,0,0,0,0,2,1),
(64373,4671,0,0,0,0,0,0,2,1),
(64373,4672,0,0,0,0,0,0,2,1),
(64373,4667,0,0,0,0,0,0,2,1),
(64373,4666,0,0,0,0,0,0,2,1),
(64373,4677,0,0,0,0,0,0,2,1),
(64373,4674,0,0,0,0,0,0,2,1),
(64373,4676,0,0,0,0,0,0,2,1);
