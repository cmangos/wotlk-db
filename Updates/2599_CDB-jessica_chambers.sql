-- Reexport script for Jessica Chambers feeding Bortherhood of Light council in Light's Hope Chapel
-- changed timing to avoid this script to overlap with Commander Eligor Dawnbringer's one

-- NPC 16115 (Commander Eligor Dawnbringer) will start the script by allowing NPC 16256 (Jessica Chambers) to move and trigger WP scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=1611501 AND delay=256;
INSERT INTO dbscripts_on_creature_movement VALUES
(1611501, 256000, 32, 0, 0, 0, 16256, 25, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

UPDATE creature SET MovementType=2 WHERE id=16256;

DELETE FROM creature_movement_template WHERE entry=16256;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(16256, 0, 1, 2300.9, -5345.09, 90.8799, 2.16421, 0, 1625601),
(16256, 0, 2, 2300.9, -5345.09, 90.8799, 2.16421, 0, 0),
(16256, 0, 3, 2300.58, -5340.83, 90.8805, 2.81973, 0, 1625602),
(16256, 0, 4, 2300.58, -5340.83, 90.8805, 2.81973, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1625601, 1625602);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1625601, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(1625601, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.16421, ''),
(1625602, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(1625602, 1000, 31, 16113, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16113'),
(1625602, 1000, 31, 16114, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114'),
(1625602, 1000, 31, 16115, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16115'),
(1625602, 1000, 31, 16116, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16116'),
(1625602, 2000, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.81973, ''),
(1625602, 2000, 29, 3, 2, 0, 16113, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2000, 29, 3, 2, 0, 16114, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2000, 29, 3, 2, 0, 16115, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2000, 29, 3, 2, 0, 16116, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 5000, 0, 0, 0, 0, 0, 0, 0, 2000003152, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 9000, 0, 0, 0, 0, 0, 0, 0, 2000003153, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 12000, 0, 0, 0, 0, 0, 0, 0, 2000003154, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 16000, 0, 0, 0, 0, 16115, 15, 7, 2000003155, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 18000, 0, 0, 0, 0, 16113, 15, 7, 2000003156, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 21000, 0, 0, 0, 0, 16114, 15, 7, 2000003157, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 23000, 0, 0, 0, 0, 0, 0, 0, 2000003158, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 27000, 0, 0, 0, 0, 16114, 15, 7, 2000003159, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 33000, 0, 0, 0, 0, 16116, 15, 7, 2000003160, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 37000, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement'),
(1625602, 37000, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37000, 29, 3, 1, 0, 16113, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37000, 29, 3, 1, 0, 16114, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37000, 29, 3, 1, 0, 16115, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37000, 29, 3, 1, 0, 16116, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000003152 AND 2000003160;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003152, 'Ok, you had the fish platter, Commander. Enjoy!', 0, 0, 0, 1, NULL),
(2000003153, 'Father, you had the bowl of fruit? Right?', 0, 0, 0, 1, NULL),
(2000003154, 'And for the ladies, roast baby boar. Enjoy!', 0, 0, 0, 1, NULL),
(2000003155, 'My compliments to the chef!', 0, 0, 0, 1, NULL),
(2000003156, 'Is this a mango? Stupendous!', 0, 0, 0, 1, NULL),
(2000003157, 'Thank you, Jessica.', 0, 0, 0, 1, NULL),
(2000003158, 'Please let me know if you need anything else!', 0, 0, 0, 1, NULL),
(2000003159, 'And I might add, that dress is lovely! You must tell me where you got it from.', 0, 0, 0, 1, NULL),
(2000003160, 'Indeed... Lovely dress, Jessica.', 0, 0, 0, 1, NULL);
