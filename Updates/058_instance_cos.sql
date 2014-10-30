-- despawn guardian of life with infinite corruptor
DELETE FROM creature_linking_template WHERE entry IN (32281,28409);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(32281, 595, 32273, 8192, 50),
(28409, 595, 32273, 8208, 50);

-- epilog event on corruptor death
DELETE FROM db_script_string WHERE entry=2000005821;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005821,'You have my thanks for saving my existence in this timeline. Now I must report back to my superiors. They must know immediately of what I just experienced.',0,0,0,0,'guardian of life - say thank you');
DELETE FROM dbscripts_on_creature_death WHERE id=32273;
INSERT INTO dbscripts_on_creature_death (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(32273,0,14,60451,0,32281,50,0,0,'Guardian of Life - remove aura Corruption of Time'),
(32273,2,0,0,0,32281,50,0,2000005821,'Guardian of Life - say thank you'),
(32273,2,18,10000,0,32281,50,2,0,'Guardian of Life - Despawn');

-- Add game tele for easy access
DELETE FROM game_tele WHERE id=1425;
INSERT INTO game_tele VALUES
(1425, -8755.839, -4454.571, -200.169, 4.37, 1, 'CullingOfStratholme');
