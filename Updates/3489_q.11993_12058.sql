-- q.11993 'The Runic Prophecies' - Alliance
-- q.12058 'The Runic Prophecies' - Horde
DELETE FROM dbscripts_on_spell WHERE id IN (47062,47063,47064);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- First Rune Plate
(47062,0,0,0,0,0,0,0,0x04,2000020885,0,0,0,0,0,0,0,''),
-- Second Rune Plate
(47063,0,0,0,0,0,0,0,0x04,2000020884,0,0,0,0,0,0,0,''),
-- Third Rune Plate
(47064,0,0,0,0,0,0,0,0x04,2000020886,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020884 AND 2000020886;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020884,'\'Return to Ulduar, nestled in the embrace of the storm.\'',0,0,0,0,NULL),
(2000020885,'\'Shall return to the cradle of iron and stone.\'',0,0,0,0,NULL),
(2000020886,'\'Greatest of the Maker\'s children, arise and claim your birthright.\'',0,0,0,0,NULL);
