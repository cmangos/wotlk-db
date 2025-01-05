-- q.13168 'Parting Gifts'
-- Eye of Dominion 193058
DELETE FROM gossip_menu_option WHERE menu_id IN (10028);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10028,0,0,'<Seize control of an Eidolon Watcher through the eye.>',31719,1,1,-1,0,1002801,0,0,NULL,0,20844);
DELETE FROM conditions WHERE condition_entry BETWEEN 20842 AND 20844;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20842,9,13168,0,0,0,''),
(20843,8,13168,0,0,0,''),
(20844,-2,20843,20842,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id IN (1002801);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1002801,1,15,58665,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1002801,2,7,13168,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'credit');
DELETE FROM dbscripts_on_spell WHERE id IN (58665,57530,57528,41055,45206,41054,45205);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(58665,1,15,58524,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(58665,2,15,58122,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(57530,1,15,57528,0,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(57528,1,15,41055,0,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(57528,2,15,45206,0,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(41055,1,15,41054,0,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(45206,1,15,45205,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE Id IN(58524);
INSERT INTO spell_target_position VALUES
(58524,571,8390.86,2671.41,658.9093,1.0854);
-- Eidolon Watcher 31110
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpellList = 3111001 WHERE Entry = 31110;
DELETE FROM creature_template_spells WHERE entry = 31110;
DELETE FROM creature_spell_list_entry WHERE Id IN(3111001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3111001, 'Eidolon Watcher 31110 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3111001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3111001','0','58541','0','-1','0','0','100','1','0','0','0','0','Eidolon Watcher 31110 - Phase Jump'),
('3111001','1','58544','0','-1','0','0','100','1','0','0','0','0','Eidolon Watcher 31110 - Blood Siphon'),
('3111001','2','58543','0','-1','0','0','100','1','0','0','0','0','Eidolon Watcher 31110 - Dephase'),
('3111001','3','58562','0','-1','0','0','100','1','0','0','0','0','Eidolon Watcher 31110 - Feed Hungering Plaguehound'),
('3111001','4','58563','0','-1','0','0','100','1','0','0','0','0','Eidolon Watcher 31110 - Assassinate Restless Lookout'),
('3111001','5','58658','0','-1','0','0','100','1','0','0','0','0','Eidolon Watcher 31110 - Banish Scourge Crystal');
-- Player Mirror Bunny 31005
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 35, UnitFlags = 33587200 WHERE Entry = 31005;
