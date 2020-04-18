-- Remove old implementation stuff
DELETE FROM dbscripts_on_event WHERE id = 15452 AND command IN (20);
DELETE FROM creature_movement_template WHERE entry = 4792;
DELETE FROM dbscripts_on_creature_movement WHERE id = 479201;

-- Update and insert new stuff
UPDATE creature_template SET UnitFlags = 768 WHERE `Entry` = 23864;

DELETE FROM dbscripts_on_event WHERE id = 15452 AND command IN (15, 3, 5);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15452, 5000, 15, 42515, 0, 0, 4792, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Jarl Beam'),
(15452, 25000, 3, 2, 0, 0, 23864, 50, 0, 0, 0, 0, 0, -2966.3201, -3873.3337, 33.222, 5.45, 'Move In'),
(15452, 38000, 5, 46, 768, 0, 23864, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Flags');
