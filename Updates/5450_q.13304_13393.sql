-- q.13304 'Field Repairs' - H
-- q.13393 'Field Repairs' - A
DELETE FROM spell_area WHERE spell = 49416;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(49416,4206,0,0,12431,0,0,0,2,1),
(49416,4248,0,0,12431,0,0,0,2,1),
(49416,4509,0,0,0,20805,0,0,2,1),
(49416,4537,0,0,0,20805,0,0,2,1),
(49416,4622,0,0,0,20805,0,0,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 20799 AND 20805;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20799,8,13304,0,0,0,''),
(20800,8,13393,0,0,0,''),
(20801,-2,20800,20799,0,0,''),
(20802,8,13396,0,0,1,''),
(20803,8,13348,0,0,1,''),
(20804,-1,20803,20802,0,0,''), -- must be -1
(20805,-1,20804,20801,0,0,'');
-- Creatures
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 536682 AND 536683;
DELETE FROM creature_movement WHERE id BETWEEN 536682 AND 536683;
DELETE FROM game_event_creature WHERE guid BETWEEN 536682 AND 536683;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 536682 AND 536683;
DELETE FROM creature_battleground WHERE guid BETWEEN 536682 AND 536683;
DELETE FROM creature_linking WHERE guid BETWEEN 536682 AND 536683;
DELETE FROM creature WHERE guid BETWEEN 536682 AND 536683;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Matthias Lehner 32408
(536682,32408,571,1,1,7269.8657,1178.1455,317.45612,1.954768,180,180,0,0),
-- Refurbished Demolisher 32370
(536683,32370,571,1,1,7259.758,1176.8013,316.87518,0.9599,180,180,0,0);
DELETE FROM creature_template_addon WHERE entry IN (32370,32408);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32370,0,0,0,0,0,0,'49414'),
(32408,0,0,0,0,0,0,'10848 49414');
UPDATE creature_template SET Faction = 35, UnitFlags = 0, MinLevel = 80, MaxLevel = 80 WHERE Entry = 32370;
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (32370);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(32370,59724,13394,1,13394,1,0),
(32370,59724,13305,1,13305,1,0);
-- Refurbished Demolisher 31830
UPDATE creature_template SET SpeedWalk = (3 / 2.5), SpeedRun = (8 / 7), SpellList = 3183001 WHERE Entry = 31830;
DELETE FROM creature_template_spells WHERE entry = 31830;
DELETE FROM creature_spell_list_entry WHERE Id IN(3183001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3183001, 'Refurbished Demolisher 31830 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3183001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3183001','0','59733','0','-1','0','0','100','1','0','0','0','0','Refurbished Demolisher 31830 - Hurl Boulder'),
('3183001','1','73740','0','-1','0','0','100','1','0','0','0','0','Refurbished Demolisher 31830 - Ram'),
('3183001','2','59737','0','-1','0','0','100','1','0','0','0','0','Refurbished Demolisher 31830 - Double Speed');
DELETE FROM dbscripts_on_relay WHERE id IN (21090);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21090,0,34,20809,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Refurbished Demolisher 31830 EAI: zone check'),
(21090,1,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Refurbished Demolisher 31830 EAI: unaura');
DELETE FROM conditions WHERE condition_entry BETWEEN 20806 AND 20809;
INSERT INTO conditions (condition_entry, type, value1, value2, value3) VALUES
(20806, 4, 4509, 0, 0),
(20807, 4, 4537, 0, 0),
(20808, 4, 4622, 0, 0),
(20809, -2, 20808, 20807, 20806);
-- Matthias Lehner 32404
UPDATE creature_template SET NpcFlags = 3, GossipMenuId = 10226 WHERE Entry = 32404;
DELETE FROM `gossip_menu` WHERE `entry` IN (10226);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10226, 14218, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14218);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14218,1,33089);
DELETE FROM npc_text WHERE id IN (14218);
