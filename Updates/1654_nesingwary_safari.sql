-- Add safety despawn timer for Nesingwary Safari talbulk attack script
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1818001;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1818001,0,10,17130,300000,1,0,0,0,0,0,0,0,'Hemet Nesingwary - Summon Talbuk Stag 1',-1404.007,6327.922,39.87714,5.099442),
(1818001,0,10,17130,300000,2,0,0,0,0,0,0,0,'Hemet Nesingwary - Summon Talbuk Stag 2',-1414.938,6305.905,42.40896,2.952087),
(1818001,0,10,17130,300000,3,0,0,0,0,0,0,0,'Hemet Nesingwary - Summon Talbuk Stag 3',-1416.502,6317.921,40.0441,0.466735),
(1818001,2,22,495,16,0,0,0,0,0,18200,15,7,'Shado ''Fitz'' Farstrider - Set Faction 495',0,0,0,0),
(1818001,2,22,495,16,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Set Faction 495',0,0,0,0),
(1818001,2,0,0,0,0,2000001287,0,0,0,0,0,0,'Hemet Nesingwary - Uh oh, those stags don\'t look pleased with us!',0,0,0,0);
