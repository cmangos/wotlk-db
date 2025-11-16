-- q.12969 'Is That Your Goblin?'
-- Agnetta Tyrsdottar 30154
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id IN (30154);
UPDATE creature_template SET ExtraFlags = 1048576 WHERE entry = 30154;
UPDATE gossip_menu_option SET option_broadcast_text = 30806, action_menu_id = 0, action_script_id  = 987401 WHERE menu_id = 9874;
DELETE FROM dbscripts_on_gossip WHERE id IN (9874,987401);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(987401,0,15,55716,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 55716'), -- 17:50:17.715
(987401,52,0,0,0,0,0,0,0,30807,0,0,0,0,0,0,0,'Say'), -- 17:50:17.757
(987401,75,29,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'remove NpcFlag'), -- 17:50:17.783
(987401,76,22,14,0x01|0x02,0,0,0,0x004,0,0,0,0,0,0,0,0,'temp Faction'),
(987401,80,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack Player');
DELETE FROM dbscripts_on_creature_death WHERE id IN (30154);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30154,1,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5');
-- Zeev Fizzlespark 29525
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id IN (29525);
DELETE FROM creature_movement_template WHERE Entry = 29525;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(29525,1,6892.559,-1592.5862,820.8477,100,7000,2952501),
(29525,2,6879.4707,-1576.7057,821.87714,100,0,0),
(29525,3,6859.151,-1561.3475,821.2998,100,0,0),
(29525,4,6837.5625,-1544.6599,819.18066,100,1000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2952501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2952501,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'), -- 17:50:26.636
(2952501,100,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Run On'),
(2952501,4000,0,0,0,0,0,0,0,30803,0,0,0,0,0,0,0,'say'); -- 17:50:30.057
