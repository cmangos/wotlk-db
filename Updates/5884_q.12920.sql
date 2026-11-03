-- q.12920 'Catching up with Brann'
DELETE FROM `gossip_menu_option` WHERE menu_id=9853;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(9853, 0, 0, 'Do you understand me? We should be able to understand each other now.', 30618, 1, 1, 0, 0, 985301, 0, 0, '', 0, 21122);
DELETE FROM conditions WHERE condition_entry BETWEEN 21120 AND 21122;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(21120,9,12920,0,0,0,0), -- q. taken
(21121,8,12920,0,0,0,1), -- q. not rewarded yet
(21122,-1,21121,21120,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 985301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(985301,0,15,55579,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(985301,1,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'NPcFlags Removed'),
(985301,2,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(985301,100,0,0,0,0,0,0,0,30624,0,0,0,0,0,0,0,''), -- I... I can understand you now!
(985301,1000,29,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'NPcFlags restored'),
(985301,3200,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(985301,6000,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(985301,6100,0,0,0,0,0,0,0,30625,0,0,0,0,0,0,0,''), -- How did you get my communic
(985301,12000,15,55589,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on Player'),
(985301,18000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 01:31:22.489
(985301,18100,0,0,0,0,0,0,0,30626,0,0,0,0,0,0,0,''), -- 01:31:22.588
(985301,25000,15,55590,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on Player'), -- 01:31:29.795
(985301,31000,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 01:31:36.274
(985301,31100,0,0,0,0,0,0,0,30627,0,0,0,0,0,0,0,''), -- 01:31:36.374 -- That wouldn\'t be Scout Vor\'takh,
(985301,38000,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 01:31:43.561
(985301,38100,0,0,0,0,0,0,0,30628,0,0,0,0,0,0,0,''), -- 01:31:43.659  -- If you\'ve seen the journal,
(985301,44000,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 01:31:50.835 
(985301,44100,0,0,0,0,0,0,0,30629,0,0,0,0,0,0,0,''), -- 01:31:50.938  -- Loken and his iron dw
(985301,51000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 01:31:58.107 
(985301,51100,0,0,0,0,0,0,0,30630,0,0,0,0,0,0,0,''), -- 01:31:58.222  -- If we spend our time and 
(985301,58000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 01:32:05.364 
(985301,58100,0,0,0,0,0,0,0,30631,0,0,0,0,0,0,0,''), -- 01:32:05.463  -- Speak to the commander at your post
(985301,65000,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'kill credit'); -- 01:32:12.647
DELETE FROM dbscripts_on_spell WHERE id IN (55578,55589,55590);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(55589,100,0,0,0,0,0,0,0x002,30622,0,0,0,0,0,0,0,''), -- How did you get my communic
(55590,100,0,0,0,0,0,0,0x002,30623,0,0,0,0,0,0,0,''); -- A scout found the remains of your journal in
DELETE FROM spell_script_target WHERE entry IN (55578);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(55578, 1, 29579, 0);
