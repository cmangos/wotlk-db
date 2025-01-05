-- q.13146 'Generosity Abounds'
-- q.13147 'Matchmaker'
-- q.13160 'Stunning View'

-- Lumbering Atrocity 30920
-- Umbral Brute 30922
DELETE FROM dbscript_random_templates WHERE `id` IN (20376,20377);
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
-- 20376
(20376,0,31608,0,'Lumbering Atrocity 30920 - Random text 1'),
(20376,0,31609,0,'Lumbering Atrocity 30920 - Random text 2'),
(20376,0,31610,0,'Lumbering Atrocity 30920 - Random text 3'),
(20376,0,31611,0,'Lumbering Atrocity 30920 - Random text 4'),
(20376,0,31612,0,'Lumbering Atrocity 30920 - Random text 5'),
(20376,0,31613,0,'Lumbering Atrocity 30920 - Random text 6'),
(20376,0,31614,0,'Lumbering Atrocity 30920 - Random text 7'),
(20376,0,31615,0,'Lumbering Atrocity 30920 - Random text 8'),
-- 20377
(20377,0,32217,0,'Umbral Brute 30922 - Random text 1'),
(20377,0,32218,0,'Umbral Brute 30922 - Random text 2'),
(20377,0,32220,0,'Umbral Brute 30922 - Random text 3'),
(20377,0,32221,0,'Umbral Brute 30922 - Random text 4'),
(20377,0,32222,0,'Umbral Brute 30922 - Random text 5'),
(20377,0,32223,0,'Umbral Brute 30922 - Random text 6'),
(20377,0,32224,0,'Umbral Brute 30922 - Random text 7');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (32217,32218,32220,32221,32222,32223,32224);
-- Umbral Brute 30922
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21113 AND 21115;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21113,1,31,30921,15,0,30922,15,0x02,0,0,0,0,0,0,0,0,'Part of Umbral Brute 30922 EAI: buddy search for target'),
(21113,100,15,52353,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Umbral Brute 30922 EAI: buddy cast 52353'),
(21113,200,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Umbral Brute 30922 EAI: send event 5'),
(21114,3000,15,59098,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Scourge Bomb 31075 EAI: cast 59098'),
(21114,3001,15,59078,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Scourge Bomb 31075 EAI: cast 59078'),
(21114,5000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Scourge Bomb 31075 EAI: despawn self'),
(21115,1,18,50,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: despawn self'),
(21115,2,15,58231,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 58231'),
(21115,4,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 52516'),
(21115,5,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 52516'),
(21115,6,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 52516'),
(21115,7,15,52520,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 52520'),
(21115,8,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 52523'),
(21115,9,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 52523'),
(21115,10,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 52523'),
(21115,11,15,52593,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lumbering Atrocity 30920 EAI: cast 58231');
DELETE FROM dbscripts_on_spell WHERE id IN (52353);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52353,1,31,30921,15,0,0,0,0,0,0,0,0,0,0,0,0,'search for 30921'),
(52353,100,36,0,0,0,30921,15,1,0,0,0,0,0,0,0,0,'face 30921'),
(52353,1000,0,20377,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'say'),
(52353,1001,1,27,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(52353,3001,22,1965,0x01|0x02|0x04,0,0,0,0x04,0,0,0,0,0,0,0,0,'temp Faction'),
(52353,3002,22,1848,0x01|0x02|0x04,0,30921,15,7,0,0,0,0,0,0,0,0,'buddy temp Faction'),
(52353,4000,26,0,0,0,30921,15,1,0,0,0,0,0,0,0,0,'attack buddy');
