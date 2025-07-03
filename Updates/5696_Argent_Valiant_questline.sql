-- III - Valiant questline
-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (530299,530300,530301,530302,530303,530304,530305,530306,530307,531692);
DELETE FROM creature_movement WHERE id IN (530299,530300,530301,530302,530303,530304,530305,530306,530307,531692);
DELETE FROM game_event_creature WHERE guid IN (530299,530300,530301,530302,530303,530304,530305,530306,530307,531692);
DELETE FROM game_event_creature_data WHERE guid IN (530299,530300,530301,530302,530303,530304,530305,530306,530307,531692);
DELETE FROM creature_battleground WHERE guid IN (530299,530300,530301,530302,530303,530304,530305,530306,530307,531692);
DELETE FROM creature_linking WHERE guid IN (530299,530300,530301,530302,530303,530304,530305,530306,530307,531692);
DELETE FROM creature WHERE guid IN (530299,530300,530301,530302,530303,530304,530305,530306,530307,531692);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(530299,34319,571,1,1,8344.13,727.336,553.701,1.02181,180,180,0,0),
(530300,34319,571,1,1,8327.86,731.54,553.701,2.12922,180,180,0,0),
(530301,34319,571,1,1,8324.07,712.034,553.701,3.52409,180,180,0,0),
(530302,34319,571,1,1,8339.57,706.413,553.701,4.65385,180,180,0,0),
(530303,34319,571,1,1,8351.31,715.409,553.701,5.98117,180,180,0,0),
(530304,34319,571,1,1,8652.92,713.009,547.522,4.16398,180,180,0,0),
(530305,34319,571,1,1,8663.99,707.194,547.522,5.12609,180,180,0,0),
(530306,34319,571,1,1,8671.09,727.398,547.522,0.487523,180,180,0,0),
(530307,34319,571,1,1,8659.4,733.915,547.522,1.65384,180,180,0,0),
(531692,34319,571,1,1,8645.87,722.865,547.522,3.27412,180,180,0,0);
-- enemies
UPDATE creature_template SET Detection = 100, Pursuit = 300000, DamageMultiplier = 11 WHERE Entry IN (33562,33559,33558,33564,33561,33306,33285,33382,33383,33384);
-- Undercity Valiant 33384 - reconstructed
DELETE FROM gossip_menu_option WHERE menu_id IN (10473);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10473,0,0,'I am ready to fight!',33430,1,1,-1,0,1047301,0,0,NULL,0,20894);
-- remove old wrong scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (1046401,1046501,1046601,1046701,1046801,1046901,1047001,1047201);
DELETE FROM conditions WHERE condition_entry = 20890; -- clear all old conditions
DELETE FROM conditions WHERE condition_entry BETWEEN 20893 AND 20921; -- clear all old conditions
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20890,1,64816,0,0,1,''),
(20893,20,2758,0,0,0,''), -- valiant achievement
(20894,-1,20893,20890,20361,0,'');
-- Thunder Bluff Valiant 33383
DELETE FROM `gossip_menu` WHERE `entry` IN (10472);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10472, 14384, 0, 20895), -- default
(10472, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10472);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10472,0,0,'I am ready to fight!',33430,1,1,-1,0,1047301,0,0,NULL,0,20896);
DELETE FROM conditions WHERE condition_entry IN (20895,20896);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20895,1,64815,0,0,1,''),
-- 20893 -- valiant achievement
(20896,-1,20895,20893,20361,0,'');
-- Silvermoon Valiant 33382
DELETE FROM `gossip_menu` WHERE `entry` IN (10470);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10470, 14384, 0, 20897), -- default
(10470, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10470);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10470,0,0,'I am ready to fight!',33430,1,1,-1,0,1047301,0,0,NULL,0,20898);
DELETE FROM conditions WHERE condition_entry IN (20897,20898);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20897,1,64813,0,0,1,''),
-- 20893 -- valiant achievement
(20898,-1,20897,20893,20361,0,'');
-- Sen'jin Valiant 33285
DELETE FROM `gossip_menu` WHERE `entry` IN (10469);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10469, 14384, 0, 20899), -- default
(10469, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10469);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10469,0,0,'I am ready to fight!',33430,1,1,-1,0,1047301,0,0,NULL,0,20900);
DELETE FROM conditions WHERE condition_entry IN (20899,20900);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20899,1,64812,0,0,1,''),
-- 20893 -- valiant achievement
(20900,-1,20899,20893,20361,0,'');
-- Orgrimmar Valiant 33306
DELETE FROM `gossip_menu` WHERE `entry` IN (10468);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10468, 14384, 0, 20901), -- default
(10468, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10468);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10468,0,0,'I am ready to fight!',33430,1,1,-1,0,1047301,0,0,NULL,0,20902);
DELETE FROM conditions WHERE condition_entry IN (20901,20902);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20901,1,64811,0,0,1,''),
-- 20893 -- valiant achievement
(20902,-1,20901,20893,20361,0,'');
-- Stormwind Valiant 33561
DELETE FROM `gossip_menu` WHERE `entry` IN (10471);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10471, 14384, 0, 20903), -- default
(10471, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10471);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10471,0,0,'I am ready to fight!',33430,1,1,-1,0,1047101,0,0,NULL,0,20904);
DELETE FROM conditions WHERE condition_entry IN (20903,20904);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20903,1,64814,0,0,1,''),
-- 20893 -- valiant achievement
(20904,-1,20903,20893,20361,0,'');
-- Ironforge Valiant 33564
DELETE FROM `gossip_menu` WHERE `entry` IN (10467);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10467, 14384, 0, 20905), -- default
(10467, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10467);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10467,0,0,'I am ready to fight!',33430,1,1,-1,0,1047101,0,0,NULL,0,20906);
DELETE FROM conditions WHERE condition_entry IN (20905,20906);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20905,1,64810,0,0,1,''),
-- 20893 -- valiant achievement
(20906,-1,20905,20893,20361,0,'');
-- Gnomeregan Valiant 33558
DELETE FROM `gossip_menu` WHERE `entry` IN (10466);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10466, 14384, 0, 20907), -- default
(10466, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10466);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10466,0,0,'I am ready to fight!',33430,1,1,-1,0,1047101,0,0,NULL,0,20908);
DELETE FROM conditions WHERE condition_entry IN (20907,20908);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20907,1,64809,0,0,1,''),
-- 20893 -- valiant achievement
(20908,-1,20907,20893,20361,0,'');
-- Darnassus Valiant 33559
DELETE FROM `gossip_menu` WHERE `entry` IN (10464);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10464, 14384, 0, 20909), -- default
(10464, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10464);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10464,0,0,'I am ready to fight!',33430,1,1,-1,0,1047101,0,0,NULL,0,20910);
DELETE FROM conditions WHERE condition_entry IN (20909,20910);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20909,1,64805,0,0,1,''),
-- 20893 -- valiant achievement
(20910,-1,20909,20893,20361,0,'');
-- Exodar Valiant 33562
DELETE FROM `gossip_menu` WHERE `entry` IN (10465);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10465, 14384, 0, 20911), -- default
(10465, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10465);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10465,0,0,'I am ready to fight!',33430,1,1,-1,0,1047101,0,0,NULL,0,20912);
DELETE FROM conditions WHERE condition_entry BETWEEN 20911 AND 20912;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20911,1,64808,0,0,1,''),
-- 20893 -- valiant achievement
(20912,-1,20911,20893,20361,0,'');
DELETE FROM dbscripts_on_gossip WHERE id IN (1047301,1047101);
INSERT INTO dbscripts_on_gossip (id, priority,delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- default for all horde valiants
(1047301,0,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1047301,0,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove NPCFlags'),
(1047301,0,3,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(1047301,0,4,15,62627,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 62627'),
(1047301,0,9,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 1'),
(1047301,0,10,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1047301,0,11,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 2'),
(1047301,0,12,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1047301,0,13,15,65190,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 65190 - buff aura'),
(1047301,1,30,15,64780,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 64780 - music'),
(1047301,4,30,0,0,0,0,0,0,0x04,33755,33756,33757,33758,0,0,0,0,'random say'), -- horde ready!
(1047301,0,100,37,0,0,2,34319,30,1,0,0,0,0,0,0,0,0,'move towards target'),
(1047301,0,3000,15,62722,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 62722'), -- this goes to player and himself
-- default for all alliance valiants
(1047101,0,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1047101,0,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove NPCFlags'),
(1047101,0,3,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(1047101,0,4,15,62627,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 62627'),
(1047101,0,9,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 1'),
(1047101,0,10,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1047101,0,11,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 2'),
(1047101,0,12,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1047101,0,13,15,65190,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 65190 - buff aura'),
(1047101,1,30,15,64780,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 64780 - music'),
(1047101,4,30,0,0,0,0,0,0,0x04,33750,33752,33753,33753,0,0,0,0,'random say'), -- alliance ready!
(1047101,0,100,37,0,0,2,34319,30,1,0,0,0,0,0,0,0,0,'move towards target'),
(1047101,0,3000,15,62722,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 62722'); -- this goes to player and himself
-- Player mounts
-- all mounts involved
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33791,33792,33796,33798,33799,33790,33793,33794,33795,33800);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
-- horde
(33791,62786,0,0,0,3,20389), -- Stabled Silvermoon Hawkstrider
(33792,62785,0,0,0,3,20393), -- Stabled Thunder Bluff Kodo
(33796,62784,0,0,0,3,20397), -- Stabled Darkspear Raptor
(33798,62787,0,0,0,3,20864), -- Stabled Forsaken Warhorse
(33799,62783,0,0,0,3,20385), -- Stabled Orgrimmar Wolf
-- alliance
(33790,62781,0,0,0,3,20945), -- Stabled Exodar Elekk
(33793,62780,0,0,0,3,20961), -- Stabled Gnomeregan Mechanostrider
(33794,62782,0,0,0,3,20949), -- Stabled Darnassian Nightsaber
(33795,62779,0,0,0,3,20953), -- Stabled Ironforge Ram
(33800,62774,0,0,0,3,20957); -- Stabled Stormwind Steed
-- conditions 
DELETE FROM conditions WHERE condition_entry BETWEEN 20382 AND 20399;
DELETE FROM conditions WHERE condition_entry IN (20761,20864,20939);
DELETE FROM conditions WHERE condition_entry BETWEEN 20943 AND 20961;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
-- Orgrimmar
(20382,8,13691,0,0,0,''), -- first
(20383,8,13707,0,0,0,''), -- for other faction champion 
(20384,-2,20383,20382,0,0,''),
(20385,-1,20384,21,0,0,''), -- 21 - horde only
-- Silvermoon
(20386,8,13696,0,0,0,''), -- first
(20387,8,13711,0,0,0,''), -- for other faction champion 
(20388,-2,20387,20386,0,0,''),
(20389,-1,20388,21,0,0,''), -- 21 - horde only
-- Thunder Bluff
(20390,8,13694,0,0,0,''), -- first
(20391,8,13709,0,0,0,''), -- for other faction champion 
(20392,-2,20391,20390,0,0,''),
(20393,-1,20392,21,0,0,''), -- 21 - horde only
-- Darkspear
(20394,8,13693,0,0,0,''), -- first
(20395,8,13708,0,0,0,''), -- for other faction champion 
(20396,-2,20395,20394,0,0,''),
(20397,-1,20396,21,0,0,''), -- 21 - horde only
-- Forsaken
(20398,8,13695,0,0,0,''), -- first
(20399,8,13710,0,0,0,''), -- for other faction champion 
(20761,-2,20399,20398,0,0,''),
(20864,-1,20761,21,0,0,''), -- 21 - horde only
-- Exodar
(20939,8,13690,0,0,0,''), -- first
(20943,8,13705,0,0,0,''), -- for other faction champion 
(20944,-2,20943,20939,0,0,''),
(20945,-1,20944,22,0,0,''), -- 22 - alliance only
-- Darnassian
(20946,8,13689,0,0,0,''), -- first
(20947,8,13706,0,0,0,''), -- for other faction champion 
(20948,-2,20947,20946,0,0,''),
(20949,-1,20948,22,0,0,''), -- 22 - alliance only
-- Ironforge
(20950,8,13685,0,0,0,''), -- first
(20951,8,13703,0,0,0,''), -- for other faction champion 
(20952,-2,20951,20950,0,0,''),
(20953,-1,20952,22,0,0,''), -- 22 - alliance only
-- Stormwind
(20954,8,13684,0,0,0,''), -- first
(20955,8,13593,0,0,0,''), -- for other faction champion 
(20956,-2,20955,20954,0,0,''),
(20957,-1,20956,22,0,0,''), -- 22 - alliance only
-- Gnomeregan
(20958,8,13688,0,0,0,''), -- first
(20959,8,13704,0,0,0,''), -- for other faction champion 
(20960,-2,20959,20958,0,0,''),
(20961,-1,20960,22,0,0,''); -- 22 - alliance only

-- Stormwind Steed 33217
-- Ironforge Ram 33316
-- Gnomeregan Mechanostrider 33317
-- Exodar Elekk 33318
-- Darnassian Nightsaber 33319
-- Orgrimmar Wolf 33320
-- Darkspear Raptor 33321
-- Thunder Bluff Kodo 33322
-- Silvermoon Hawkstrider 33323
-- Forsaken Warhorse 33324
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (2.5 / 2.5), SpeedRun = (11 / 7), RegenerateStats = 0, UnitClass = 1, SpellList = 3384401 WHERE Entry IN (33217,33316,33317,33318,33319,33320,33321,33322,33323,33324);
DELETE FROM creature_template_spells WHERE entry IN (33217,33316,33317,33318,33319,33320,33321,33322,33323,33324);
-- banner check
-- each summon checks for valiant | champion status for its own faction
DELETE FROM conditions WHERE condition_entry IN (20883,20881,20879,20887,20885,20873,20869,20871,20877,20875);
DELETE FROM conditions WHERE condition_entry BETWEEN 20962 AND 20982;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
-- for champion title
(20883,8,13699,0,0,0,''), -- champion Stormwind
(20881,8,13713,0,0,0,''), -- champion Ironforge
(20879,8,13723,0,0,0,''), -- champion Gnomeregan 
(20887,8,13724,0,0,0,''), -- champion Exodar
(20885,8,13725,0,0,0,''), -- champion Darnassian 
(20873,8,13726,0,0,0,''), -- champion Orgrimmar 
(20869,8,13727,0,0,0,''), -- champion Darkspear
(20871,8,13728,0,0,0,''), -- champion Thunder Bluff
(20877,8,13731,0,0,0,''), -- champion Silvermoon
(20875,8,13729,0,0,0,''), -- champion Forsaken
-- for non champion title
(20962,8,13699,0,0,1,''), -- champion Stormwind
(20963,8,13713,0,0,1,''), -- champion Ironforge
(20964,8,13723,0,0,1,''), -- champion Gnomeregan 
(20965,8,13724,0,0,1,''), -- champion Exodar
(20966,8,13725,0,0,1,''), -- champion Darnassian
(20967,8,13726,0,0,1,''), -- champion Orgrimmar
(20968,8,13727,0,0,1,''), -- champion Darkspear
(20969,8,13728,0,0,1,''), -- champion Thunder Bluff
(20970,8,13731,0,0,1,''), -- champion Silvermoon
(20971,8,13729,0,0,1,''); -- champion Forsaken
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21162 AND 21202;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- valiant | champion - Stormwind
(21162,1,34,20883,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Stormwind Steed 33217 EAI: check Players aura - terminate when false'),
(21162,100,15,62594,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Stormwind Steed 33217 EAI: cast 62594'), -- champion
(21163,1,34,20962,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Stormwind Steed 33217 EAI: check Players aura - terminate when false'),
(21163,100,15,62596,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Stormwind Steed 33217 EAI: cast 62596'), -- valiant
-- valiant | champion - Ironforge
(21164,1,34,20881,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Ironforge Ram 33316 EAI: check Players aura - terminate when false'),
(21164,100,15,63427,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ironforge Ram 33316 EAI: cast '), -- champion
(21165,1,34,20963,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Ironforge Ram 33316 EAI: check Players aura - terminate when false'),
(21165,100,15,63426,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ironforge Ram 33316 EAI: cast '), -- valiant
-- valiant | champion - Gnomeregan 
(21166,1,34,20879,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Gnomeregan Mechanostrider 33317 EAI: check Players aura - terminate when false'),
(21166,100,15,63396,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Gnomeregan Mechanostrider 33317 EAI: cast '), -- champion
(21167,1,34,20964,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Gnomeregan Mechanostrider 33317 EAI: check Players aura - terminate when false'),
(21167,100,15,63395,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Gnomeregan Mechanostrider 33317 EAI: cast '), -- valiant
-- valiant | champion - Exodar
(21168,1,34,20887,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Exodar Elekk 33318 EAI: check Players aura - terminate when false'),
(21168,100,15,63423,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Exodar Elekk 33318 EAI: cast '), -- champion
(21169,1,34,20965,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Exodar Elekk 33318 EAI: check Players aura - terminate when false'),
(21169,100,15,63422,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Exodar Elekk 33318 EAI: cast '), -- valiant
-- valiant | champion - Darnassian 
(21170,1,34,20885,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Darnassian Nightsaber 33319 EAI: check Players aura - terminate when false'),
(21170,100,15,63406,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Darnassian Nightsaber 33319 EAI: cast '), -- champion
(21171,1,34,20966,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Darnassian Nightsaber 33319 EAI: check Players aura - terminate when false'),
(21171,100,15,63405,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Darnassian Nightsaber 33319 EAI: cast '), -- valiant
-- valiant | champion - Orgrimmar 
(21172,1,34,20873,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Orgrimmar Wolf 33320 EAI: check Players aura - terminate when false'),
(21172,100,15,63433,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Wolf 33320 EAI: cast '), -- champion
(21173,1,34,20967,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Orgrimmar Wolf 33320 EAI: check Players aura - terminate when false'),
(21173,100,15,63432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Wolf 33320 EAI: cast '), -- valiant
-- valiant | champion - Darkspear
(21174,1,34,20869,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Darkspear Raptor 33321 EAI: check Players aura - terminate when false'),
(21174,100,15,63399,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Darkspear Raptor 33321 EAI: cast '), -- champion
(21175,1,34,20968,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Darkspear Raptor 33321 EAI: check Players aura - terminate when false'),
(21175,100,15,63398,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Darkspear Raptor 33321 EAI: cast '), -- valiant
-- valiant | champion - Thunder Bluff
(21176,1,34,20871,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Kodo 33322 EAI: check Players aura - terminate when false'),
(21176,100,15,63436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Kodo 33322 EAI: cast '), -- champion
(21177,1,34,20969,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Kodo 33322 EAI: check Players aura - terminate when false'),
(21177,100,15,63435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Kodo 33322 EAI: cast '), -- valiant
-- valiant | champion - Silvermoon
(21178,1,34,20877,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Silvermoon Hawkstrider 33323 EAI: check Players aura - terminate when false'),
(21178,100,15,63403,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Silvermoon Hawkstrider 33323 EAI: cast 63403'), -- champion
(21179,1,34,20970,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Silvermoon Hawkstrider 33323 EAI: check Players aura - terminate when false'),
(21179,100,15,63402,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Silvermoon Hawkstrider 33323 EAI: cast 63402'), -- valiant
-- valiant | champion - Forsaken
(21180,1,34,20875,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Forsaken Warhorse 33324 EAI: check Players aura - terminate when false'),
(21180,100,15,63430,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forsaken Warhorse 33324 EAI: cast '), -- champion
(21181,1,34,20971,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Forsaken Warhorse 33324 EAI: check Players aura - terminate when false'),
(21181,100,15,63429,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forsaken Warhorse 33324 EAI: cast '), -- valiant
-- combat stop - player won!
-- Part of Undercity Valiant 33384 EAI
(21182,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: reset faction'),
(21182,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: cast 63260'), -- empty script
(21182,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: cast 64826'), -- play music
(21182,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: cast 63060'), -- credit
(21182,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: emote'),
(21182,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Undercity Valiant 33384 EAI: say'), -- horde player won!
(21182,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: despawn'),
(21182,3003,15,64839,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: cast 64839'), -- individual for each
(21183,1,15,64816,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: Player self cast 64816'), -- Player self cast debuff (individual)
(21184,1,15,62995,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: Player self cast 62995'), -- Player self cast credit 
-- Part of Orgrimmar Valiant 33306 EAI
(21185,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: reset faction'),
(21185,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: cast 63260'), -- empty script
(21185,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: cast 64826'), -- play music
(21185,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: cast 63060'), -- credit
(21185,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: emote'),
(21185,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: say'), -- horde player won!
(21185,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: despawn'),
(21185,3003,15,64833,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: cast 64833'), -- individual for each
(21186,1,15,64811,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Orgrimmar Valiant 33306 EAI: Player self cast 64811'), -- Player self cast debuff (individual)
-- Part of Sen'jin Valiant 33285 EAI
(21187,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: reset faction'),
(21187,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: cast 63260'), -- empty script
(21187,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: cast 64826'), -- play music
(21187,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: cast 63060'), -- credit
(21187,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: emote'),
(21187,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: say'), -- horde player won!
(21187,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: despawn'),
(21187,3003,15,64834,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: cast 64834'), -- individual for each
(21188,1,15,64812,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Sen\'jin Valiant 33285 EAI: Player self cast 64812'), -- Player self cast debuff (individual)
-- Part of Silvermoon Valiant 33382 EAI
(21189,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: reset faction'),
(21189,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: cast 63260'), -- empty script
(21189,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: cast 64826'), -- play music
(21189,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: cast 63060'), -- credit
(21189,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: emote'),
(21189,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: say'), -- horde player won!
(21189,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: despawn'),
(21189,3003,15,64835,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: cast 64835'), -- individual for each
(21190,1,15,64813,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Silvermoon Valiant 33382 EAI: Player self cast 64813'), -- Player self cast debuff (individual)
-- Part of Thunder Bluff Valiant 33383 EAI
(21191,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: reset faction'),
(21191,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: cast 63260'), -- empty script
(21191,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: cast 64826'), -- play music
(21191,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: cast 63060'), -- credit
(21191,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: emote'),
(21191,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: say'), -- horde player won!
(21191,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: despawn'),
(21191,3003,15,64837,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: cast 64837'), -- individual for each
(21192,1,15,64815,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Valiant 33383 EAI: Player self cast 64815'), -- Player self cast debuff (individual)
-- Part of Stormwind Valiant 33561 EAI 
(21193,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: reset faction'),
(21193,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: cast 63260'), -- empty script
(21193,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: cast 64826'), -- play music
(21193,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: cast 63060'), -- credit
(21193,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: emote'),
(21193,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: say'), -- alliance player won!
(21193,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: despawn'),
(21193,3003,15,64836,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: cast 64836'), -- individual for each
(21194,1,15,64814,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Stormwind Valiant 33561 EAI: Player self cast 64814'), -- Player self cast debuff (individual)
-- Part of Ironforge Valiant 33564 EAI
(21195,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: reset faction'),
(21195,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: cast 63260'), -- empty script
(21195,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: cast 64826'), -- play music
(21195,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: cast 63060'), -- credit
(21195,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: emote'),
(21195,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: say'), -- alliance player won!
(21195,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: despawn'),
(21195,3003,15,64832,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: cast 64832'), -- individual for each
(21196,1,15,64810,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Ironforge Valiant 33564 EAI: Player self cast 64810'), -- Player self cast debuff (individual)
-- Part of Gnomeregan Valiant 33558 EAI
(21197,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: reset faction'),
(21197,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: cast 63260'), -- empty script
(21197,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: cast 64826'), -- play music
(21197,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: cast 63060'), -- credit
(21197,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: emote'),
(21197,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: say'), -- alliance player won!
(21197,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: despawn'),
(21197,3003,15,64830,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: cast 64830'), -- individual for each
(21198,1,15,64809,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Gnomeregan Valiant 33558 EAI: Player self cast 64809'), -- Player self cast debuff (individual)
-- Part of Darnassus Valiant 33559 EAI
(21199,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: reset faction'),
(21199,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: cast 63260'), -- empty script
(21199,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: cast 64826'), -- play music
(21199,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: cast 63060'), -- credit
(21199,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: emote'),
(21199,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: say'), -- alliance player won!
(21199,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: despawn'),
(21199,3003,15,64831,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: cast 64831'), -- individual for each
(21200,1,15,64805,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Darnassus Valiant 33559 EAI: Player self cast 64805'), -- Player self cast debuff (individual)
-- Part of Exodar Valiant 33562 EAI
(21201,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: reset faction'),
(21201,1,15,63260,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: cast 63260'), -- empty script
(21201,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: cast 64826'), -- play music
(21201,3,15,63060,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: cast 63060'), -- credit
(21201,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: emote'),
(21201,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Exodar Valiant 33562 EAI: say'), -- alliance player won!
(21201,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: despawn'),
(21201,3003,15,64838,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: cast 648ss'), -- individual for each
(21202,1,15,64808,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Exodar Valiant 33562 EAI: Player self cast 648ss'); -- Player self cast debuff (individual)
DELETE FROM dbscript_random_templates WHERE id BETWEEN 20383 AND 20384;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20383, 0, 33763, 0, 'Argent Tournament - Alliance Valiant - Say Text 1'),
(20383, 0, 33771, 0, 'Argent Tournament - Alliance Valiant - Say Text 2'),
(20383, 0, 33772, 0, 'Argent Tournament - Alliance Valiant - Say Text 3'),
(20383, 0, 33773, 0, 'Argent Tournament - Alliance Valiant - Say Text 4'),
(20384, 0, 33764, 0, 'Argent Tournament - Horde Valiant - Say Text 1'),
(20384, 0, 33777, 0, 'Argent Tournament - Horde Valiant - Say Text 2'),
(20384, 0, 33778, 0, 'Argent Tournament - Horde Valiant - Say Text 3'),
(20384, 0, 33779, 0, 'Argent Tournament - Horde Valiant - Say Text 4');
