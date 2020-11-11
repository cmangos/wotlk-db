-- q.12500 'Return To Angrathar' - H
-- q.12499 'Return To Angrathar' - A
-- Make sure both sides are sync in this moment
DELETE FROM dbscripts_on_quest_end WHERE id IN (12499,12500);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12499,0,19,14,0,0,0,0,0,0,0,0,0,0,0,0,0,'Play movie'),
(12499,100,14,46999,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove: Dragonblight Invisibility Detect'),
(12499,1000,15,58932,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast: Post-Wrath Gate Phase'),
(12500,0,19,14,0,0,0,0,0,0,0,0,0,0,0,0,0,'Play movie'),
(12500,100,14,46999,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove: Dragonblight Invisibility Detect'),
(12500,1000,15,58932,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Post-Wrath Gate Phase');
