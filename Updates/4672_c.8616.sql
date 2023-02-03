-- Infernal Servant 8616
DELETE FROM dbscripts_on_creature_death WHERE id = 8616;
INSERT INTO dbscripts_on_creature_death (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(8616,10000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
