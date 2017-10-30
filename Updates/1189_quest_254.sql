-- Fix Eliza not being attackable
-- q.253 'Bride of the Embalmer'
-- q.254 'Digging Through the Dirt'
DELETE FROM dbscripts_on_quest_end WHERE id=254 AND delay=2;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(254, 2, 5, 58, 256, 0, 314, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Remove UnitFlag - Immune to Player');
