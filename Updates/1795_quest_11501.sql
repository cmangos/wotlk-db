-- q.11501 'News From the East'

DELETE FROM gossip_menu_option WHERE menu_id = 9022;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(9022, 0, 0, 'I\'m ready to go, Walt.', 1, 1, -1, 0, 902201, 0, 0, '', 1571);
DELETE FROM conditions WHERE condition_entry = 1571;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1571, 9, 11501, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 902201; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(902201,0,15,49975,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- cords for 49976
DELETE FROM spell_target_position WHERE id = 49976;
INSERT INTO spell_target_position VALUES
(49976,571,478.996,-5941.52,308.8293,0);
-- target corrected
-- req. for Rocket Jump
DELETE FROM spell_script_target WHERE entry IN (44687,44737);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44687,1,24852,0),
(44737,1,24852,0);

-- Iron Rune Construct 24852
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 642, MinMeleeDmg = 291, MaxMeleeDmg = 415 WHERE entry = 24852;

-- Part of Iron Rune Construct 24852 EAI
DELETE FROM dbscripts_on_relay WHERE id = 20103;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20103,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: active'),
(20103,1,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: fly'),
(20103,1,0,0,0,0,0,0,0x04,2000001758,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852'),
(20103,2,15,44687,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: self cast - Rocket Jump'),
(20103,2,3,0,2800,0,0,0,0,0,0,0,0,479.2529,-5941.489,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,4,3,0,2800,0,0,0,0,0,0,0,0,517.0134,-5825.359,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,6,3,0,2800,0,0,0,0,0,0,0,0,527.9034,-5659.926,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,13,3,0,2800,0,0,0,0,0,0,0,0,715.0627,-5351.074,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,25,3,0,2800,0,0,0,0,0,0,0,0,768.4551,-5018.862,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,35,3,0,2800,0,0,0,0,0,0,0,0,840.6277,-4827.729,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,43,3,0,2800,0,0,0,0,0,0,0,0,864.8306,-4741.804,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,46,3,0,2800,0,0,0,0,0,0,0,0,966.0306,-4488.406,365.9878,100,'Part of Iron Rune Construct 24852 - move'),
(20103,54,3,0,2000,0,0,0,0,0,0,0,0,1030.845,-4374.208,346.4599,100,'Part of Iron Rune Construct 24852 - move'),
(20103,61,3,0,2000,0,0,0,0,0,0,0,0,1063.375,-4205.252,346.4599,100,'Part of Iron Rune Construct 24852 - move'),
(20103,69,3,0,2000,0,0,0,0,0,0,0,0,1066.279,-4072.605,289.821,100,'Part of Iron Rune Construct 24852 - move'),
(20103,76,3,0,2000,0,0,0,0,0,0,0,0,1066.46,-3833.815,282.9599,100,'Part of Iron Rune Construct 24852 - move'),
(20103,88,3,0,2000,0,0,0,0,0,0,0,0,1236.65,-3685.513,282.9599,100,'Part of Iron Rune Construct 24852 - move'),
(20103,98,3,0,2000,0,0,0,0,0,0,0,0,1357.56,-3430.121,217.8767,100,'Part of Iron Rune Construct 24852 - move'),
(20103,111,3,0,2000,0,0,0,0,0,0,0,0,1382.808,-3290.728,217.8767,100,'Part of Iron Rune Construct 24852 - move'),
(20103,116,3,0,2000,0,0,0,0,0,0,0,0,1388.928,-3261.844,203.7378,100,'Part of Iron Rune Construct 24852 - move'),
(20103,118,3,0,2000,0,0,0,0,0,0,0,0,1390.475,-3262.215,161.9602,100,'Part of Iron Rune Construct 24852 - move'),
(20103,122,0,0,0,0,0,0,0x04,2000001778,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852'),
(20103,122,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct: fly off'),
(20103,123,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: unactive'),
(20103,124,15,44741,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852');
DELETE FROM dbscript_string WHERE entry = 2000001778;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001778,'System failure in 3... 2...',0,0,0,0,NULL);
