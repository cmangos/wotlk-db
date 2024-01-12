-- GOSSIP FIXES
-- fixed missing gossips menus etc...
-- fix for display single gossips CreatureTypeFlags = 134217728 - WOTLK ONLY 

-- Rogvar 1386
UPDATE creature_template SET GossipMenuId=4134, CreatureTypeFlags = 134217728 WHERE entry=1386;
DELETE FROM gossip_menu WHERE entry=4134;
INSERT INTO gossip_menu (entry,text_id) VALUES
(4134,5108);
DELETE FROM gossip_menu_option WHERE menu_id IN (4134);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(4134,0,3,'Train me.',3266,5,16,0,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(5108);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(5108,1,7774);
DELETE FROM npc_text WHERE id=5108;

-- Unger Statforth 1460
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 1460;

-- Adele Fielder 1632
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 1632;

-- Grarnik Goodstitch 2627
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 2627;
DELETE FROM gossip_menu WHERE entry=4348;
INSERT INTO gossip_menu (entry,text_id,condition_id) VALUES
(4348,5535,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(5535);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(5535,1,8152);
DELETE FROM npc_text WHERE id IN (5535);

-- Xizk Goodstitch 2670
UPDATE creature_template SET NpcFlags = 147, CreatureTypeFlags = 134217728, TrainerTemplateId = 1080 WHERE entry = 2670;
DELETE FROM gossip_menu WHERE entry=2685;
INSERT INTO gossip_menu (entry,text_id,condition_id) VALUES
(2685,3357,0), -- default
(2685,3358,3833); -- q.4781 taken or completed
DELETE FROM gossip_menu_option WHERE menu_id = 2685 AND id = 2;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(2685,2,3,'I am interested in tailor training.',2586,5,16,0,0,0,0,0,NULL,0,0);
DELETE FROM conditions WHERE condition_entry IN (3831,3832,3833);
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(3831,9,4781,0,0,0,0,''),
(3832,8,4781,0,0,0,0,''),
(3833,-2,3829,3828,0,0,0,'');
DELETE FROM npc_text_broadcast_text WHERE Id IN(3357,3358);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(3357,1,5627),
(3358,1,5628);
DELETE FROM npc_text WHERE id IN (3357,3358);

-- Jutak 2834
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry=2834;

-- Brikk Keencraft 2836
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry=2836;

-- Jaxin Chong 2837
UPDATE creature_template SET GossipMenuId=4127, CreatureTypeFlags = 134217728 WHERE entry=2837;
DELETE FROM gossip_menu WHERE entry=4127;
INSERT INTO gossip_menu (entry,text_id) VALUES
(4127,5074);
DELETE FROM gossip_menu_option WHERE menu_id IN (4127);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(4127,0,3,'Train me.',3266,5,16,0,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(5074);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(5074,1,7738);
DELETE FROM npc_text WHERE id=5074;

-- Jutak 2843
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 2843;

-- Urda 2851
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 2851;

-- Harold Riggs 3179
UPDATE creature_template SET GossipMenuId=5665, CreatureTypeFlags = 134217728 WHERE entry=3179;
DELETE FROM gossip_menu WHERE entry=5665;
INSERT INTO gossip_menu (entry,text_id) VALUES
(5665,6961);
DELETE FROM gossip_menu_option WHERE menu_id IN (5665);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(5665,0,3,'Train me.',3266,5,16,0,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(6961);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(6961,1,9557);
DELETE FROM npc_text WHERE id=6961;

-- Grisha 3305
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 3305;

-- Doras 3310
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 3310;

-- Lumak 3332
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 3332;

-- Saru Steelfury 3355
UPDATE creature_template SET GossipMenuId=1012, CreatureTypeFlags = 134217728 WHERE entry=3355;
DELETE FROM gossip_menu WHERE entry=1012;
INSERT INTO gossip_menu (entry,text_id) VALUES
(1012,1606);
DELETE FROM gossip_menu_option WHERE menu_id IN (1012);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(1012,0,3,'Train me.',3266,5,16,0,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(1606);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(1606,1,3945);
DELETE FROM npc_text WHERE id=1606;

-- Magar 3363
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId=4347 WHERE entry IN (3363);
DELETE FROM gossip_menu WHERE entry IN (4347);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4347, 5530, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (4347);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(4347,0,3,'Train me.',3266,5,16,0,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(5530);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(5530,1,8147);
DELETE FROM npc_text WHERE id IN (5530);

-- Karolek 3365
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 3365;

-- Zamja 3399
UPDATE creature_template SET GossipMenuId=4747, CreatureTypeFlags = 134217728 WHERE entry=3399;
DELETE FROM gossip_menu WHERE entry=4747;
INSERT INTO gossip_menu (entry,text_id) VALUES
(4747,5799);
DELETE FROM gossip_menu_option WHERE menu_id IN (4747);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(4747,0,3,'I require training  Zamja.',8347,5,16,0,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(5799);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(5799,1,8346);
DELETE FROM npc_text WHERE id=5799;

-- Tinkerwiz 3494
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 3494;
DELETE FROM gossip_menu WHERE entry=4140;
INSERT INTO gossip_menu (entry,text_id,condition_id) VALUES
(4140,5127,0),
(4140,5129,14); -- Has Skill ID 202, Minimum Skill Value 1 (engineering)
DELETE FROM npc_text_broadcast_text WHERE Id IN(5129);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(5129,1,7813);
DELETE FROM npc_text WHERE id=5129;

-- Breyk 6026
UPDATE creature_template SET GossipMenuId=6944, CreatureTypeFlags = 134217728 WHERE entry=6026;

-- Roxxik 11017
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 11017;

-- Vhulgra 12616
UPDATE creature_template SET GossipMenuId=6944, CreatureTypeFlags = 134217728 WHERE entry=12616;
DELETE FROM gossip_menu WHERE entry=6944;
INSERT INTO gossip_menu (entry,text_id) VALUES
(6944,7778);
DELETE FROM gossip_menu_option WHERE menu_id IN (6944);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('6944','0','2','Show me where I can fly.','12271','4','8192','0','0','0','0','0','','0','0'),
('6944','1','0','I was told you could get me to Light\'s Breach....','29485','1','1','-1','0','694401','0','0',NULL,'0','20286');
DELETE FROM npc_text_broadcast_text WHERE Id IN(7778);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(7778,1,10753);
DELETE FROM npc_text WHERE id=7778;

-- Krugosh 18747
UPDATE creature_template SET GossipMenuId = 7690, CreatureTypeFlags = 134217728 WHERE entry = 18747;

-- Moorutu 18755
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 18755;

-- Baxter 18988 
UPDATE creature_template SET NpcFlags = 209, CreatureTypeFlags = 134217728 WHERE entry = 18988;
DELETE FROM gossip_menu_option WHERE menu_id = 7818;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(7818,0,1,'Let me browse your goods.',0,3,128,0,0,0,0,0,'',0,0),
(7818,1,3,'I would like to train.',0,5,16,0,0,0,0,0,'',0,0);
DELETE FROM `npc_vendor` WHERE entry = 18988;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
-- TDB
/*
(18988,27736,0,0,1,0,0,'Master Cookbook'),
(18988,159,0,0,2,0,0,'Refreshing Spring Water'),
(18988,2678,0,0,3,0,0,'Mild Spices'),
(18988,30817,0,0,4,0,0,'Simple Flour');
*/
-- Wotlk
(18988,159,0,0,1,0,0,'Refreshing Spring Water'),
(18988,30817,0,0,2,0,0,'Simple Flour');
