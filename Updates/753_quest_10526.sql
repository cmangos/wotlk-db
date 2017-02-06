-- q.10526 'The thunderspike'
DELETE FROM dbscripts_on_event WHERE id = 13685;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13685,0,31,21319,200,0,0,8,0,0,0,0,0,0,0,0,'search for 21319'),
(13685,1,10,21319,300000,0,0,0,0,0,0,0,1316.33,6686.82,-18.6386,0.418724,'summon - Gor Grimgut'),
(13685,3,0,0,0,21319,50,3,2000001104,0,0,0,0,0,0,0,''),
(13685,3,3,0,0,21319,50,7,0,0,0,0,0,0,0,1.98952,''),
(13685,5,42,0,0,21319,50,7,30440,0,0,0,0,0,0,0,'change equipment'),
(13685,5,40,0,0,184737,44736,1 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(13685,6,0,0,0,21319,50,7,2000001105,0,0,0,0,0,0,0,''),
(13685,6,22,1781,0x01 | 0x08,21319,50,0,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry IN (2000001104,2000001105);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001104,'Puny $r cannot lift spear. Gor lift spear!',0,0,0,0,NULL),
(2000001105,'Hah! The Thunderspike is mine. Die!',0,0,0,0,NULL);

-- Gor Grimgut
UPDATE creature_template SET FactionAlliance = 1781, FactionHorde = 1781, UnitFlags = 32770, MovementType = 0 WHERE entry = 21319;

-- Gameobjects update
UPDATE gameobject SET spawntimesecs = 120 WHERE id IN (184729,184737);
UPDATE gameobject_template SET data5 = 1 WHERE entry = 184729;
