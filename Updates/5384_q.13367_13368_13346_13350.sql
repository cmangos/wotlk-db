-- q.13367 'No Rest For The Wicked' - H
-- q.13368 'No Rest For The Wicked' - H -- Daily
-- q.13346 'No Rest For The Wicked' - A
-- q.13350 'No Rest For The Wicked' - A -- Daily

-- Script
DELETE FROM dbscripts_on_spell WHERE id IN (60834);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(60834,0,31,32300,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 32300 - terminate if alive'),
(60834,10,17,44480,1,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(60834,100,10,32300,600000,0,0,0,0x04,0,0,0,0,8219.157,2187.093,499.8201,3.10668,'Player summon 32300');
-- Alumeth the Ascended 32300
-- MECHANIC_SNARE added
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` + 1024 WHERE `entry` = 32300;
