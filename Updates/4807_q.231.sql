-- q.231 'A Daughter's Love'
DELETE FROM dbscripts_on_quest_end WHERE id IN (231);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(231,1,31,3301,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for 3301 - terminate if alive'),
(231,100,10,3301,13000,0,0,0,0x04,0,0,0,0,-10237.699,353.66428,51.022873,2.70994114875793457,'summon 3301');
-- Morgan Ladimore 3301
DELETE FROM dbscripts_on_relay WHERE id IN (32);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32,1,1,5,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Morgan Ladimore 3301 EAI: emote'),
(32,2500,0,0,0,0,0,0,0,1014,0,0,0,0,0,0,0,'Part of Morgan Ladimore 3301 EAI: Say 1'),
(32,6000,0,0,0,0,0,0,0,1015,0,0,0,0,0,0,0,'Part of Morgan Ladimore 3301 EAI: Say 2'),
(32,9000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Morgan Ladimore 3301 EAI: STATE_KNEEL');
