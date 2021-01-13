-- Icecrown Citadel Fixes

-- items
-- Scourgelord Legplates 51683 - missing item
DELETE FROM item_template WHERE entry = 51683;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Flags2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `ExtraFlags`) VALUES
('51683','4','4','-1','Scourgelord Legplates','64595','4','0','8192','1','0','0','7','32','8388607','251','80','0','0','0','0','0','0','0','0','1','0','0','4','128','7','216','32','96','37','80','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','6','0','0','0','0','897','0','0','0','0','0','4','0','8','0','0','0','3357','0','-1','0','0','0','0','','0','0','0','0','0');

-- Goblin Rocket Pack 49278
-- allowed to use only during Gunships Battle - ICC
DELETE FROM spell_area WHERE spell = 68645;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(68645,4812,0,0,0,0,0,0,2,0);

-- Creatures
-- Crusader Halford 37696 
UPDATE creature_template SET InhabitType = 3, GossipMenuId = 11101, MovementType = 2 WHERE Entry = 37696;
DELETE FROM gossip_menu WHERE entry IN (11101);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11101, 15451, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11101;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11101,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 92); -- Paladin only
DELETE FROM npc_vendor WHERE entry=37696;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(37696,50328,0,0,2742),
(37696,50864,0,0,2742),
(37696,50862,0,0,2742),
(37696,50866,0,0,2742),
(37696,50867,0,0,2742),
(37696,50326,0,0,2742),
(37696,50861,0,0,2742),
(37696,50325,0,0,2742),
(37696,50869,0,0,2742),
(37696,50327,0,0,2740),
(37696,50868,0,0,2740),
(37696,50863,0,0,2740),
(37696,50860,0,0,2740),
(37696,50324,0,0,2740),
(37696,50865,0,0,2740),
(37696,51164,0,0,2829),
(37696,51275,0,0,2830),
(37696,51174,0,0,2839),
(37696,51265,0,0,2840),
(37696,51173,0,0,2838),
(37696,51266,0,0,2841),
(37696,51163,0,0,2828),
(37696,51276,0,0,2831),
(37696,51169,0,0,2819),
(37696,51270,0,0,2820),
(37696,51168,0,0,2818),
(37696,51271,0,0,2821),
(37696,51172,0,0,2837),
(37696,51267,0,0,2842),
(37696,51167,0,0,2817),
(37696,51272,0,0,2822),
(37696,51162,0,0,2827),
(37696,51277,0,0,2832),
(37696,51171,0,0,2836),
(37696,51268,0,0,2843),
(37696,51161,0,0,2826),
(37696,51278,0,0,2833),
(37696,51170,0,0,2835),
(37696,51269,0,0,2844),
(37696,51160,0,0,2825),
(37696,51279,0,0,2834),
(37696,51166,0,0,2816),
(37696,51273,0,0,2823),
(37696,51165,0,0,2815),
(37696,51274,0,0,2824);

-- Ormus the Penitent 38316
DELETE FROM gossip_menu WHERE entry IN (10997);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(10997, 15297, 0, 0);
UPDATE gossip_menu_option SET action_menu_id = 10997 WHERE menu_id = 10996;
DELETE FROM gossip_menu_option WHERE menu_id = 10996 AND id = 1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(10996,1,1,'I wish to browse your wares.', 0, 3, 1, 0, 175); -- DK only
DELETE FROM npc_vendor WHERE entry=38316;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(38316,50094,0,0,2742),
(38316,50857,0,0,2742),
(38316,50855,0,0,2742),
(38316,50096,0,0,2742),
(38316,50854,0,0,2742),
(38316,50097,0,0,2742),
(38316,50095,0,0,2740),
(38316,50856,0,0,2740),
(38316,50853,0,0,2740),
(38316,50098,0,0,2740),
(38316,51129,0,0,2799),
(38316,51310,0,0,2800),
(38316,51134,0,0,2809),
(38316,51305,0,0,2810),
(38316,51133,0,0,2808),
(38316,51306,0,0,2811),
(38316,51128,0,0,2798),
(38316,51311,0,0,2801),
(38316,51132,0,0,2807),
(38316,51307,0,0,2812),
(38316,51127,0,0,2797),
(38316,51312,0,0,2802),
(38316,51131,0,0,2806),
(38316,51308,0,0,2813),
(38316,51126,0,0,2796),
(38316,51313,0,0,2803),
(38316,51130,0,0,2805),
(38316,51309,0,0,2814),
(38316,51125,0,0,2795),
(38316,51314,0,0,2804);

-- Highlord Darion Mograine 37120
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 37120;

-- Niby the Almighty 38182
UPDATE creature_template SET NpcFlags = 4225, GossipMenuId = 11104 WHERE entry = 38182;
-- Haragg the Unseen 38181
UPDATE creature_template SET Faction = 1735, UnitFlags = 33536, GossipMenuId = 11104, EquipmentTemplateId = 2527 WHERE entry = 38181;
DELETE FROM creature_equip_template WHERE entry=2527;
INSERT INTO creature_equip_template VALUES
(2527, 50224,0,0);
DELETE FROM gossip_menu WHERE entry IN (11104);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11104, 15454, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11104;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11104,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 103); -- Warlock only
DELETE FROM npc_vendor WHERE entry=38181;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(38181,50241,0,0,2742),
(38181,50242,0,0,2742),
(38181,50243,0,0,2742),
(38181,50240,0,0,2740),
(38181,50244,0,0,2740),
(38181,51209,0,0,2849),
(38181,51230,0,0,2850),
(38181,51208,0,0,2848),
(38181,51231,0,0,2851),
(38181,51207,0,0,2847),
(38181,51232,0,0,2852),
(38181,51206,0,0,2846),
(38181,51233,0,0,2853),
(38181,51205,0,0,2845),
(38181,51234,0,0,2854);

-- Yili 37997
UPDATE creature_template SET NpcFlags = 4225, GossipMenuId = 11098 WHERE entry = 37997;
-- Ikfirus the Vile 37991
UPDATE creature_template SET Faction = 1735, UnitFlags = 33536, GossipMenuId = 11098, EquipmentTemplateId = 2528 WHERE entry = 37991;
DELETE FROM creature_equip_template WHERE entry=2528;
INSERT INTO creature_equip_template VALUES
(2528, 49734,49734,0);
DELETE FROM gossip_menu WHERE entry IN (11098);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11098, 15447, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11098;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11098,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 103); -- Rogue only
DELETE FROM npc_vendor WHERE entry=37991;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(37991,50087,0,0,2742),
(37991,50089,0,0,2742),
(37991,50090,0,0,2742),
(37991,50088,0,0,2740),
(37991,50105,0,0,2740),
(37991,51189,0,0,2759),
(37991,51250,0,0,2760),
(37991,51188,0,0,2758),
(37991,51251,0,0,2761),
(37991,51187,0,0,2757),
(37991,51252,0,0,2762),
(37991,51186,0,0,2756),
(37991,51253,0,0,2763),
(37991,51185,0,0,2755),
(37991,51254,0,0,2764);

-- Alana Moonstrike 37999
UPDATE creature_template SET NpcFlags = 4225, GossipMenuId = 11095 WHERE entry = 37999;
-- Tortunok 37992
UPDATE creature_template SET Faction = 1735, UnitFlags = 33536, GossipMenuId = 11095 WHERE entry = 37992;
DELETE FROM gossip_menu WHERE entry IN (11095);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11095, 15445, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11095;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11095,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 102); -- Druid only
DELETE FROM npc_vendor WHERE entry=37992;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(37992,50821,0,0,2742),
(37992,50826,0,0,2742),
(37992,50108,0,0,2742),
(37992,50825,0,0,2742),
(37992,50109,0,0,2742),
(37992,50828,0,0,2742),
(37992,50106,0,0,2742),
(37992,50820,0,0,2742),
(37992,50823,0,0,2742),
(37992,50107,0,0,2740),
(37992,50822,0,0,2740),
(37992,50827,0,0,2740),
(37992,50819,0,0,2740),
(37992,50113,0,0,2740),
(37992,50824,0,0,2740),
(37992,51149,0,0,2779),
(37992,51290,0,0,2780),
(37992,51138,0,0,2768),
(37992,51301,0,0,2771),
(37992,51148,0,0,2778),
(37992,51291,0,0,2781),
(37992,51144,0,0,2789),
(37992,51295,0,0,2790),
(37992,51143,0,0,2788),
(37992,51296,0,0,2791),
(37992,51137,0,0,2767),
(37992,51302,0,0,2772),
(37992,51142,0,0,2787),
(37992,51297,0,0,2792),
(37992,51136,0,0,2766),
(37992,51303,0,0,2773),
(37992,51147,0,0,2777),
(37992,51292,0,0,2782),
(37992,51135,0,0,2765),
(37992,51304,0,0,2774),
(37992,51141,0,0,2786),
(37992,51298,0,0,2793),
(37992,51139,0,0,2769),
(37992,51300,0,0,2770),
(37992,51140,0,0,2785),
(37992,51299,0,0,2794),
(37992,51146,0,0,2776),
(37992,51293,0,0,2783),
(37992,51145,0,0,2775),
(37992,51294,0,0,2784);

-- Talan Moonstrike 37998
UPDATE creature_template SET NpcFlags = 4225, GossipMenuId = 11099 WHERE entry = 37998;
-- Gerardo the Suave 37993
UPDATE creature_template SET Faction = 1735, UnitFlags = 33536, GossipMenuId = 11099, EquipmentTemplateId = 2529 WHERE entry = 37993;
DELETE FROM creature_equip_template WHERE entry=2529;
INSERT INTO creature_equip_template VALUES
(2529, 0,0,34274);
DELETE FROM gossip_menu WHERE entry IN (11099);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11099, 15449, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11099;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11099,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 82); -- Hunter only
DELETE FROM npc_vendor WHERE entry=37993;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(37993,50115,0,0,2742),
(37993,50116,0,0,2742),
(37993,50118,0,0,2742),
(37993,50114,0,0,2740),
(37993,50117,0,0,2740),
(37993,51154,0,0,2899),
(37993,51285,0,0,2900),
(37993,51153,0,0,2898),
(37993,51286,0,0,2901),
(37993,51152,0,0,2897),
(37993,51287,0,0,2902),
(37993,51151,0,0,2896),
(37993,51288,0,0,2903),
(37993,51150,0,0,2895),
(37993,51289,0,0,2904);

-- Jedebia 38840
UPDATE creature_template SET NpcFlags = 4225, GossipMenuId = 11097 WHERE entry = 38840;
-- Vol'guk 38841
UPDATE creature_template SET Faction = 1735, UnitFlags = 33536, GossipMenuId = 11097 WHERE entry = 38841;
DELETE FROM gossip_menu WHERE entry IN (11097);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11097, 15446, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11097;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11097,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 93); -- Shaman only
DELETE FROM npc_vendor WHERE entry=38841;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(38841,50830,0,0,2742),
(38841,50832,0,0,2742),
(38841,50841,0,0,2742),
(38841,50837,0,0,2742),
(38841,50843,0,0,2742),
(38841,50844,0,0,2742),
(38841,50838,0,0,2742),
(38841,50835,0,0,2742),
(38841,50833,0,0,2742),
(38841,50842,0,0,2740),
(38841,50831,0,0,2740),
(38841,50836,0,0,2740),
(38841,50834,0,0,2740),
(38841,50845,0,0,2740),
(38841,50839,0,0,2740),
(38841,51195,0,0,2915),
(38841,51244,0,0,2920),
(38841,51197,0,0,2917),
(38841,51242,0,0,2922),
(38841,51201,0,0,2926),
(38841,51238,0,0,2931),
(38841,51196,0,0,2916),
(38841,51243,0,0,2921),
(38841,51191,0,0,2906),
(38841,51248,0,0,2911),
(38841,51200,0,0,2925),
(38841,51239,0,0,2930),
(38841,51192,0,0,2907),
(38841,51247,0,0,2912),
(38841,51202,0,0,2927),
(38841,51237,0,0,2932),
(38841,51203,0,0,2928),
(38841,51236,0,0,2933),
(38841,51193,0,0,2908),
(38841,51246,0,0,2913),
(38841,51199,0,0,2919),
(38841,51240,0,0,2935),
(38841,51204,0,0,2929),
(38841,51235,0,0,2934),
(38841,51194,0,0,2909),
(38841,51245,0,0,2914),
(38841,51190,0,0,2905),
(38841,51249,0,0,2910),
(38841,51198,0,0,2918),
(38841,51241,0,0,2923);

-- Malfus Grimfrost 38283
UPDATE creature_template SET NpcFlags = 4225, GossipMenuId = 11103 WHERE entry = 38283;
-- Uvlus Banefire 38284
UPDATE creature_template SET Faction = 1735, UnitFlags = 33536, NpcFlags = 4225, GossipMenuId = 11103 WHERE entry = 38284;
DELETE FROM gossip_menu WHERE entry IN (11103);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11103, 15453, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11103;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11103,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 79); -- Mage only
DELETE FROM npc_vendor WHERE entry=38284;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(38284,50276,0,0,2742),
(38284,50277,0,0,2742),
(38284,50278,0,0,2742),
(38284,50275,0,0,2740),
(38284,50279,0,0,2740),
(38284,51159,0,0,2749),
(38284,51280,0,0,2750),
(38284,51158,0,0,2748),
(38284,51281,0,0,2751),
(38284,51157,0,0,2747),
(38284,51282,0,0,2752),
(38284,51156,0,0,2746),
(38284,51283,0,0,2753),
(38284,51155,0,0,2745),
(38284,51284,0,0,2754);

-- Scott the Merciful 38054
UPDATE creature_template SET GossipMenuId = 11102 WHERE entry = 38054;
DELETE FROM gossip_menu WHERE entry IN (11102);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11102, 15452, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11102;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11102,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 77); -- Priest only
DELETE FROM npc_vendor WHERE entry=38054;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(38054,50393,0,0,2742),
(38054,50392,0,0,2742),
(38054,51258,0,0,2873),
(38054,50769,0,0,2742),
(38054,50391,0,0,2740),
(38054,51264,0,0,2864),
(38054,51257,0,0,2872),
(38054,50767,0,0,2740),
(38054,50766,0,0,2740),
(38054,50765,0,0,2742),
(38054,51175,0,0,2855),
(38054,51181,0,0,2866),
(38054,51261,0,0,2861),
(38054,51178,0,0,2858),
(38054,50394,0,0,2742),
(38054,51177,0,0,2857),
(38054,51255,0,0,2870),
(38054,51180,0,0,2865),
(38054,51260,0,0,2860),
(38054,51176,0,0,2856),
(38054,51182,0,0,2867),
(38054,51183,0,0,2868),
(38054,51263,0,0,2863),
(38054,51179,0,0,2859),
(38054,51259,0,0,2874),
(38054,51184,0,0,2869),
(38054,51256,0,0,2871),
(38054,50396,0,0,2740),
(38054,51262,0,0,2862),
(38054,50768,0,0,2742);

-- Crusader Grimton 37688
UPDATE creature_template SET GossipMenuId = 11100 WHERE entry = 37688;
DELETE FROM gossip_menu WHERE entry IN (11100);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11100, 15450, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11100;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(11100,0,1,'I wish to browse your wares.', 0, 3, 1, 0, 74); -- Warrior only
DELETE FROM npc_vendor WHERE entry=37688;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(37688,50078,0,0,2742),
(37688,50850,0,0,2742),
(37688,50848,0,0,2742),
(37688,50080,0,0,2742),
(37688,50847,0,0,2742),
(37688,50081,0,0,2742),
(37688,50079,0,0,2740),
(37688,50849,0,0,2740),
(37688,50846,0,0,2740),
(37688,50082,0,0,2740),
(37688,51214,0,0,2879),
(37688,51225,0,0,2880),
(37688,51219,0,0,2889),
(37688,51220,0,0,2890),
(37688,51213,0,0,2878),
(37688,51226,0,0,2881),
(37688,51218,0,0,2888),
(37688,51221,0,0,2891),
(37688,51217,0,0,2887),
(37688,51222,0,0,2892),
(37688,51212,0,0,2877),
(37688,51227,0,0,2882),
(37688,51216,0,0,2886),
(37688,51223,0,0,2893),
(37688,51211,0,0,2876),
(37688,51228,0,0,2883),
(37688,51215,0,0,2885),
(37688,51224,0,0,2894),
(37688,51210,0,0,2875),
(37688,51229,0,0,2884);

-- Lord Marrowgar 36612
-- visibility for all his versions
UPDATE creature_template SET visibilityDistanceType = 5 WHERE entry IN (37957,37958,37959);

-- Decaying Colossus 36880
UPDATE creature_template SET MovementType = 2 WHERE entry = 36880;

-- High Overlord Saurfang 36939
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 10954 WHERE entry IN (36939,38156,38637,38638);
DELETE FROM gossip_menu WHERE entry IN (10954);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(10954, 15219, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 10954;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(10954,0,0,'My companions are all accounted for, Saurfang. Let\'s go!',37637, 1, 1, -1, 0, 0); -- REQ Script that starts Horde Gun Battle

-- Muradin Bronzebeard 36948
DELETE FROM gossip_menu_option WHERE menu_id = 10875;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(10875,0,0,'My companions are all accounted for, Muradin. Let\'s go!',36920, 1, 1, -1, 0, 0); -- REQ Script that starts Alliance Gun Battle

-- Deathbound Ward 37007
UPDATE creature_template SET UnitFlags = 32832 WHERE entry IN (37007,38031);

-- The Damned 37011
UPDATE creature_template SET Faction = 16, UnitFlags = 33344, MovementType = 2 WHERE entry IN (37011,38061);

-- Highlord Tirion Fordring 37119
UPDATE creature_template SET MovementType = 2 WHERE entry IN (37119);

-- Skybreaker Vicar 37021
UPDATE creature_template SET Faction = 84, EquipmentTemplateid = 2530 WHERE Entry = 37021;
DELETE FROM creature_equip_template WHERE entry=2530;
INSERT INTO creature_equip_template VALUES
(2530, 49724,0,0);

-- Stinky 37025
UPDATE creature_template SET MovementType = 2 WHERE entry = 37025;

-- Vengeful Fleshreaper 37038
UPDATE creature_template SET MovementType = 2 WHERE entry = 37038;

-- Ymirjar Frostbinder 37127
UPDATE creature_template SET UnitFlags = 32832 WHERE entry = 37127;

-- Ymirjar Huntress 37134
UPDATE creature_template SET UnitFlags = 32832 WHERE entry = 37134; 

-- Zafod Boombox 37184
DELETE FROM gossip_menu WHERE entry IN (10885);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(10885, 15123, 0, 0),
(10885, 15134, 0, 20187);
DELETE FROM gossip_menu_option WHERE menu_id = 10885;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(10885,0,0,'Yeah, I\'m sure safety is your top priority. Give me a rocket pack.',37026, 1, 1, -1, 1088501, 20187);
DELETE FROM conditions WHERE condition_entry = 20187;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20187,23,49278,1,0,0,1);
DELETE FROM dbscripts_on_gossip WHERE id = 1088501; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1088501,0,17,49278,1,0,0,0,0,0,0,0,0,0,0,0,0,'create 49278 for Player');

-- High Overlord Saurfang 37187
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 10953 WHERE entry = 37187;
DELETE FROM gossip_menu WHERE entry IN (10952,10953);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(10952, 15218, 0, 0),
(10953, 15217, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (10952,10953);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(10952,0,0,'Lok\'tar ogar! We are ready! Onward, brother orc!',37633, 1, 1, -1, 0, 0), -- REQ Script that starts Horde Boss Saurfang (son) Event 
(10953,0,0,'We are ready to go, High Overlord. The Lich King must fall!',37631, 1, 1, 10952, 0, 0);

-- Kor'kron General 37189
UPDATE creature_template SET Faction = 1735, UnitFlags = 33536, EquipmentTemplateId = 2023 WHERE entry = 37189;

-- Muradin Bronzebeard 37200
UPDATE creature_template SET InhabitType = 3, MovementType = 2 WHERE entry = 37200;
DELETE FROM gossip_menu WHERE entry IN (10933,10934);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(10933, 15194, 0, 0),
(10934, 15195, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (10933,10934);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(10933,0,0,'We\'re ready, Muradin.',37446, 1, 1, 10934, 0, 0), 
(10934,0,0,'We\'re sure. Let\'s go!',37448, 1, 1, -1, 0, 0); -- REQ Script that starts Alliance Boss Saurfang (son) Event

-- Precious 37217
UPDATE creature_template SET MovementType = 2 WHERE entry = 37217;

-- Spire Frostwyrm 37230
UPDATE creature_template SET Faction = 82, MovementType = 2 WHERE entry = 37230;

-- Rimefang 37533
UPDATE creature_template SET MovementType = 3 WHERE entry = 37533;

-- Spinestalker 37534
UPDATE creature_template SET MovementType = 3 WHERE entry = 37534;

-- Garrosh Hellscream 39372
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, Faction = 1735, UnitFlags = 768, NpcFlags = 1, GossipMenuId = 11206, EquipmentTemplateId = 1391 WHERE entry = 39372;
DELETE FROM gossip_menu WHERE entry IN (11206,11207,11208);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(11206, 15606, 0, 0),
(11207, 15608, 0, 0),
(11208, 15609, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (11206,11207);
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(11206,0,0,'Northrend requires your attention Overlord Hellscream. We will deal with the Lich King and his minions without your aid.', 1, 1, 11207, 0, 0, 0, 0, NULL, 0),
(11207,0,0,'The word is given. The Lich King will die by our hands!', 1, 1, 11208, 0, 0, 0, 0, NULL, 0);
DELETE FROM npc_text WHERE ID IN(15608,15609);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_1,em0_2,em0_3) VALUES
(15608,'You turn away the might of the Warsong Offensive? Has the chaos of battle turned you mad? With my help, victory is at hand! Without my help, your fight will be difficult.','',0,1,396,0,0),
(15609,'Glory to the Horde!','',0,1,5,0,0);
