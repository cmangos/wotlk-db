-- q.12847 'Second Chances' - corrected
-- Landgren's Soul 29572
UPDATE creature_template SET InhabitType = 3 WHERE Entry = 29572;
DELETE FROM creature_template_addon WHERE entry IN (29572);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29572,0,0,0,0,0,0,36545);
DELETE FROM dbscripts_on_relay WHERE id IN (20046);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20046,7000,15,36550,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: cast 36550'),
(20046,16000,15,54723,0,0,29560,100,3,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: buddy cast 54723'),
(20046,25000,0,0,0,0,0,0,0,30245,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: say'),
(20046,30000,14,54723,0,0,29560,50,1,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: remove aura from buddy'),
(20046,31000,0,0,0,0,29560,50,7,30246,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: buddy say'),
(20046,35000,0,0,0,0,0,0,0,30247,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: say'),
(20046,42000,0,0,0,0,29560,50,7,30248,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: buddy say'),
(20046,45000,1,25,0,0,29560,50,3,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: emote'),
(20046,47000,15,54723,0,0,29560,100,3,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: buddy cast 54723'),
(20046,50000,0,0,0,0,0,0,0,30250,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: say'),
(20046,55000,15,35426,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: cast 35426'),
(20046,56000,14,54723,0,0,29560,50,1,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: remove aura from buddy'),
(20046,58000,29,2,1,0,29560,50,7,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: NpcFlags added'),
(20046,58001,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: unactive'),
(20046,58002,21,0,0,0,29560,50,7,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: Arete - unactive'),
(20046,58003,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Landgren\'s Soul 29572 EAI: despawn self');
