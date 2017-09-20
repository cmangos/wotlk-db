-- q.11652 'The Plains of Nasam'
-- Some parts of quest corrected
--  * Player will recive q. credit for rescuing Injured Warsong Units
--  * Spell:Land Mine Barrier - will correctly place 8 mines around Vehicle
--  * Spell:The Demoralizer - wont hit Vehicle anymore
-- Known (core)Issues:
--  * Npc's cannot use vehicle
--  * Spell:The Demoralizer - effect should do damage where spell lands not where vehicle is
--  * Vehicle should despawn after abandoned for 5 mins 

-- Q.Credit
DELETE FROM dbscripts_on_spell WHERE id = 47968; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(47968,1,15,47967,0,0,0,0x02,0,0,0,0,0,0,0,0,'');

-- Land Mine Barrier
-- Description: The siege tank drops 8 Warsong land mines in a circle around itself. Used to take out what the Meatpounder left behind.
DELETE FROM dbscripts_on_spell WHERE id = 45750; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(45750,0,15,45739,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45750,0,15,45749,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45750,0,15,45751,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45750,0,15,45752,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45750,0,15,45753,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45750,0,15,45754,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45750,0,15,45755,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45750,0,15,45756,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- ID - 50674 The Demoralizer
-- wont hit Vehicle anymore
DELETE FROM spell_script_target WHERE entry = 50674;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(50674,1,25332), 
(50674,1,25333),
(50674,1,25469);
