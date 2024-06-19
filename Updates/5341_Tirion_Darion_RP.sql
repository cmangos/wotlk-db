-- Tirion & Darion RP

-- The Ebon Watcher 30377
UPDATE creature_template_addon SET sheath_state = 0 WHERE entry = 30377;

-- Highlord Tirion Fordring 28179
UPDATE creature_template SET UnitClass = 2 WHERE entry = 28179;
DELETE FROM dbscripts_on_relay WHERE id = 20914;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20914,1,31,30377,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: search for 30377'),
(20914,100,21,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy active'),
(20914,101,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: active'),
(20914,200,0,0,0,0,0,0,0x04,31004,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: say'),
(20914,201,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: emote'),
(20914,5000,0,0,0,0,30377,20,7,31005,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,5001,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,11000,0,0,0,0,30377,20,7,31006,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,11001,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,19000,0,0,0,0,30377,20,3,31007,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,19001,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,24000,0,0,0,0,0,0,0x04,31008,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: say'),
(20914,24001,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: emote'),
(20914,29000,0,0,0,0,30377,20,3,31009,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,29000,1,274,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,31000,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,41000,0,0,0,0,0,0,0x04,31010,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: say'),
(20914,41001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: emote'),
(20914,49000,0,0,0,0,30377,20,7,31011,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,52000,0,0,0,0,30377,20,7,31012,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,52001,1,25,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,55000,1,5,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,61000,0,0,0,0,30377,20,7,31013,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,61001,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,67000,0,0,0,0,30377,20,7,31014,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,67001,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,79000,0,0,0,0,30377,20,7,31015,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,79001,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,83001,1,274,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,91000,0,0,0,0,0,0,0x04,31016,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: say'),
(20914,91001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: emote'),
(20914,96001,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: emote'),
(20914,102000,0,0,0,0,30377,20,7,31017,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy say'),
(20914,102001,1,1,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy emote'),
(20914,103000,21,0,0,0,30377,20,7,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: buddy unactive'),
(20914,102001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Tirion Fordring 28179 EAI: unactive');
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `id` IN (31011);
