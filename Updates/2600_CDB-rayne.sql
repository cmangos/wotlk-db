-- Add script for NPC 16134 (Rimbat Earthshatter) and NPC 16135 (Rayne) in Light's Hope Chapel
-- This closes https://github.com/cmangos/issues/issues/1482

UPDATE creature SET MovementType=2 WHERE id=16134;

DELETE FROM creature_movement_template WHERE entry=16134;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(16134, 0, 1, 2276.66, -5325.3, 88.7947, 4.81711, 480000, 1613401);

DELETE FROM dbscripts_on_creature_movement WHERE id=1613401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1613401, 201000, 31, 16135, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114'),
(1613401, 202000, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1613401, 202000, 29, 3, 2, 0, 16135, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1613401, 202000, 0, 0, 0, 0, 0, 0, 0, 2000003161, 0, 0, 0, 0, 0, 0, 0, ''),
(1613401, 209000, 0, 0, 0, 0, 16135, 15, 7, 2000003162, 0, 0, 0, 0, 0, 0, 0, ''),
(1613401, 213000, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1613401, 213000, 29, 3, 1, 0, 16135, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000003161 AND 2000003162;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003161, 'Watch, druid. The earth still breathes. It yearns to be cleansed.', 0, 0, 0, 1, NULL),
(2000003162, 'That is wondrous, Rimblat! Even this foul, sundered earth is not beyond healing.', 0, 0, 0, 1, NULL);
