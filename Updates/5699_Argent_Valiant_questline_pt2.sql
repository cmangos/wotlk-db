-- III - Valiant questline - Part 2

-- Quests: 'The Valiant's Challenge'
-- Squire Danny 33518
UPDATE creature_template SET GossipMenuId = 10343 WHERE Entry IN (33518);
DELETE FROM `gossip_menu` WHERE `entry` IN (10343);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10343, 14335, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14335);
INSERT INTO npc_text_broadcast_text(Id,Prob0,Prob1,BroadcastTextId0,BroadcastTextId1) VALUES
(14335,1,0,33429,0);
DELETE FROM npc_text WHERE id IN (14335);
DELETE FROM gossip_menu_option WHERE menu_id IN (10343);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10343,0,0,'I am ready to fight!',33430,1,1,-1,0,1034301,0,0,NULL,0,20986);
DELETE FROM conditions WHERE condition_entry BETWEEN 20972 AND 20986;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(20972,9,13713,0,0,0,0),
(20973,9,13723,0,0,0,0),
(20974,9,13699,0,0,0,0),
(20975,9,13724,0,0,0,0),
(20976,9,13725,0,0,0,0),
(20977,9,13726,0,0,0,0),
(20978,9,13727,0,0,0,0),
(20979,9,13728,0,0,0,0),
(20980,9,13729,0,0,0,0),
(20981,9,13731,0,0,0,0),
(20982,-2,20981,20980,20979,20978,0),
(20983,-2,20977,20976,20975,20974,0),
(20984,-2,20983,20982,20973,20972,0),
-- 20338 - aura from item equiped
-- 20361 - riding aura
(20985,-1,20984,20361,20338,0,0),
-- 20941 - Aura preventing double spawn
(20986,-1,20985,20941,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 1034301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1034301,1,15,63172,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Force Cast');
-- Argent Champion 33707
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 35, UnitClass = 1, SpeedWalk = (2.5 / 2.5), SpeedRun = (9.699999809265136718 / 7), EquipmentTemplateId = 1865, UnitFlags = 0, Detection = 100, Pursuit = 300000, DamageMultiplier = 11, MovementType = 2 WHERE Entry = 33707;
DELETE FROM creature_template_addon WHERE entry = 33707;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33707,28919,0,1,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 33707;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33707,0,1,8533.11,1069.66,551.784,1.9655,10,5),
(33707,0,2,8546.717,1090.7006,556.78723,100,0,0),
(33707,0,3,8548.525,1122.584,556.78864,100,0,0),
(33707,0,4,8566.49,1118.9163,556.7873,100,10000,11);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21208 AND 21213;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- start script
(21208,1,20,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: idle'),
(21208,10,37,0,0,3,0,0,2,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: move towards Player - keep 3y dist'),
(21208,5001,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: face Player'),
(21208,5001,0,0,0,0,0,0,2,33787,33788,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: random say'),
(21208,8000,35,6,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: send event 6'),
(21209,1,15,63261,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 63261'),
(21209,2,15,64222,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 64222'),
(21209,3,15,62627,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 62627'),
(21209,4,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 62719 - buff 1'),
(21209,8,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 64192'),
(21209,10,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 62719 - buff 2'),
(21209,15,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 64192'),
(21209,20,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 62719 - buff 3'),
(21209,25,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Self cast 64192'),
(21209,30,22,14,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: temp faction'),
-- check if player is mounted - despawn if not
(21210,1,34,20361,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: check Players aura - terminate if exist'),
(21210,100,0,0,0,0,0,0,6,33790,33791,33793,0,0,0,0,0,'Part of Argent Champion 33707 EAI: random say'),
(21210,101,14,63005,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: Player remove aura'),
(21210,102,18,2000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: desp self'),
-- final script
(21211,0,22,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: reset faction'),
(21211,1,15,63260,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: cast 63260'),
(21211,2,15,64826,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: cast 64826'),
(21211,3,15,63515,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: cast 63515'),
(21211,3000,1,253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: emote'),
(21211,3001,0,0,0,0,0,0,0x04,33782,33783,0,0,0,0,0,0,'Part of ArgentChampion 33707 EAI: say'),
(21211,3002,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: despawn'),
(21211,3003,15,64893,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Champion 33707 EAI: cast 64893'),
-- credit
(21212,1002,15,63516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player self cast'), -- credit
(21212,1003,14,63005,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player remove aura'),
-- summon tp
(21213,0,3,0,0,0,0,0,0x04|0x08,0,0,0,0,8533.11,1069.66,551.784,1.9655,'Part of Argent Champion 33707 EAI: TP');
DELETE FROM npc_text_broadcast_text WHERE Id IN(14465);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14465,1,34139);

-- Dailies should not continue after chain completed
-- base:
/*
Quests: 'The Valiant's Challenge'
-- q.13699 - stormwind
-- q.13713 - Ironforge
-- q.13725 - Darnassus
-- q.13723 - Gnomeregan
-- q.13724 - Exodar
-- q.13729 - undercity
-- q.13726 - orgrimmar
-- q.13728 - Thunder Bluff
-- q.13727 - Darkspear
-- q.13731 - Silvermoon
*/
-- Dailies list
-- Quests: 'A Blade Fit For A Champion'
-- q.13603 - stormwind
UPDATE quest_template SET RequiredCondition = 20962 WHERE entry = 13603;
-- q.13741 - Ironforge
UPDATE quest_template SET RequiredCondition = 20963 WHERE entry = 13741;
-- q.13757 - Darnassus
UPDATE quest_template SET RequiredCondition = 20966 WHERE entry = 13757;
-- q.13746 - Gnomeregan
UPDATE quest_template SET RequiredCondition = 20964 WHERE entry = 13746;
-- q.13752 - Exodar
UPDATE quest_template SET RequiredCondition = 20965 WHERE entry = 13752;
-- q.13778 - undercity
UPDATE quest_template SET RequiredCondition = 20971 WHERE entry = 13778;
-- q.13762 - orgrimmar
UPDATE quest_template SET RequiredCondition = 20967 WHERE entry = 13762;
-- q.13773 - Thunder Bluff
UPDATE quest_template SET RequiredCondition = 20969 WHERE entry = 13773;
-- q.13768 - Darkspear
UPDATE quest_template SET RequiredCondition = 20968 WHERE entry = 13768;
-- q.13783 - Silvermoon
UPDATE quest_template SET RequiredCondition = 20970 WHERE entry = 13783;
-- Quests: 'A Worthy Weapon'
-- q.13600 - stormwind
UPDATE quest_template SET RequiredCondition = 20962 WHERE entry = 13600;
-- q.13742 - Ironforge
UPDATE quest_template SET RequiredCondition = 20963 WHERE entry = 13742;
-- q.13758 - Darnassus
UPDATE quest_template SET RequiredCondition = 20966 WHERE entry = 13758;
-- q.13747 - Gnomeregan
UPDATE quest_template SET RequiredCondition = 20964 WHERE entry = 13747;
-- q.13753 - Exodar
UPDATE quest_template SET RequiredCondition = 20965 WHERE entry = 13753;
-- q.13779 - undercity
UPDATE quest_template SET RequiredCondition = 20971 WHERE entry = 13779;
-- q.13763 - orgrimmar
UPDATE quest_template SET RequiredCondition = 20967 WHERE entry = 13763;
-- q.13774 - Thunder Bluff
UPDATE quest_template SET RequiredCondition = 20969 WHERE entry = 13774;
-- q.13769 - Darkspear
UPDATE quest_template SET RequiredCondition = 20968 WHERE entry = 13769;
-- q.13784 - Silvermoon
UPDATE quest_template SET RequiredCondition = 20970 WHERE entry = 13784;
-- Quests: 'The Edge Of Winter'
-- q.13616 - stormwind
UPDATE quest_template SET RequiredCondition = 20962 WHERE entry = 13616;
-- q.13743 - Ironforge
UPDATE quest_template SET RequiredCondition = 20963 WHERE entry = 13743;
-- q.13759 - Darnassus
UPDATE quest_template SET RequiredCondition = 20966 WHERE entry = 13759;
-- q.13748 - Gnomeregan
UPDATE quest_template SET RequiredCondition = 20964 WHERE entry = 13748;
-- q.13754 - Exodar
UPDATE quest_template SET RequiredCondition = 20965 WHERE entry = 13754;
-- q.13780 - undercity
UPDATE quest_template SET RequiredCondition = 20971 WHERE entry = 13780;
-- q.13764 - orgrimmar
UPDATE quest_template SET RequiredCondition = 20967 WHERE entry = 13764;
-- q.13775 - Thunder Bluff
UPDATE quest_template SET RequiredCondition = 20969 WHERE entry = 13775;
-- q.13770 - Darkspear
UPDATE quest_template SET RequiredCondition = 20968 WHERE entry = 13770;
-- q.13785 - Silvermoon
UPDATE quest_template SET RequiredCondition = 20970 WHERE entry = 13785;
-- Quests: 'A Valiant's Field Training'
-- q.13592 - stormwind
UPDATE quest_template SET RequiredCondition = 20962 WHERE entry = 13592;
-- q.13744 - Ironforge
UPDATE quest_template SET RequiredCondition = 20963 WHERE entry = 13744;
-- q.13760 - Darnassus
UPDATE quest_template SET RequiredCondition = 20966 WHERE entry = 13760;
-- q.13749 - Gnomeregan
UPDATE quest_template SET RequiredCondition = 20964 WHERE entry = 13749;
-- q.13755 - Exodar
UPDATE quest_template SET RequiredCondition = 20965 WHERE entry = 13755;
-- q.13781 - undercity
UPDATE quest_template SET RequiredCondition = 20971 WHERE entry = 13781;
-- q.13765 - orgrimmar
UPDATE quest_template SET RequiredCondition = 20967 WHERE entry = 13765;
-- q.13776 - Thunder Bluff
UPDATE quest_template SET RequiredCondition = 20969 WHERE entry = 13776;
-- q.13771 - Darkspear
UPDATE quest_template SET RequiredCondition = 20968 WHERE entry = 13771;
-- q.13786 - Silvermoon
UPDATE quest_template SET RequiredCondition = 20970 WHERE entry = 13786;
-- Quests: 'At The Enemy's Gates'
-- q.13847 - stormwind
UPDATE quest_template SET RequiredCondition = 20962 WHERE entry = 13847;
-- q.13851 - Ironforge
UPDATE quest_template SET RequiredCondition = 20963 WHERE entry = 13851;
-- q.13855 - Darnassus
UPDATE quest_template SET RequiredCondition = 20966 WHERE entry = 13855;
-- q.13852 - Gnomeregan
UPDATE quest_template SET RequiredCondition = 20964 WHERE entry = 13852;
-- q.13854 - Exodar
UPDATE quest_template SET RequiredCondition = 20965 WHERE entry = 13854;
-- q.13860 - undercity
UPDATE quest_template SET RequiredCondition = 20971 WHERE entry = 13860;
-- q.13856 - orgrimmar
UPDATE quest_template SET RequiredCondition = 20967 WHERE entry = 13856;
-- q.13858 - Thunder Bluff
UPDATE quest_template SET RequiredCondition = 20969 WHERE entry = 13858;
-- q.13857 - Darkspear
UPDATE quest_template SET RequiredCondition = 20968 WHERE entry = 13857;
-- q.13859 - Silvermoon
UPDATE quest_template SET RequiredCondition = 20970 WHERE entry = 13859;
-- Quests: 'The Grand Melee'
-- q.13665 - stormwind
UPDATE quest_template SET RequiredCondition = 20962 WHERE entry = 13665;
-- q.13745 - Ironforge
UPDATE quest_template SET RequiredCondition = 20963 WHERE entry = 13745;
-- q.13761 - Darnassus
UPDATE quest_template SET RequiredCondition = 20966 WHERE entry = 13761;
-- q.13750 - Gnomeregan
UPDATE quest_template SET RequiredCondition = 20964 WHERE entry = 13750;
-- q.13756 - Exodar
UPDATE quest_template SET RequiredCondition = 20965 WHERE entry = 13756;
-- q.13782 - undercity
UPDATE quest_template SET RequiredCondition = 20971 WHERE entry = 13782;
-- q.13767 - orgrimmar
UPDATE quest_template SET RequiredCondition = 20967 WHERE entry = 13767;
-- q.13777 - Thunder Bluff
UPDATE quest_template SET RequiredCondition = 20969 WHERE entry = 13777;
-- q.13772 - Darkspear
UPDATE quest_template SET RequiredCondition = 20968 WHERE entry = 13772;
-- q.13787 - Silvermoon
UPDATE quest_template SET RequiredCondition = 20970 WHERE entry = 13787;
