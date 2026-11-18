-- q.12855 'Sniffing Out the Perpetrator' - A
-- q.12910 'Sniffing Out the Perpetrator' - H
-- c.29903 Frostbite
-- c.29677 Frosthound
UPDATE creature_template SET Expansion = 2, UnitClass = 2, SpeedWalk = (2.5 / 2.5), SpeedRun = (9 / 7), SpellList = 2990301 WHERE entry IN (29903);
UPDATE creature_template SET Expansion = 2, UnitClass = 1, SpeedWalk = (2.5 / 2.5), SpeedRun = (9 / 7), SpellList = 2990301 WHERE entry IN (29677);
DELETE FROM creature_template_spells WHERE entry IN (29903,29677);
DELETE FROM creature_spell_list_entry WHERE Id IN(2990301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2990301, 'Frostbite 29903 | Frosthound 29677 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2990301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2990301', '0', '54997', '0', '-1', '0', '0', '100', '1','0','0','10000','10000', 'Frostbite 29903 | Frosthound 29677 - Cast Net'),
('2990301', '1', '54996', '0', '-1', '0', '0', '100', '1','0','0','20000','20000', 'Frostbite 29903 | Frosthound 29677 - Ice Slick');
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (29857);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(29857,55460,12910,1,12910,3,0);
DELETE FROM creature_movement_template WHERE entry IN (29903,29677);
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- c.29903 Frostbite
-- path1
(29903,1,1,7771.0825,-1053.9706,929.5356,100,0,0),
(29903,1,2,7770.3765,-1051.9323,929.42535,100,0,0),
(29903,1,3,7767.302,-1051.1094,928.5391,100,0,0),
(29903,1,4,7763.657,-1053.8048,927.5069,100,0,0),
-- path2
(29903,2,1,7749.8696,-1092.1571,925.4524,100,0,0),
(29903,2,2,7730.882,-1117.3351,923.4233,100,0,0),
(29903,2,3,7709.588,-1138.1508,922.8161,100,0,0),
(29903,2,4,7644.3267,-1188.3457,924.2615,100,0,0),
(29903,2,5,7626.4946,-1208.4462,927.9018,100,0,0),
(29903,2,6,7616.337,-1225.4967,931.22754,100,0,0),
(29903,2,7,7603.483,-1248.8297,929.35205,100,0,0),
(29903,2,8,7587.6025,-1277.0742,929.98596,100,0,0),
(29903,2,9,7579.03,-1288.5078,930.58307,100,0,0),
(29903,2,10,7562.1406,-1316.0499,930.94135,100,0,0),
(29903,2,11,7534.7603,-1348.3989,931.8742,100,0,0),
(29903,2,12,7511.374,-1368.2194,933.2112,100,0,0),
(29903,2,13,7476.7666,-1399.9177,934.5549,100,0,0),
(29903,2,14,7453.468,-1419.9028,935.61536,100,0,0),
(29903,2,15,7422.5903,-1443.9294,934.2612,100,0,0),
(29903,2,16,7390.7173,-1473.3505,930.7289,100,0,0),
(29903,2,17,7366.973,-1493.9269,929.97217,100,0,0),
(29903,2,18,7341.166,-1526.3381,932.654,100,0,0),
(29903,2,19,7328.682,-1533.3976,932.4867,100,0,0),
(29903,2,20,7318.588,-1547.0781,936.2682,100,0,0),
(29903,2,21,7311.9175,-1563.7369,940.8474,100,0,0),
(29903,2,22,7311.9175,-1563.7369,940.8474,4.2955084,10000,2990301),
-- c.29677 Frosthound
(29677,1,1 ,7173.071,-777.0275,899.3044,100,0,0),
(29677,1,2 ,7182.944,-781.4821,904.5544,100,0,0),
(29677,1,3 ,7193.046,-787.1729,910.9294,100,0,0),
(29677,1,4 ,7205.287,-793.2994,917.3839,100,0,0),
(29677,1,5 ,7218.268,-802.1098,921.6522,100,0,0),
(29677,1,6 ,7230.444,-816.3606,924.9022,100,0,0),
(29677,1,7 ,7232.167,-834.2318,926.6622,100,0,0),
(29677,1,8 ,7247.474,-848.1854,925.8052,100,0,0),
(29677,1,9 ,7263.333,-875.3375,925.0897,100,0,0),
(29677,1,10,7275.556,-895.3395,926.4728,100,0,0),
(29677,1,11,7283.682,-922.1505,922.743 ,100,0,0),
(29677,1,12,7284.952,-947.7603,919.0264,100,0,0),
(29677,1,13,7294.833,-985.7026,915.5168,100,0,0),
(29677,1,14,7310.106,-1018.042,913.8293,100,0,0),
(29677,1,15,7321.158,-1040.365,912.244 ,100,0,0),
(29677,1,16,7341.228,-1082.531,906.0389,100,0,0),
(29677,1,17,7355.963,-1127.951,907.6138,100,0,0),
(29677,1,18,7359.741,-1156.937,910.2388,100,0,0),
(29677,1,19,7352.817,-1172.477,912.4103,100,0,0),
(29677,1,20,7340.049,-1188.073,914.7853,100,0,0),
(29677,1,21,7330.804,-1201.472,915.7429,100,0,0),
(29677,1,22,7323.127,-1228.335,909.3679,100,0,0),
(29677,1,23,7316.839,-1268.214,902.7693,100,0,0),
(29677,1,24,7316.317,-1300.765,904.03  ,100,0,0),
(29677,1,25,7315.278,-1332.342,904.655 ,100,0,0),
(29677,1,26,7313.02,-1366.275,907.1307 ,100,0,0),
(29677,1,27,7312.081,-1399.743,910.6869,100,0,0),
(29677,1,28,7312.83,-1434.1,912.8559   ,100,0,0),
(29677,1,29,7311.606,-1466.343,916.7309,100,0,0),
(29677,1,30,7309.714,-1498.702,921.1875,100,0,0),
(29677,1,31,7306.879,-1531.19,928.1614 ,100,0,0),
(29677,1,32,7305.19,-1566.019,941.0308 ,4.2955084,10000,2967701);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2990301,2967701);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 2990301
(2990301,1000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2990301,3000,1,377,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2990301,3001,15,55477,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 55477'),
(2990301,3002,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(2990301,3100,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
-- 2967701
(2967701,1000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2967701,3000,1,377,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2967701,3001,15,55036,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 55477'),
(2967701,3002,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(2967701,3100,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `id` IN (30550,30366,30367,30551);
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `id` IN (30548,30549,30365,30368);

-- c.29696 Stormforged Pursuer
UPDATE creature_template SET UnitClass = 2, SpeedWalk = (2.5 / 2.5), SpeedRun = (11.5 / 7), Detection = 100, Pursuit = 100000, EquipmentTemplateId = 749 WHERE entry = 29696;

-- c.29579 Brann Bronzebeard
UPDATE creature_template SET NpcFlags = 3, UnitFlags = 32776, GossipMenuId = 9853, EquipmentTemplateId = 2548 WHERE entry = 29579;
DELETE FROM creature_template_addon WHERE entry IN (29579);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29579,0,0,2,0,0,0,NULL);
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry IN (2548);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2548, 0, 0, 25972);
DELETE FROM gossip_menu WHERE entry IN(9853);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(9853,13641,0,0);
-- (9853,13642,0,0); -- req condition
DELETE FROM npc_text_broadcast_text WHERE Id IN(13641);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13641,1,30618);
DELETE FROM npc_text WHERE id IN (13641);

-- i.40971 Brann's Communicator
UPDATE creature_loot_template SET ChanceOrQuestChance = 100, groupid = 2, condition_id  = 21112 WHERE item = 40971;
DELETE FROM conditions WHERE condition_entry BETWEEN 21106 AND 21112;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(21106,9,12855,0,0,0,''),
(21107,8,12855,0,0,1,''),
(21108,-1,21107,21106,0,0,''),
(21109,9,12910,0,0,0,''),
(21110,8,12910,0,0,1,''),
(21111,-1,21110,21109,0,0,''),
(21112,-2,21111,21108,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id IN (61122);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(61122,0,15,55038,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- c.29937 Moteha Windborn - gives item if lost - H
DELETE FROM `gossip_menu_option` WHERE menu_id=9854;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(9854, 0, 0, 'I lost Brann\'s Communicator and need a replacement.', 31229, 1, 1, -1, 0, 985401, 0, 0, '', 0, 21115);
DELETE FROM conditions WHERE condition_entry BETWEEN 21113 AND 21115;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(21113,8,12910,0,0,0,0), -- 12910 Rewarded
(21114,23,40971,1,0,0,1), -- not in inventory or bank
(21115,-1,21114,21113,0,0,0);
-- c.29650 Archaeologist Andorin - gives item if lost - A
DELETE FROM `gossip_menu_option` WHERE menu_id=9929;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(9929, 0, 0, 'I lost Brann\'s Communicator and need a replacement.', 33084, 1, 1, -1, 0, 985401, 0, 0, '', 0, 21117);
DELETE FROM conditions WHERE condition_entry BETWEEN 21116 AND 21117;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(21116,8,12855,0,0,0,0), -- 12855 Rewarded
(21117,-1,21116,21114,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 985401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(985401,0,17,40971,1,0,0,0,0,0,0,0,0,0,0,0,0,'create item');
