-- q.13172 'Seeds of Chaos'
-- Keritose Bloodblade 30946
-- missiong gossip option added
DELETE FROM gossip_menu_option WHERE menu_id IN (10110);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10110,0,0,'I am prepared to join the assault, Keritose. Do you have a skeletal gryphon ready for me?',32269,1,1,-1,0,1011001,0,0,NULL,0,20863);
DELETE FROM conditions WHERE condition_entry = 20863;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20863,9,13172,0,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id IN (1011001);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1011001,1,15,59325,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Skeletal Assault Gryphon 31157
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, InhabitType = 4, Expansion = 2, UnitClass = 1, UnitFlags = 520, MovementType = 0, SpellList = 3115701 WHERE Entry = 31157;
DELETE FROM creature_movement_template WHERE Entry = 31157;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31157,0,1,8397.621,2683.9531,657.3679,100,0,0),
(31157,0,2,8370.314,2727.2175,664.72815,100,0,0),
(31157,0,3,8335.474,2760.7515,670.58905,100,0,0),
(31157,0,4,8289.219,2785.7039,674.7277,100,0,0),
(31157,0,5,8212.881,2826.8508,661.2293,100,0,0),
(31157,0,6,8070.518,2879.9924,614.7838,100,0,0),
(31157,0,7,7950.9463,2893.0427,570.5617,100,0,0),
(31157,0,8,7859.0493,2925.734,547.06213,100,0,0),
(31157,0,9,7804.694,2973.7922,558.8955,100,0,0),
(31157,0,10,7725.221,3051.0986,570.2289,100,0,0),
(31157,0,11,7658.346,3084.1033,576.81006,100,0,0),
(31157,0,12,7591.941,3146.2632,587.5597,100,0,0),
(31157,0,13,7576.145,3203.526,598.5592,100,0,0),
(31157,0,14,7622.5356,3240.8088,611.8931,100,0,0),
(31157,0,15,7703.133,3210.107,613.28217,100,0,0),
(31157,0,16,7796.588,3149.9658,615.92035,100,0,0),
(31157,0,17,7889.6562,3088.2295,614.7259,100,0,0),
(31157,0,18,7983.6865,3018.4983,597.3369,100,0,0),
(31157,0,19,8053.703,2943.4407,588.11633,100,0,0),
(31157,0,20,8076.742,2864.08,582.1427,100,0,0),
(31157,0,21,8005.0225,2790.798,556.4193,100,0,0),
(31157,0,22,7897.278,2831.6047,550.6705,100,0,0),
(31157,0,23,7847.7017,2963.3477,561.8926,100,0,0),
(31157,0,24,7792.9062,3089.3489,590.8646,100,0,0),
(31157,0,25,7735.1235,3173.0696,604.7814,100,0,0),
(31157,0,26,7620.355,3179.519,599.28143,100,0,0),
(31157,0,27,7590.6,3106.805,591.0317,100,0,0),
(31157,0,28,7650.019,3055.1914,581.8378,100,0,0),
(31157,0,29,7734.8916,3021.3225,573.1149,100,0,0),
(31157,0,30,7862.4956,2979.2703,572.5039,100,0,0),
(31157,0,31,7956.528,2972.1306,575.94824,100,0,0),
(31157,0,32,8039.022,2947.3503,576.08685,100,0,0),
(31157,0,33,8155.8926,2883.776,606.1532,100,0,0),
(31157,0,34,8239.198,2805.7966,654.0699,100,0,0),
(31157,0,35,8290.536,2766.5051,682.21924,100,0,0),
(31157,0,36,8353.981,2708.9136,714.52527,100,0,0),
(31157,0,37,8394.446,2680.754,720.664,100,1000,3115701);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3115701);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3115701,0,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove 46598');
DELETE FROM creature_template_spells WHERE entry = 31157;
DELETE FROM creature_spell_list_entry WHERE Id IN(3115701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3115701, 'Skeletal Assault Gryphon 31157 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3115701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3115701','0','59234','0','-1','0','0','100','1','0','0','0','0','Skeletal Assault Gryphon 31157 - Firebomb');
DELETE FROM dbscripts_on_relay WHERE id = 21110;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21110,1,15,54168,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Skeletal Assault Gryphon 31157 EAI: Player(summoner) Self Cast 54168');
