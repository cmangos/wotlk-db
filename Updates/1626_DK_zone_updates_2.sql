-- Havenshire Stallion / Havenshire Mare / Havenshire Colt
-- speed corrected
UPDATE creature_template SET SpeedWalk = (2.5/2.5), SpeedRun = (12/7) WHERE entry IN (28605,28606,28607);
-- this script will handle desp if abandoned and script for q.12680
DELETE FROM dbscripts_on_relay WHERE id = 20045;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20045,4,31,28654,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if 28654 is alive'),
(20045,5,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn self');

-- spell ID - 51915 Undying Resolve
-- must finish after player completes: q.12801 'The Light of Dawn'
UPDATE spell_area SET quest_end = 12801 WHERE spell = 51915;

-- Val'kyr Battle-maiden
UPDATE creature_template SET InhabitType = 4 WHERE entry = 28534;
