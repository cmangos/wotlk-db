-- Viggz Shinesparked
UPDATE creature_template SET MovementType = 2 WHERE entry = 19661;
UPDATE creature SET MovementType = 2 WHERE guid = 70160;
DELETE FROM creature_movement_template WHERE entry = 19661;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19661,1,-2082.395,5283.821,-37.32355,19000,1966101,100),
(19661,2,-2080.562,5286.817,-37.32355,120000,0,0.457883);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1966101);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1966101,0,1,133,0,0,0,0,0,0,0,0,0,'Viggz Shinesparked - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(1966101,17,1,0,0,0,0,0,0,0,0,0,0,'Viggz Shinesparked - ONESHOT_NONE',0,0,0,0);

-- Granny Smith 
UPDATE creature SET MovementType = 2 WHERE guid = 68748;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19223;
DELETE FROM creature_movement_template WHERE entry = 19223;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19223,1,-2070.778,5297.236,-37.32355,38000,0,100), -- pause
(19223,2,-2073.863,5301.942,-37.32355,0,0,100),
(19223,3,-2072.042,5301.753,-37.32355,33000,1922301,100), -- kneel
(19223,4,-2069.664,5304.104,-37.07355,0,0,100), 
(19223,5,-2068.286,5303.457,-37.32355,37000,1922302,100), -- use
(19223,6,-2072.012,5304.302,-37.07355,0,0,100),
(19223,7,-2071.77,5298.449,-37.07355,0,0,100),
(19223,8,-2073.409,5298.43,-37.32355,202000,0,100), -- pause
(19223,9,-2073.323,5289.782,-37.32355,0,0,100),
(19223,10,-2073.09,5289.942,-37.07355,0,0,100),
(19223,11,-2071.214,5288.761,-37.07355,0,0,100),
(19223,12,-2069.447,5289.957,-37.32355,7000,1922303,100), -- grok speech
(19223,13,-2073.529,5289.479,-37.07355,0,0,100),
(19223,14,-2073.485,5295.019,-37.07355,0,0,100),
(19223,15,-2069.132,5296.697,-37.07355,0,0,100);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001303 AND 2000001307;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001303, 'I could have sworn I had more apples.  Grok!',0,0,0,0,'Granny Smith (Entry: 19223)'),
(2000001304, 'What?',0,0,0,6,'Grok (Entry: 22940)'),
(2000001305, 'It was dat angry orc.  He smushed dem!  Want Grok to smush him?',0,0,0,6,'Grok (Entry: 22940)'),
(2000001306, 'Huh?', 0, 0, 0, 6, 'Grok (Entry: 22940)'),
(2000001307, 'Grok not eat all of the apples.  See, der one basket left!',0,0,0,6,'Grok (Entry: 22940)');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1922301,1922302,1922303);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments) VALUES
(1922301,0,28,8,0,0,0,0,0,0,0,0,'Granny Smith - UNIT_STAND_STATE_KNEEL'),
(1922301,31,28,0,0,0,0,0,0,0,0,0,'Granny Smith - UNIT_STAND_STATE_STAND'),
(1922302,0,1,69,0,0,0,0,0,0,0,0,'Granny Smith - STATE_USESTANDING'),
(1922302,34,1,0,0,0,0,0,0,0,0,0,'Granny Smith - ONESHOT_NONE'),
(1922303,0,0,0,0,2000001303,0,0,0,0,0,0,'Granny Smith - I could have sworn I had more apples.  Grok!'),
(1922303,4,36,0,0,0,0,0,0,22940,5,1,'Granny Smith - Face Grok'),
(1922303,4,0,0,0,2000001304,2000001305,2000001306,2000001307,22940,5,3,'Grok - Random text');

-- Cro Threadstrong
UPDATE creature SET MovementType = 2 WHERE guid = 68731;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19196;
DELETE FROM creature_movement_template WHERE entry = 19196;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19196,1,-2062.68,5255.393,-38.46511,32000,1919601,100),
(19196,2,-2060.171,5250.478,-38.46526,0,0,100),
(19196,3,-2058.803,5251.768,-38.2835,0,0,100),
(19196,4,-2057.311,5255.311,-38.21525,0,0,100),
(19196,5,-2057.544,5258.627,-38.22134,0,0,100),
(19196,6,-2058.27,5262.007,-38.21606,0,0,100),
(19196,7,-2059.603,5261.874,-38.46512,8500,1919602,100),
(19196,8,-2062.257,5265.815,-38.21502,0,0,100),
(19196,9,-2063.573,5267.653,-38.21495,13000,1919603,100),
(19196,10,-2068.837,5262.751,-38.21029,0,0,100),
(19196,11,-2069.733,5260.295,-37.96473,0,0,100),
(19196,12,-2064.942,5256.248,-38.46506,1200000,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1919601 AND 1919603;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments) VALUES
(1919601,0,0,17,0,0,0,0,0,0,0,0,'Cro Threadstrong - Random text'),
(1919602,5,1,6,0,0,0,0,0,0,0,0,'Cro Threadstrong - OneShotQuestion'),
(1919603,5,0,0,0,2000001313,2000001314,2000001315,2000001316,0,0,0,'Cro Threadstrong - Random text'),
(1919603,13,32,1,0,0,0,0,0,19223,50,0,'Granny Smith - Pause Waypoints'),
(1919603,12,28,0,0,0,0,0,0,19223,50,0,'Granny Smith - UNIT_STAND_STATE_STAND'),
(1919603,12,1,0,0,0,0,0,0,19223,50,0,'Granny Smith - ONESHOT_NONE'),
(1919603,13,36,0,0,0,0,0,0,19223,50,3,'Granny Smith - Face Cro Threadstrong'),
(1919603,14,0,0,0,2000001317,2000001318,2000001319,2000001320,19223,50,3,'Granny Smith - Random text'),
(1919603,22,1,6,0,0,0,0,0,19223,50,0,'Granny Smith - OneShotQuestion'),
(1919603,26,32,0,0,0,0,0,0,19223,50,0,'Granny Smith - Resume Waypoints');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001308 AND 2000001320;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001308, 'My army has not arrived.  I knew I could not trust the people I hired.  We will recruit new people.  We will sell these apples and our new army will crush them!',0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001309, 'I do not understand this fruit vendor or their ogre.  It seemed as though war was upon us... Yet nothing has happened.',0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001310, 'We should sell these apples, but we will not allow peole to eat them.  Oh no!  We will sell apples to our friends, and they shall bring the fight to the fruit vendor for me!',0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001311, 'The fruit vendor has refused to accept my challenge and remove his cart.  Their ogre protector just sits and does nothing... What could his plan be?',0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001312, 'It\'s time to deal with this fruit situtation on our terms.  We''ve been far too accomidating to the fruit vendor.  Now we will simply sell the fruit.  But the fruit will not be for people to eat.  I forbid it!  No one will eat our fruit!',0, 0, 0, 0, 'Cro Threadstrong (Entry: 19196)'),
(2000001313, 'FRUIT VENDOR!!! Your cart is still in our way!  Your time is up!  You have new competition in selling fruit!',0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),
(2000001314, 'HA!  I CRUSHED AN APPLE, FRUIT VENDOR! NOW,  YOUR APPLES WILL BE SOLD TO OTHERS FOR THEM TO CRUSH AS WELL!',0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),
(2000001315, 'IF WAR IS WHAT YOU WANT, WAR IS WHAT YOU SHALL GET, FRUIT VENDOR!  WE WILL SEE WHO SELLS MORE OF YOUR APPLES!',0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),
(2000001316, 'YOU HAVE RUN OUT OF TIME FRUIT VENDOR!!  NOW I WILL SELL YOUR ROTTEN FRUIT!',0, 1, 0, 53, 'Cro Threadstrong (Entry: 19196)'),
(2000001317, 'Huh? Did someone say something?',0, 0, 0, 0, 'Granny Smith (Entry: 19223)'),
(2000001318, 'What is that poor orc yelling about? Someone should see what is going on.',0, 0, 0, 0, 'Granny Smith (Entry: 19223)'),
(2000001319, 'Fruit?  Did somebody say they wanted fruit?',0, 0, 0, 0, 'Granny Smith (Entry: 19223)'),
(2000001320, 'Is someone calling for me?',0, 0, 0, 0, 'Granny Smith (Entry: 19223)');
DELETE FROM dbscript_random_templates WHERE id = 17;
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
(17,0,2000001308,0),
(17,0,2000001309,0),
(17,0,2000001310,0),
(17,0,2000001311,0),
(17,0,2000001312,0);

-- Jack Trapper
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68634;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19185;
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 19185; -- Remove static kneel
DELETE FROM creature_movement_template WHERE entry=19185;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19185,1,-2068.329,5310.783,-37.32356,180000,0,100),
(19185,2,-2065.293,5308.535,-37.32356,0,0,100),
(19185,3,-2064.65,5310.289,-37.32356,0,0,100),
(19185,4,-2065.71,5311.151,-37.32356,48000,1918501,100),
(19185,5,-2062.945,5314.666,-37.32356,33000,1918502,100),
(19185,6,-2067.947,5314.864,-37.32356,0,0,100),
(19185,7,-2067.375,5316.701,-37.32356,137000,1918503,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(1918501,1918502,1918503);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1918501,0,28,8,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Kneel',0,0,0,0),
(1918501,46,28,0,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Stand',0,0,0,0),
(1918502,0,1,69,0,0,0,0,0,0,0,0,0,'Jack Trapper - STATE_USESTANDING',0,0,0,0),
(1918502,31,1,0,0,0,0,0,0,0,0,0,0,'Jack Trapper - ONESHOT_NONE',0,0,0,0),
(1918503,0,28,8,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Kneel',0,0,0,0),
(1918503,135,28,0,0,0,0,0,0,0,0,0,0,'Jack Trapper - Set Stand State Stand',0,0,0,0);

-- Kevin Browning
UPDATE creature_template SET MovementType = 2 WHERE entry = 23699;
DELETE FROM creature_movement WHERE id = 17330; -- Remove old guid path
DELETE FROM creature_movement_template WHERE entry = 23699;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(23699,1,-1853.905,5160.022,-47.28181,0,0,100),
(23699,2,-1869.473,5175.682,-50.12189,0,0,100),
(23699,3,-1877.442,5189.945,-50.70343,0,0,100),
(23699,4,-1893.822,5204.668,-49.90279,0,0,100),
(23699,5,-1909.28,5214.119,-48.43397,0,0,100),
(23699,6,-1931.977,5217.543,-47.14808,0,0,100),
(23699,7,-1948.63,5220.26,-47.90169,0,0,100),
(23699,8,-1962.039,5226.954,-46.74642,0,0,100),
(23699,9,-1975.379,5236.538,-45.87452,0,0,100),
(23699,10,-1987.611,5241.075,-46.01661,0,0,100),
(23699,11,-2002.949,5245.802,-45.68372,0,0,100),
(23699,12,-2012.351,5248.747,-45.68372,0,0,100),
(23699,13,-2022.999,5257.354,-44.48621,0,0,100),
(23699,14,-2012.351,5248.747,-45.68372,0,0,100),
(23699,15,-2002.949,5245.802,-45.68372,0,0,100),
(23699,16,-1987.611,5241.075,-46.01661,0,0,100),
(23699,17,-1975.379,5236.538,-45.87452,0,0,100),
(23699,18,-1962.039,5226.954,-46.74642,0,0,100),
(23699,19,-1948.63,5220.26,-47.90169,0,0,100),
(23699,20,-1931.977,5217.543,-47.14808,0,0,100),
(23699,21,-1909.28,5214.119,-48.43397,0,0,100),
(23699,22,-1893.822,5204.668,-49.90279,0,0,100),
(23699,23,-1877.442,5189.945,-50.70343,0,0,100),
(23699,24,-1869.473,5175.682,-50.12189,0,0,100);

-- Kradu Grimblade
UPDATE creature_template_addon SET emote = 0 WHERE  entry = 20124;
UPDATE creature SET MovementType = 2 WHERE guid = 71625;
UPDATE creature_template SET MovementType = 2 WHERE entry = 20124;
DELETE FROM creature_movement_template WHERE entry = 20124;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(20124,1,-1847.755,5230.35,-38.04539,25000,2012402,4.77226),
(20124,2,-1850.955,5228.034,-38.04538,110000,2012401,4.652941);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(2012401,2012402);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(2012401,0,42,0,0,0,10612,0,0,0,0,0,0,'Kradu Grimblade - Set Equipment Slots',0,0,0,0),
(2012402,1,42,0,0,0,1903,0,0,0,0,0,0,'Kradu Grimblade - Set Equipment Slots',0,0,0,0),
(2012402,1,1,173,0,0,0,0,0,0,0,0,0,'Kradu Grimblade - STATE_WORK',0,0,0,0),
(2012402,20,1,0,0,0,0,0,0,0,0,0,0,'Kradu Grimblade - ONESHOT_NONE',0,0,0,0);

-- Skettis Outcast
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (68379,68381,68376);
DELETE FROM creature_movement WHERE id IN (68379,68381,68376);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- 68379
(68379,1,-1656.905,5432.292,-40.40602,0,0,100),
(68379,2,-1664.443,5426.011,-38.85598,0,0,100),
(68379,3,-1675.771,5425.799,-38.80978,0,0,100),
(68379,4,-1701.028,5426.631,-28.27145,0,0,100),
(68379,5,-1725.752,5426.502,-14.66701,0,0,100),
(68379,6,-1731.614,5425.73,-12.42815,0,0,100),
(68379,7,-1733.742,5427.279,-12.42815,0,0,100),
(68379,8,-1734.878,5430.664,-12.42815,0,0,100),
(68379,9,-1733.849,5434.689,-12.42815,0,0,100),
(68379,10,-1731.111,5437.685,-12.42815,0,0,100),
(68379,11,-1722.779,5438.723,-12.42815,0,0,100),
(68379,12,-1714.225,5438.999,-12.42815,0,0,100),
(68379,13,-1709.007,5439.082,-12.42815,0,0,100),
(68379,14,-1714.225,5438.999,-12.42815,0,0,100),
(68379,15,-1722.779,5438.723,-12.42815,0,0,100),
(68379,16,-1731.111,5437.685,-12.42815,0,0,100),
(68379,17,-1733.849,5434.689,-12.42815,0,0,100),
(68379,18,-1734.878,5430.664,-12.42815,0,0,100),
(68379,19,-1733.742,5427.279,-12.42815,0,0,100),
(68379,20,-1725.752,5426.502,-14.66701,0,0,100),
(68379,21,-1701.028,5426.631,-28.27145,0,0,100),
(68379,22,-1675.771,5425.799,-38.80978,0,0,100),
(68379,23,-1664.443,5426.011,-38.85598,0,0,100),
(68379,24,-1656.905,5432.292,-40.40602,0,0,100),
(68379,25,-1643.762,5431.604,-43.79778,0,0,100),
(68379,26,-1639.721,5444.155,-43.00389,0,0,100),
(68379,27,-1640.843,5465,-43.29979,0,0,100),
(68379,28,-1648.757,5479.246,-43.68423,0,0,100),
(68379,29,-1653.152,5490.926,-43.68423,0,0,100),
(68379,30,-1644.962,5506.613,-42.002,0,0,100),
(68379,31,-1640.026,5512.831,-40.87249,0,0,100),
(68379,32,-1637.312,5517.893,-39.9804,0,0,100),
(68379,33,-1640.026,5512.831,-40.87249,0,0,100),
(68379,34,-1644.962,5506.613,-42.002,0,0,100),
(68379,35,-1653.152,5490.926,-43.68423,0,0,100),
(68379,36,-1648.757,5479.246,-43.68423,0,0,100),
(68379,37,-1640.843,5465,-43.29979,0,0,100),
(68379,38,-1639.721,5444.155,-43.00389,0,0,100),
(68379,39,-1643.762,5431.604,-43.79778,0,0,100),
-- 68381
(68381,1,-1633.005,5443.821,-42.52795,0,0,100),
(68381,2,-1632.35,5429.139,-42.82188,0,0,100),
(68381,3,-1634.551,5412.704,-43.81952,0,0,100),
(68381,4,-1637.608,5398.792,-44.82996,0,0,100),
(68381,5,-1647.885,5389.336,-45.62952,0,0,100),
(68381,6,-1655.407,5388.073,-45.75452,0,0,100),
(68381,7,-1659.258,5390.352,-45.45618,0,0,100),
(68381,8,-1647.885,5389.336,-45.62952,0,0,100),
(68381,9,-1638.244,5474.092,-42.65945,0,0,100),
(68381,10,-1635.828,5458.664,-43.13878,0,0,100),
-- 68376
(68376,1,-1615.726,5411.476,-34.22376,0,0,100),
(68376,2,-1613.285,5382.401,-39.45854,0,0,100),
(68376,3,-1615.217,5383.675,-39.56184,0,0,100),
(68376,4,-1614.893,5388.497,-38.61961,0,0,100),
(68376,5,-1615.109,5397.366,-36.73718,0,0,100),
(68376,6,-1615.726,5411.476,-34.22376,0,0,100),
(68376,7,-1613.285,5382.401,-39.45854,0,0,100),
(68376,8,-1614.893,5388.497,-38.61961,0,0,100),
(68376,9,-1615.109,5397.366,-36.73718,0,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1907501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1907501,0,35,5,0,0,0,0,0,0,0,0,0,'Skettis Outcast - Send AI Event Type 5 (A) to Self',0,0,0,0),
(1907501,0,20,0,0,0,0,0,0,0,0,0,0,'Skettis Outcast - Set Idle Movement',0,0,0,0);
UPDATE creature SET MovementType = 2 WHERE guid IN (68384,68383,68378,68380);
DELETE FROM creature_movement WHERE id IN (68384,68383,68378,68380);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- 68384
(68384,1,-1675.29,5495.21,-40.3227,1000,1907501,4.13643),
-- 68383
(68383,1,-1678.37,5492.67,-40.3227,1000,1907501,0.890118),
-- 68378
(68378,1,-1705.6,5435.7,-12.3448,1000,1907501,2.51327),
-- 68380
(68380,1,-1707.06,5442.57,-12.3448,1000,1907501,4.76475);

-- High Elf Refugee
-- Remove addons. Stand states should be randomized
DELETE FROM creature_addon WHERE guid IN (68391,68392,12272);
DELETE FROM creature_template_addon WHERE entry = 19076;
-- Missing spawn
DELETE FROM creature_addon WHERE guid = 68494;
DELETE FROM creature_movement WHERE id = 68494;
DELETE FROM game_event_creature WHERE guid = 68494;
DELETE FROM game_event_creature_data WHERE guid = 68494;
DELETE FROM creature_battleground WHERE guid = 68494;
DELETE FROM creature_linking WHERE guid = 68494
 OR master_guid = 68494;
DELETE FROM creature WHERE guid = 68494;
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(68494,19076,530,1,0,0,-1870.212,5477.063,-12.34477,0.9773844,300,300,0,0,3662,0,0,0);
-- Relocate existing spawns to the same guid range
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300, MovementType = 2, spawndist = 0 WHERE guid = 12272; -- Normalize spawntime
UPDATE creature SET position_x = -1867.284, position_y = 5477.182, position_z = -12.34477, orientation = 2.321288 WHERE guid = 68392; -- Duplicate spawn, reuse it where another is missing
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68391;
-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN(68494,68392);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(68494, 25704, 0, 'High Elf Refugee at Spymistress Mehlisah Highcrown'),
(68392, 25705, 0, 'High Elf Refugee at Spymistress Mehlisah Highcrown');
DELETE FROM creature_movement WHERE id = 12272;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(12272,1,-1703.501,5179.728,-40.20918,0,12,0),
(12272,2,-1712.316,5184.393,-40.20918,0,0,0),
(12272,3,-1725.059,5185.586,-40.20918,0,0,0),
(12272,4,-1740.019,5202.2,-41.01801,346000,0,100),
(12272,5,-1746.596,5186.737,-40.20918,0,0,0),
(12272,6,-1722.154,5178.957,-40.20918,0,0,0),
(12272,7,-1715.002,5176.221,-40.20918,0,0,0),
(12272,8,-1718.89,5172.33,-40.20918,0,0,0),
(12272,9,-1721.574,5172.274,-40.20918,371000,0,100),
(12272,10,-1712.871,5172.264,-40.20918,0,0,0),
(12272,11,-1709.486,5167.347,-40.20918,0,0,0),
(12272,12,-1709.622,5170.947,-40.20918,5679000,0,100);
DELETE FROM creature_movement WHERE id = 68391;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68391,1,-1724.43,5172.64,-40.1258,500,1907601,0.506145);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1907601);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1907601,0,35,6,0,0,0,0,0,0,0,0,0,'High Elf Refugee - Send AI Event 6 to Self',0,0,0,0),
(1907601,0,20,0,0,0,0,0,0,0,0,0,0,'High Elf Refugee - Set Idle Movement',0,0,0,0);


-- Misc
DELETE FROM pool_template WHERE entry IN (25704,25705);
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25704, 1, 'Refugee at Spymistress Mehlisah Highcrown'),
(25705, 1, 'Refugee at Spymistress Mehlisah Highcrown');

-- Shattrath Soup Tent
UPDATE gameobject SET spawntimesecsmin = -3852,spawntimesecsmax = -3852 WHERE guid = 24224;
-- Fantei (Stand/Sit is randomized in EventAI)
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 19678;
-- Jim Saltit
UPDATE creature SET MovementType = 1, spawndist = 1 WHERE guid = 68730; 
-- Add missing Cooking Pot
DELETE FROM gameobject WHERE guid = 94557;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, state) VALUES 
(94557, 187370, 530, -1614.855, 5328.135, -40.29599, 5.174902, -0.5262136, 0.8503524, 180, 180, 1);
-- Set correct positions
UPDATE creature SET position_x = -1616.258, position_y = 5326.976, position_z = -40.12583, orientation = 1.308997 WHERE guid = 84720; -- Grisy Spicecrackle
UPDATE creature SET position_x = -1609.388, position_y = 5328.675, position_z = -39.38972, orientation = 2.181662 WHERE guid = 84722; -- The Rokk
UPDATE creature SET position_x = -1609.702, position_y = 5333.756, position_z = -40.12583, orientation = 0.296706 WHERE guid = 84721; -- Gargoth
UPDATE creature SET position_x = -1793.096, position_y = 5153.81, position_z = -40.12583, orientation = 2.879793 WHERE guid = 12270; -- Wind Trader Zhareem
UPDATE creature SET position_x = -1798.239, position_y = 5149.043, position_z = -40.12583, orientation = 1.745329 WHERE guid = 12271; -- Nether-Stalker Mahduun
UPDATE creature SET position_x = -1624.759, position_y = 5272.502, position_z = -40.83841, orientation = 3.839724 WHERE guid = 12177; -- Voranaku
UPDATE creature SET position_x = -1640.653, position_y = 5274.589, position_z = -41.08338, orientation = 5.864306 WHERE guid = 8313; -- Zoya
UPDATE creature SET position_x = -1639.091, position_y = 5262.758, position_z = -41.01227, orientation = 0.1396263 WHERE guid = 2126; -- Suraku
UPDATE creature SET position_x = -1638.031, position_y = 5254.087, position_z = -40.85145, orientation = 0.6457718 WHERE guid = 2115; -- Onyxien
UPDATE creature SET position_x = -1631.826, position_y = 5246.303, position_z = -40.77067, orientation = 1.169371 WHERE guid = 12235; -- Malfas
UPDATE creature SET position_x = -1622.21, position_y = 5248.128, position_z = -40.72327, orientation = 2.251475 WHERE guid = 12234; -- Jorus
UPDATE creature SET position_x = -1617.014, position_y = 5264.892, position_z = -40.69825, orientation = 3.211406 WHERE guid = 12236; -- Barthamus
-- Delete Ambient Minions of Terokk. They are tempspawns after completing a quest
DELETE FROM creature WHERE id  = 22380;

-- Peasant Refugees - Duplicates Removed
DELETE FROM creature_addon WHERE guid IN (68577,96670);
DELETE FROM creature_movement WHERE id IN (68577,96670);
DELETE FROM game_event_creature WHERE guid IN (68577,96670);
DELETE FROM game_event_creature_data WHERE guid IN (68577,96670);
DELETE FROM creature_battleground WHERE guid IN (68577,96670);
DELETE FROM creature_linking WHERE guid IN (68577,96670)
 OR master_guid IN (68577,96670);
DELETE FROM creature WHERE guid IN (68577,96670);
-- All Peasant Refugees should not have Bloody Cleavers. 
-- The only one who should have it is the one at the soup kitchen and it should be unequipped once the NPC moves to despawn point
UPDATE creature_template SET EquipmentTemplateId = 0,MovementType = 2 WHERE entry = 19170; -- Old: 55271
-- Delete unneeded addons
DELETE FROM creature_template_addon WHERE entry = 19170;
DELETE FROM creature_addon WHERE guid IN (68581,68578,68579,68580,68584,68585);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(68578,0,3,1,16,0,0,NULL);
UPDATE creature SET position_x = -1954.773, position_y = 5170.282, position_z = -40.20918, orientation = 1.099557 WHERE guid = 68578;
UPDATE creature SET position_x = -1870.212, position_y = 5477.063, position_z = -12.34477, orientation = 0.9773844 WHERE guid = 68579;
UPDATE creature SET position_x = -1867.284, position_y = 5477.182, position_z = -12.34477, orientation = 2.321288 WHERE guid = 68580;
-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN (68579,68580);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(68579, 25704, 0, 'Peasant Refugee at Spymistress Mehlisah Highcrown'),
(68580, 25705, 0, 'Peasant Refugee at Spymistress Mehlisah Highcrown');
-- Pathing for  Entry: 19170 'UDB FORMAT' 
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 68584;
DELETE FROM creature_movement WHERE id = 68584;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68584,1,-2072.991,5283.551,-37.32356,0,0,100),
(68584,2,-2080.027,5298.799,-37.32355,0,0,100),
(68584,3,-2077.768,5323.051,-37.32356,0,0,100),
(68584,4,-2087.385,5326.358,-34.98595,0,0,100),
(68584,5,-2077.768,5323.051,-37.32356,0,0,100),
(68584,6,-2080.027,5298.799,-37.32355,0,0,100),
(68584,7,-2072.991,5283.551,-37.32356,0,0,100),
(68584,8,-2058.317,5268.787,-38.46506,0,0,100),
(68584,9,-2046.708,5257.053,-39.7482,0,0,100),
(68584,10,-2035.579,5240.765,-42.10738,0,0,100),
(68584,11,-2028.907,5218.79,-39.25506,0,0,100),
(68584,12,-2022.138,5207.945,-35.69619,0,0,100),
(68584,13,-2028.725,5218.19,-38.78204,0,0,100),
(68584,14,-2035.579,5240.765,-42.10738,0,0,100),
(68584,15,-2046.708,5257.053,-39.7482,0,0,100),
(68584,16,-2058.317,5268.787,-38.46506,0,0,100);
-- Pathing for  Entry: 19170 'UDB FORMAT' 
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 68585;
DELETE FROM creature_movement WHERE id = 68585;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68585,1,-2050.592,5322.334,-40.88732,0,0,100),
(68585,2,-2060.579,5341.971,-41.31344,0,0,100),
(68585,3,-2062.226,5342.294,-40.85262,34000,0,100),
(68585,4,-2048.914,5316.468,-40.07982,0,0,100),
(68585,5,-2045.166,5305.524,-39.47564,0,0,100),
(68585,6,-2037.887,5286.919,-38.46542,0,0,100),
(68585,7,-2039.516,5279.421,-38.94726,33000,0,100),
(68585,8,-2039.528,5303.738,-39.81683,0,0,100),
(68585,9,-2048.365,5316.685,-40.18297,0,0,100),
(68585,10,-2049.547,5316.248,-39.96569,28000,0,100),
(68585,11,-2037.74,5294.831,-38.71366,0,0,100),
(68585,12,-2036.81,5285.057,-38.73196,0,0,100),
(68585,13,-2039.781,5279.237,-38.93132,33000,0,100),
(68585,14,-2038.868,5293.317,-38.61542,0,0,100),
(68585,15,-2045.668,5307.952,-39.6055,0,0,100);
-- Should only be at the soup kitchen while the event is running. On normal spawnpoint he should move randomly
UPDATE creature SET position_x = -2074.216, position_y = 5316.652, position_z = -37.32356, MovementType = 2, spawndist = 0 WHERE guid = 68581;
DELETE FROM creature_movement WHERE id = 68581;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68581,1,-2080.913,5290.43,-37.32355,0,9,100), -- active? 
(68581,2,-2060.495,5273.947,-38.46501,0,0,100),
(68581,3,-2041.92,5263.64,-39.82203,0,0,100),
(68581,4,-2024.709,5250.461,-43.74634,0,0,100),
(68581,5,-1989.924,5241.191,-45.88612,0,0,100),
(68581,6,-1956.249,5238.913,-43.63295,0,0,100),
(68581,7,-1938.983,5240.378,-42.72091,0,0,100),
(68581,8,-1933.321,5238.574,-41.81791,0,0,100),
(68581,9,-1929.502,5237.604,-41.81791,113000,1917001,100),
(68581,10,-1934.128,5238.561,-41.81791,0,0,100),
(68581,11,-1932.826,5239.141,-41.81791,105600,1917002,100),
(68581,12,-1933.799,5243.494,-41.81791,0,0,100),
(68581,13,-1931.935,5241.604,-41.81791,85000,1917003,100),
(68581,14,-1936.411,5240.464,-41.81791,0,0,100),
(68581,15,-1932.958,5238.352,-41.81791,0,0,100),
(68581,16,-1929.68,5237.738,-41.81791,81500,1917004,100),
(68581,17,-1929.68,5237.738,-41.81791,3378000,1917005,4.34587), -- 3378000
(68581,18,-1936.801,5239.364,-41.81791,0,0,100),
(68581,19,-1947.085,5241.049,-43.01661,0,0,100),
(68581,20,-1982.853,5241.942,-46.05104,0,0,100),
(68581,21,-2008.307,5246.722,-45.68372,0,0,100),
(68581,22,-2042.242,5261.862,-39.91481,0,0,100),
(68581,23,-2059.462,5270.288,-38.465,0,0,100),
(68581,24,-2075.885,5287.067,-37.32355,0,0,100),
(68581,25,-2078.647,5300.69,-37.32355,0,0,100),
(68581,26,-2076.997,5309.269,-37.32355,0,0,100),
(68581,27,-2071.997,5321.677,-37.32356,0,0,100),
(68581,28,-2072.468,5320.509,-37.32356,0,10,100),
(68581,29,-2075.165,5315.614,-37.32356,1000,1917007,100);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1917001 AND 1917007;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1917001,2,1,69,0,0,0,0,0,0,0,0,0,'Peasant Refugee - STATE_USESTANDING',0,0,0,0),
(1917001,97,9,0,3852,0,0,0,0,0,183355,10,0,'Peasant Refugee - Respawn Shattrath Soup Tent',0,0,0,0),
(1917001,101,10,19170,0,1,0,0,0,0,0,0,8,'Peasant Refugee - Spawn Peasant Refugee',-2024.149,5334.983,-38.64442,2.46452),
(1917001,113,1,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - ONESHOT_NONE',0,0,0,0),
(1917002,1,28,8,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(1917002,103,28,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_STAND',0,0,0,0),
(1917003,3,28,8,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(1917003,82,28,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_STAND',0,0,0,0),
(1917004,3,28,8,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(1917004,82,28,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_STAND',0,0,0,0),
(1917005,0,1,69,0,0,0,0,0,0,0,0,0,'Peasant Refugee - STATE_USESTANDING',0,0,0,0),
(1917005,0,10,19120,0,1,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Broken Refugee',-1917.847,5223.277,-45.8255,1.797689),
(1917005,0,10,19170,0,2,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1932.707,5230.585,-43.11866,0.715585),
(1917005,0,10,19170,0,3,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1922.545,5225.516,-44.2592,1.658063),
(1917005,0,10,19170,0,4,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1937.682,5236.961,-42.48709,6.038839),
(1917005,0,21,1,0,0,0,0,0,0,19150,68482,16,'Orc Refugee - Set Active Object',0,0,0,0),
(1917005,1,32,0,0,0,0,0,0,0,19150,68482,16,'Orc Refugee - Resume Waypoints',0,0,0,0),
(1917005,0,21,1,0,0,0,0,0,0,19155,68524,16,'Sporeling Refugee - Set Active Object',0,0,0,0),
(1917005,1,20,2,1,0,0,0,0,0,19155,68524,16,'Sporeling Refugee - Set Waypoint Movement',0,0,0,0),
(1917005,11,10,19170,0,5,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1921.905,5222.219,-44.85762,1.832596),
(1917005,11,10,19170,0,6,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1931.493,5223.518,-45.4137,1.064651),
(1917005,11,10,19170,0,7,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1923.905,5220.219,-46.12845,1.64061),
(1917005,11,20,2,1,0,0,0,0,0,19162,68560,16,'Lost one Refugee - Set Waypoint Movement',0,0,0,0),
(1917005,11,21,1,0,0,0,0,0,0,19144,68467,16,'Maghar Refugee - Set Active Object',0,0,0,0),
(1917005,11,32,0,0,0,0,0,0,0,19144,68467,16,'Maghar Refugee - Resume Waypoints',0,0,0,0),
(1917005,135,32,0,0,0,0,0,0,0,19120,68400,16,'Broken Refugee - Resume Waypoints',0,0,0,0),
(1917005,157,32,0,0,0,0,0,0,0,19162,68558,16,'Lost one Refugee - Resume Waypoints',0,0,0,0),
(1917005,181,32,0,0,0,0,0,0,0,19120,68399,16,'Broken Refugee - Resume Waypoints',0,0,0,0),
(1917005,248,32,0,0,0,0,0,0,0,19120,68398,16,'Broken Refugee - Resume Waypoints',0,0,0,0),
(1917005,3349,1,6,0,0,0,0,0,0,0,0,0,'Peasant Refugee - OneShotQuestion',0,0,0,0), -- 3349
(1917005,3349,32,0,0,0,0,0,0,0,19155,68524,16,'Sporeling Refugee - Resume Waypoints',0,0,0,0),
(1917005,3349,32,0,0,0,0,0,0,0,19150,68482,16,'Orc Refugee - Resume Waypoints',0,0,0,0),
(1917005,3349,32,0,0,0,0,0,0,0,19120,68400,16,'Broken Refugee - Resume Waypoints',0,0,0,0), -- Guessed timer, creature is broken on live retail
(1917005,3355,32,0,0,0,0,0,0,0,19120,68399,16,'Broken Refugee - Resume Waypoints',0,0,0,0), -- Guessed timer, creature is broken on live retail
(1917005,3366,32,0,0,0,0,0,0,0,19144,68467,16,'Maghar Refugee - Resume Waypoints',0,0,0,0),
(1917005,3366,32,0,0,0,0,0,0,0,19120,68398,16,'Broken Refugee - Resume Waypoints',0,0,0,0), -- Guessed timer, creature is broken on live retail
(1917005,3366,1,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - ONESHOT_NONE',0,0,0,0), -- 3366
(1917005,3375,40,0,0,0,0,0,0,0,183355,10,1,'Peasant Refugee - Despawn Shattrath Soup Tent',0,0,0,0), -- 3375
(1917005,3382,32,0,0,0,0,0,0,0,19162,68560,16,'Lost one Refugee - Resume Waypoints',0,0,0,0),
(1917005,3426,32,0,0,0,0,0,0,0,19162,68558,16,'Lost one Refugee - Resume Waypoints',0,0,0,0),
(1917006,0,42,0,0,0,2827,0,0,0,0,0,0,'Peasant Refugee - Update Equipment',0,0,0,0),
(1917006,0,1,69,0,0,0,0,0,0,0,0,0,'Peasant Refugee - STATE_USESTANDING',0,0,0,0),
(1917006,3565,42,1,0,0,0,0,0,0,0,0,0,'Peasant Refugee - Set Default Equipment',0,0,0,0),
(1917007,0,20,1,5,0,0,0,0,0,0,0,0,'Peasant Refugee - Random Movement',0,0,0,0),
(1917007,18000,20,2,0,0,0,0,0,0,0,0,0,'Peasant Refugee - Set Waypoint Movement',0,0,0,0); -- 5 hour rest
-- Peasant with bloody cleaver
DELETE FROM creature_movement_template WHERE entry = 19170 AND pathId = 1;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19170,1,1,-2040.664,5312.794,-39.99809,0,0,100),
(19170,2,1,-2033.636,5294.306,-38.52164,0,0,100),
(19170,3,1,-2014.738,5260.217,-44.18763,0,0,100),
(19170,4,1,-1991.026,5242.66,-45.94545,0,0,100),
(19170,5,1,-1959.991,5237.379,-44.75892,0,0,100),
(19170,6,1,-1935.066,5243.404,-41.81791,0,0,100),
(19170,7,1,-1931.885,5246.791,-41.81792,0,0,100),
(19170,8,1,-1928.475,5248.881,-41.81789,0,0,100),
(19170,9,1,-1921.047,5240.427,-41.81789,0,0,100),
(19170,10,1,-1919.995,5235.011,-41.81792,0,0,100),
(19170,11,1,-1921.561,5235.31,-41.81792,3565000,1917006,2.740167),
(19170,12,1,-1923.438,5227.604,-43.8158,0,0,100),
(19170,13,1,-1946.327,5232.099,-45.00704,0,0,100),
(19170,14,1,-1991.425,5248.515,-44.99781,0,0,100),
(19170,15,1,-2014.07,5261.001,-43.92688,0,0,100),
(19170,16,1,-2031.599,5288.22,-38.95396,0,0,100),
(19170,17,1,-2040.418,5317.36,-40.12309,0,0,100),
(19170,18,1,-2042.96,5336.785,-40.65192,0,0,100),
(19170,19,1,-2032.956,5342.394,-38.71989,0,0,100),
(19170,20,1,-2024.317,5337.025,-38.71989,1000,1,100);
-- First pack of 3 peasant refugees
DELETE FROM creature_movement_template WHERE entry = 19170 AND pathId = 2;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19170,1,2,-1932.707,5230.585,-43.11866,3349000,0,0.715585), -- 3349000
(19170,2,2,-1994.696,5240.723,-46.06739,0,0,100),
(19170,3,2,-2032.456,5238.727,-42.60169,0,0,100),
(19170,4,2,-2047.974,5234.741,-38.85947,0,0,100),
(19170,5,2,-2070.629,5215.527,-36.23759,0,0,100),
(19170,6,2,-2085.554,5197.974,-32.45612,0,0,100),
(19170,7,2,-2097.983,5185.687,-29.57196,0,1,100);
DELETE FROM creature_movement_template WHERE entry = 19170 AND pathId = 3;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19170,1,3,-1922.545,5225.516,-44.2592,3349000,0,1.658063),
(19170,2,3,-1994.696,5240.723,-46.06739,0,0,100),
(19170,3,3,-2032.456,5238.727,-42.60169,0,0,100),
(19170,4,3,-2047.974,5234.741,-38.85947,0,0,100),
(19170,5,3,-2070.629,5215.527,-36.23759,0,0,100),
(19170,6,3,-2085.554,5197.974,-32.45612,0,0,100),
(19170,7,3,-2097.983,5185.687,-29.57196,0,1,100);
DELETE FROM creature_movement_template WHERE entry = 19170 AND pathId = 4;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19170,1,4,-1937.682,5236.961,-42.48709,3349000,0,6.038839),
(19170,2,4,-1994.696,5240.723,-46.06739,0,0,100),
(19170,3,4,-2032.456,5238.727,-42.60169,0,0,100),
(19170,4,4,-2047.974,5234.741,-38.85947,0,0,100),
(19170,5,4,-2070.629,5215.527,-36.23759,0,0,100),
(19170,6,4,-2085.554,5197.974,-32.45612,0,0,100),
(19170,7,4,-2097.983,5185.687,-29.57196,0,1,100);
-- Second pack of 3 peasant refugees
DELETE FROM creature_movement_template WHERE entry = 19170 AND pathId = 5;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19170,1,5,-1921.905,5222.219,-44.85762,3378000,0,1.832596), -- 3378000
(19170,2,5,-1882.44,5195.85,-50.43365,0,0,100),
(19170,3,5,-1864.935,5171.063,-49.68153,0,0,100),
(19170,4,5,-1856.105,5148.045,-44.25081,0,0,100),
(19170,5,5,-1853.181,5123.831,-38.85968,0,0,100),
(19170,6,5,-1853.672,5099.932,-37.14706,0,0,100),
(19170,7,5,-1854.229,5080.217,-33.89612,0,0,100),
(19170,8,5,-1857.239,5051.251,-29.09824,0,1,100);
DELETE FROM creature_movement_template WHERE entry = 19170 AND pathId = 6;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19170,1,6,-1931.493,5223.518,-45.4137,3378000,0,1.064651),
(19170,2,6,-1882.44,5195.85,-50.43365,0,0,100),
(19170,3,6,-1864.935,5171.063,-49.68153,0,0,100),
(19170,4,6,-1856.105,5148.045,-44.25081,0,0,100),
(19170,5,6,-1853.181,5123.831,-38.85968,0,0,100),
(19170,6,6,-1853.672,5099.932,-37.14706,0,0,100),
(19170,7,6,-1854.229,5080.217,-33.89612,0,0,100),
(19170,8,6,-1857.239,5051.251,-29.09824,0,1,100);
DELETE FROM creature_movement_template WHERE entry = 19170 AND pathId = 7;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19170,1,7,-1923.905,5220.219,-46.12845,3378000,0,1.64061),
(19170,2,7,-1882.44,5195.85,-50.43365,0,0,100),
(19170,3,7,-1864.935,5171.063,-49.68153,0,0,100),
(19170,4,7,-1856.105,5148.045,-44.25081,0,0,100),
(19170,5,7,-1853.181,5123.831,-38.85968,0,0,100),
(19170,6,7,-1853.672,5099.932,-37.14706,0,0,100),
(19170,7,7,-1854.229,5080.217,-33.89612,0,0,100),
(19170,8,7,-1857.239,5051.251,-29.09824,0,1,100);

-- Broken Refugee
UPDATE creature_template SET MovementType = 2 WHERE entry = 19120;
-- Missing spawn
DELETE FROM creature_addon WHERE guid = 68923;
DELETE FROM creature_movement WHERE id = 68923;
DELETE FROM game_event_creature WHERE guid = 68923;
DELETE FROM game_event_creature_data WHERE guid = 68923;
DELETE FROM creature_battleground WHERE guid = 68923;
DELETE FROM creature_linking WHERE guid = 68923
 OR master_guid = 68923;
DELETE FROM creature WHERE guid = 68923;
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(68923,19120,530,1,0,0,-1870.212,5477.063,-12.34477,0.9773844,300,300,0,0,6900,0,0,0);
-- Relocate existing spawns to the same guid range
UPDATE creature SET position_x = -1867.284, position_y = 5477.182, position_z = -12.34477, orientation = 2.321288, spawndist = 0, MovementType = 0 WHERE guid = 68397;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68396;
UPDATE creature SET position_x = -1955.547, position_y = 5151.664, position_z = -40.12583, orientation = 6.108652, MovementType = 2, spawndist = 0 WHERE guid = 68398;
UPDATE creature SET position_x = -1934.094, position_y = 5168.918, position_z = -40.12583, orientation = 1.902409, MovementType = 2, spawndist = 0 WHERE guid = 68399;
UPDATE creature SET position_x = -1950.886, position_y = 5147.88, position_z = -40.12583, orientation = 1.989675, MovementType = 2, spawndist = 0 WHERE guid = 68400;
UPDATE creature SET position_x = -1813.063, position_y = 5134.866, position_z = -40.12583, orientation = 2.094395 WHERE guid = 68402;
DELETE FROM creature_addon WHERE guid = 68402;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(68402, 0, 3, 1, 16, 0, 0, NULL);
-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN (68923,68397);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(68923, 25704, 0, 'Broken Refugee at Spymistress Mehlisah Highcrown'),
(68397, 25705, 0, 'Broken Refugee at Spymistress Mehlisah Highcrown');
-- Pathing for  Entry: 19120 'UDB FORMAT' 
DELETE FROM creature_movement WHERE id = 68396;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68396,1,-1693.74,5199.948,-47.17235,0,0,100),
(68396,2,-1697.02,5226.373,-50.66381,0,0,100),
(68396,3,-1718.768,5234.698,-51.05395,0,0,100),
(68396,4,-1756.174,5225.031,-49.5504,0,0,100),
(68396,5,-1771.105,5224.627,-47.63511,0,0,100),
(68396,6,-1769.121,5244.227,-40.20918,0,0,100),
(68396,7,-1764.972,5247.74,-40.20918,0,0,100),
(68396,8,-1763.271,5245.366,-40.20918,1500000,0,100), -- 25 min rest 
(68396,9,-1734.497,5269.41,-40.20918,0,0,100),
(68396,10,-1722.328,5270.182,-40.73794,0,0,100),
(68396,11,-1715,5284.021,-40.20918,0,0,100),
(68396,12,-1721.543,5300.05,-40.20918,0,0,100),
(68396,13,-1718.36,5298.516,-40.20918,2010000,0,100), -- 33.5 min rest 
(68396,14,-1714.554,5280.108,-40.20918,0,0,100),
(68396,15,-1727.198,5270.168,-40.20918,0,0,100),
(68396,16,-1734.711,5269.116,-40.20918,0,0,100),
(68396,17,-1746.237,5269.763,-40.20918,0,0,100),
(68396,18,-1745.398,5267.874,-40.20918,1380000,0,100), -- 23 min rest 
(68396,19,-1767.641,5259.67,-38.83882,0,0,100),
(68396,20,-1791.924,5248.777,-40.20918,0,0,100),
(68396,21,-1797.853,5240.109,-42.65911,0,0,100),
(68396,22,-1813.37,5229.941,-41.86657,0,0,100),
(68396,23,-1821.083,5225.077,-40.85779,0,0,100),
(68396,24,-1825.294,5219.862,-40.74345,0,0,100),
(68396,25,-1822.158,5217.733,-41.67556,720000,0,100), -- 12 min rest 
(68396,26,-1833.766,5211.603,-40.20918,0,0,100),
(68396,27,-1837.618,5199.824,-42.7813,0,0,100),
(68396,28,-1852.773,5197.587,-40.54446,0,0,100),
(68396,29,-1860.524,5202.472,-40.20918,0,0,100),
(68396,30,-1882.534,5200.518,-50.18868,0,0,100),
(68396,31,-1896.516,5209.088,-49.66561,0,0,100),
(68396,32,-1902.855,5219.963,-47.39979,0,0,100),
(68396,33,-1902.815,5225.993,-46.17738,0,0,100),
(68396,34,-1906.876,5226.904,-45.18031,30000,0,100), -- 30 sec rest 
(68396,35,-1888.989,5203.314,-50.01155,0,0,100),
(68396,36,-1890.021,5192.212,-49.01382,0,0,100),
(68396,37,-1893.76,5179.561,-46.13441,0,0,100),
(68396,38,-1891.058,5165.425,-42.239,0,0,100),
(68396,39,-1890.48,5153.414,-40.20918,0,0,100),
(68396,40,-1888.734,5145.216,-40.20918,0,0,100),
(68396,41,-1889.648,5135.63,-40.20918,0,0,100),
(68396,42,-1887.849,5139.038,-40.20918,1560000,0,100), -- 26 min rest 
(68396,43,-1876.264,5153.901,-46.89754,0,0,100),
(68396,44,-1853.13,5157.813,-46.78328,0,0,100),
(68396,45,-1832.446,5164.131,-47.73879,0,0,100),
(68396,46,-1800.576,5168.519,-40.67748,0,0,100),
(68396,47,-1781.865,5174.476,-40.20918,0,0,100),
(68396,48,-1750.278,5185.948,-40.20918,0,0,100),
(68396,49,-1721.621,5183.611,-40.20918,0,0,100),
(68396,50,-1693.466,5177.755,-40.20918,0,0,100),
(68396,51,-1683.126,5170.737,-40.20918,0,0,100),
(68396,52,-1684.591,5173.31,-40.20918,2550000,0,100); -- 42.5 min rest 
-- Entry: 19120 Low: 1441801
DELETE FROM creature_movement WHERE id = 68400;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68400,1,-1950.886,5147.88,-40.12583,500,7,1.989675),
(68400,2,-1949.721,5152.821,-39.9239,0,0,100),
(68400,3,-1946.221,5161.821,-39.9239,0,0,100),
(68400,4,-1944.221,5171.071,-39.9239,0,0,100),
(68400,5,-1951.721,5177.071,-39.9239,0,0,100),
(68400,6,-1959.471,5184.821,-39.9239,0,0,100),
(68400,7,-1968.721,5189.821,-39.9239,0,0,100),
(68400,8,-1969.221,5198.571,-43.6739,0,0,100),
(68400,9,-1972.471,5210.821,-44.9239,0,0,100),
(68400,10,-1957.971,5215.821,-46.1739,0,0,100),
(68400,11,-1952.221,5221.321,-47.4239,0,0,100),
(68400,12,-1949.721,5225.321,-47.4239,500,7,100);
--  Entry: 19120 Low: 18219016
DELETE FROM creature_movement WHERE id = 68398;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68398,1,-1955.547,5151.664,-40.12583,500,7,6.108652),
(68398,2,-1951.786,5153.44,-39.96341,0,0,100),
(68398,3,-1946.286,5163.44,-39.96341,0,0,100),
(68398,4,-1943.536,5171.19,-39.96341,0,0,100),
(68398,5,-1952.036,5176.19,-39.96341,0,0,100),
(68398,6,-1957.536,5183.94,-39.96341,0,0,100),
(68398,7,-1966.036,5187.19,-39.96341,0,0,100),
(68398,8,-1963.286,5195.94,-42.46341,0,0,100),
(68398,9,-1945.286,5209.44,-47.21341,0,0,100),
(68398,10,-1934.536,5212.94,-46.96341,0,0,100),
(68398,11,-1928.536,5219.69,-46.46341,0,0,100),
(68398,12,-1928.536,5221.19,-46.46341,500,7,100);
-- Entry: 19120 Low: 9830408
DELETE FROM creature_movement WHERE id = 68399;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68399,1,-1934.094,5168.918,-40.12583,500,7,1.902409),
(68399,2,-1933.86,5173.742,-40.00908,0,0,100),
(68399,3,-1931.86,5186.242,-40.00908,0,0,100),
(68399,4,-1933.86,5198.242,-46.25908,0,0,100),
(68399,5,-1931.86,5219.992,-46.50908,0,0,100),
(68399,6,-1931.86,5221.492,-46.50908,500,7,100);
DELETE FROM creature_movement_template WHERE entry = 19120 AND pathId = 1;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19120,1,1,-1917.847,5223.277,-45.8255,3372000,0,1.797689),
(19120,2,1,-1939.508,5193.9,-44.90732,0,0,100),
(19120,3,1,-1942.963,5179.514,-40.20918,0,0,100),
(19120,4,1,-1965.36,5185.708,-40.20918,0,0,100),
(19120,5,1,-1987.079,5186.03,-40.20918,0,0,100),
(19120,6,1,-2003.908,5185.23,-40.20918,1000,1,100);

-- Lost One Refugee
-- Fix model
UPDATE creature_model_info SET modelid_alternative = 152 WHERE modelid = 11650;
-- Pathing for  Entry: 19162 UDB FORMAT 
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68559;
DELETE FROM creature_movement WHERE id = 68559;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68559,1,-1971.272,5246.029,-43.66053,0,0,100),
(68559,2,-1938.741,5230.817,-44.29489,0,0,100),
(68559,3,-1914.707,5216.594,-47.64558,0,0,100),
(68559,4,-1892.062,5205.756,-49.84676,0,0,100),
(68559,5,-1874.478,5190.601,-50.70343,0,0,100),
(68559,6,-1889.939,5184.358,-47.79593,0,0,100),
(68559,7,-1909.237,5174.798,-40.20918,0,0,100),
(68559,8,-1930.571,5176.271,-40.20918,0,0,100),
(68559,9,-1949.204,5174.263,-40.20918,0,0,100),
(68559,10,-1973.466,5190.693,-40.20918,0,0,100),
(68559,11,-1983.119,5203.233,-42.5836,0,0,100),
(68559,12,-1991.463,5220.295,-44.28505,0,0,100),
(68559,13,-2004.157,5230.49,-44.93502,0,0,100),
(68559,14,-2023.656,5235.983,-43.87561,0,0,100),
(68559,15,-2047.948,5251.585,-39.8586,0,0,100),
(68559,16,-2062.025,5280.688,-38.46484,0,0,100),
(68559,17,-2044.511,5298.059,-38.90862,0,0,100),
(68559,18,-2037.18,5297.292,-38.98505,0,0,100),
(68559,19,-2012.094,5256.791,-44.69251,0,0,100);
-- Should only be at the soup kitchen while the event is running.
UPDATE creature SET position_x = -1990.34, position_y = 5182.772, position_z = -40.20918, orientation = 1.204277, MovementType = 2, spawndist = 0 WHERE guid = 68558;
DELETE FROM creature_movement WHERE id = 68558;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68558,1,-1990.34,5182.772,-40.20918,500,7,1.204277),
(68558,2,-1971.296,5208.073,-44.83416,0,0,100),
(68558,3,-1959.054,5219.249,-46.72676,0,0,100),
(68558,4,-1934.495,5226.018,-44.90169,0,0,100),
(68558,5,-1932.629,5227.989,-43.7804,500,7,10100),
(68558,6,-1960.676,5213.877,-46.36922,0,0,100),
(68558,7,-1976.085,5198.858,-43.04825,0,0,100),
(68558,8,-1994.809,5185.682,-40.20918,0,0,100),
(68558,9,-1990.34,5182.772,-40.20918,0,0,100);
-- For creature GUID 68560. Started by script
DELETE FROM creature_movement_template WHERE entry = 19162;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19162,1,1,-1948.781,5172.326,-40.20918,0,0,100),
(19162,2,1,-1953.118,5182.277,-40.20918,0,0,100),
(19162,3,1,-1951.219,5206.953,-47.5035,0,0,100),
(19162,4,1,-1937.34,5215.381,-47.54671,0,0,100),
(19162,5,1,-1928.857,5219.073,-46.83961,0,0,100),
(19162,6,1,-1927.44,5225.338,-44.63172,500,7,10100),
(19162,7,1,-1956.115,5213.376,-46.58211,0,0,100),
(19162,8,1,-1965.408,5196.368,-42.89487,0,0,100),
(19162,9,1,-1954.238,5180.217,-40.20918,0,0,100),
(19162,10,1,-1946.639,5172.008,-40.20918,0,0,100),
(19162,11,1,-1940.029,5174.476,-40.20918,0,0,100),
(19162,12,1,-1939.988,5179.947,-40.20918,0,0,100),
(19162,13,1,-1939.988,5179.947,-40.20918,500,2,5.445427); -- Random movement
-- (19162,7,1,-1937.06,5173.81,-40.2092,500,1916201,100);

-- Maghar Refugee
-- Remove addons. Stand states should be randomized
DELETE FROM creature_addon WHERE guid IN (68465,68466,68467,96667);
DELETE FROM creature_template_addon WHERE entry = 19144;
-- Missing spawn
DELETE FROM creature_addon WHERE guid = 68924;
DELETE FROM creature_movement WHERE id = 68924;
DELETE FROM game_event_creature WHERE guid = 68924;
DELETE FROM game_event_creature_data WHERE guid = 68924;
DELETE FROM creature_battleground WHERE guid = 68924;
DELETE FROM creature_linking WHERE guid = 68924
 OR master_guid = 68924;
DELETE FROM creature WHERE guid = 68924;
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(68924,19144,530,1,0,0,-1870.212,5477.063,-12.34477,0.9773844,300,300,0,0,6100,0,0,0);
-- Relocate existing spawns to the same guid range
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300, modelid = 0, position_x = -1867.284, position_y = 5477.182, position_z = -12.34477, orientation = 2.321288 WHERE guid = 96667; -- Normalize spawntime and modelid
UPDATE creature SET position_x = -1610.705, position_y = 5345.501, position_z = -40.20918, orientation = 5.318808, MovementType = 1, spawndist = 5 WHERE guid = 68465;
UPDATE creature SET position_x = -1622.22, position_y = 5347.756, position_z = -40.20918, MovementType = 2, spawndist = 0 WHERE guid = 68467;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68466;
-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN(68924,96667);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(68924, 25704, 0, 'Maghar Refugee at Spymistress Mehlisah Highcrown'),
(96667, 25705, 0, 'Maghar Refugee at Spymistress Mehlisah Highcrown');
-- Pathing for  Entry: 19144 UDB FORMAT 
DELETE FROM creature_movement WHERE id = 68467;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68467,1,-1622.22,5347.756,-40.20918,500,1914401,5.550147),
(68467,2,-1636.581,5304.6,-40.20918,0,0,100),
(68467,3,-1643.458,5282.309,-41.18183,0,0,100),
(68467,4,-1656.824,5273.861,-43.01165,0,0,100),
(68467,5,-1684.264,5250.724,-51.4207,0,0,100),
(68467,6,-1713.102,5219.824,-49.37544,0,0,100),
(68467,7,-1740.18,5202.647,-41.05328,0,0,100),
(68467,8,-1755.893,5184.438,-40.20918,0,0,100),
(68467,9,-1785.943,5171.701,-40.20918,0,0,100),
(68467,10,-1802.324,5170.343,-41.47198,0,0,100),
(68467,11,-1827.98,5168.217,-48.69007,0,0,100),
(68467,12,-1844.449,5169.197,-47.33143,0,0,100),
(68467,13,-1865.427,5167.586,-49.37098,0,0,100),
(68467,14,-1880.727,5186.796,-49.93195,0,0,100),
(68467,15,-1892.633,5202.694,-49.97176,0,0,100),
(68467,16,-1906.578,5208.201,-48.6908,0,0,100),
(68467,17,-1916.773,5211.828,-47.92274,0,0,100),
(68467,18,-1918.672,5215.128,-47.81287,3197000,10,100),
(68467,19,-1875.128,5187.833,-50.70343,0,0,100),
(68467,20,-1849.336,5169.315,-47.11171,0,0,100),
(68467,21,-1832.168,5164.893,-47.86367,0,0,100),
(68467,22,-1800.548,5169.1,-40.73396,0,0,100),
(68467,23,-1783.614,5173.041,-40.20918,0,0,100),
(68467,24,-1738.759,5188.382,-40.20918,0,0,100),
(68467,25,-1712.112,5183.194,-40.20918,0,0,100),
(68467,26,-1689.918,5199.679,-47.92977,0,0,100),
(68467,27,-1657.552,5226.853,-45.39747,0,0,100),
(68467,28,-1631.944,5250.383,-40.93432,0,0,100),
(68467,29,-1625.36,5291.995,-40.43608,0,0,100),
(68467,30,-1623.593,5312.18,-40.20918,0,0,100),
(68467,31,-1619.565,5332.471,-40.20918,0,0,100),
(68467,32,-1622.22,5347.756,-40.20918,0,0,0);
DELETE FROM creature_movement WHERE id = 68466;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68466,1,-1599.19,5339.23,-40.1258,500,1914402,2.51327);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1914401);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1914401,0,35,6,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Send AI Event 6 to Self',0,0,0,100),
(1914401,0,32,1,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Pause Waypoint Movement',0,0,0,100),
(1914402,0,35,6,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Send AI Event 6 to Self',0,0,0,100),
(1914402,0,20,0,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Set Idle Movement',0,0,0,0);

-- Orc Refugee
-- Remove addons. Stand states should be randomized
DELETE FROM creature_addon WHERE guid IN (68479,68480,68481,68482);
DELETE FROM creature_template_addon WHERE entry = 19144;
-- Missing spawns
DELETE FROM creature_addon WHERE guid IN (68925,69108);
DELETE FROM creature_movement WHERE id IN (68925,69108);
DELETE FROM game_event_creature WHERE guid IN (68925,69108);
DELETE FROM game_event_creature_data WHERE guid IN (68925,69108);
DELETE FROM creature_battleground WHERE guid IN (68925,69108);
DELETE FROM creature_linking WHERE guid IN (68925,69108)
 OR master_guid IN (68925,69108);
DELETE FROM creature WHERE guid IN (68925,69108);
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(68925,19150,530,1,0,0,-1870.212,5477.063,-12.34477,0.9773844,300,300,0,0,6400,0,0,0),
(69108,19150,530,1,0,0,-1867.284,5477.182,-12.34477,2.321288,300,300,0,0,6400,0,0,0);
-- Relocate existing spawns to the same guid range
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 68481;
UPDATE creature SET position_x = -1727.175, position_y = 5276.094, position_z = -40.20918, orientation = 5.288348, MovementType = 2, spawndist = 0 WHERE guid = 68482;
-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN(68925,69108);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(68925, 25704, 0, 'Orc Refugee at Spymistress Mehlisah Highcrown'),
(69108, 25705, 0, 'Orc Refugee at Spymistress Mehlisah Highcrown');
-- Addon for orc at Refugee Caravan
DELETE FROM creature_addon WHERE guid = 68480;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(68480, 0, 1, 1, 16, 0, 0, NULL);
-- Pathing for  Entry: 19150 UDB FORMAT 
DELETE FROM creature_movement WHERE id = 68481;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68481,1,-1738.253,5239.01,-49.52922,0,0,100),
(68481,2,-1753.457,5259.475,-40.20918,0,0,100),
(68481,3,-1777.285,5251.141,-40.20918,0,0,100),
(68481,4,-1781.114,5230.833,-45.88293,0,0,100),
(68481,5,-1793.114,5220.676,-48.83832,0,0,100),
(68481,6,-1807.634,5216.122,-46.77752,0,0,100),
(68481,7,-1823.6,5215.81,-41.52951,0,0,100),
(68481,8,-1838.272,5212.268,-40.20918,0,0,100),
(68481,9,-1862.211,5223.447,-40.20918,0,0,100),
(68481,10,-1891.917,5221.811,-46.22883,0,0,100),
(68481,11,-1862.211,5223.447,-40.20918,0,0,100),
(68481,12,-1838.272,5212.268,-40.20918,0,0,100),
(68481,13,-1823.6,5215.81,-41.52951,0,0,100),
(68481,14,-1807.634,5216.122,-46.77752,0,0,100),
(68481,15,-1793.114,5220.676,-48.83832,0,0,100),
(68481,16,-1781.114,5230.833,-45.88293,0,0,100),
(68481,17,-1777.285,5251.141,-40.20918,0,0,100),
(68481,18,-1753.457,5259.475,-40.20918,0,0,100),
(68481,19,-1738.253,5239.01,-49.52922,0,0,100),
(68481,20,-1724.574,5235.167,-50.46606,0,0,100),
(68481,21,-1701.509,5247.913,-49.62231,0,0,100),
(68481,22,-1725.438,5273.714,-40.20918,0,0,100),
(68481,23,-1701.509,5247.913,-49.62231,0,0,100),
(68481,24,-1724.574,5235.167,-50.46606,0,0,0);
-- Should only be at the soup kitchen while the event is running.
DELETE FROM creature_movement WHERE id = 68482;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- To kitchen
(68482,1,-1727.175,5276.094,-40.20918,500,1915001,5.288348),
(68482,2,-1743.104,5265.377,-40.20918,0,0,100),
(68482,3,-1755.205,5248.055,-40.20918,0,0,100),
(68482,4,-1772.216,5242.507,-40.20918,0,0,100),
(68482,5,-1786.207,5229.498,-47.10994,0,0,100),
(68482,6,-1806.299,5223.9,-45.35332,0,0,100),
(68482,7,-1827.67,5217.583,-40.41649,0,0,100),
(68482,8,-1841.556,5198.459,-43.07298,0,0,100),
(68482,9,-1855.024,5176.454,-48.17921,0,0,100),
(68482,10,-1877.369,5188.83,-50.57867,0,0,100),
(68482,11,-1902.808,5214.768,-48.60621,0,10,100),
-- At kitchen
(68482,12,-1910.953,5224.428,-45.45106,500,7,100),
-- From kitchen
(68482,13,-1883.114,5214.616,-45.82743,0,0,100),
(68482,14,-1867.016,5221.33,-40.20918,0,0,100),
(68482,15,-1851.91,5221.754,-38.04537,0,0,100),
(68482,16,-1844.161,5217.744,-38.04538,0,0,100),
(68482,17,-1824.238,5212.982,-41.65744,0,0,100),
(68482,18,-1810.258,5233.539,-42.10093,0,0,100),
(68482,19,-1793.421,5247.145,-40.20918,0,0,100),
(68482,20,-1769.859,5242.901,-40.20918,0,0,100),
(68482,21,-1756.912,5246.548,-40.20918,0,0,100),
(68482,22,-1745.085,5260.75,-40.20918,0,0,100),
(68482,23,-1724.028,5271.72,-40.20918,0,0,100),
(68482,24,-1727.175,5276.094,-40.20918,0,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1915001);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1915001,0,35,6,0,0,0,0,0,0,0,0,0,'Orc Refugee - Send AI Event 6 to Self',0,0,0,100),
(1915001,0,32,1,0,0,0,0,0,0,0,0,0,'Orc Refugee - Pause Waypoint Movement',0,0,0,0);

-- Sporeling Refugee
UPDATE creature SET orientation = 0, MovementType = 2, spawndist = 0 WHERE guid = 68526; -- Leader
UPDATE creature SET orientation = 0, position_x = -1767.99, position_y = 5241.28, position_z = -40.7035, MovementType = 0, spawndist = 0 WHERE guid = 68525; -- Follower
DELETE FROM creature_linking WHERE master_guid = 68526;
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(68525,68526,512);

-- Pathing for  Entry: 19155 UDB FORMAT 
DELETE FROM creature_movement WHERE id = 68526;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68526,1,-1754.282,5249.737,-40.20918,0,0,100),
(68526,2,-1737.983,5268.585,-40.20918,0,0,100),
(68526,3,-1715.286,5271.786,-41.50925,0,0,100),
(68526,4,-1738.62,5267.795,-40.10921,0,0,100),
(68526,5,-1761.505,5257.382,-39.95918,0,0,100),
(68526,6,-1774.505,5251.382,-39.95918,0,0,100),
(68526,7,-1789.755,5245.882,-39.95918,0,0,100),
(68526,8,-1805.005,5238.382,-42.20918,0,0,100),
(68526,9,-1815.755,5228.132,-41.20918,0,0,100),
(68526,10,-1834.055,5210.46,-40.20918,0,0,100),
(68526,11,-1820.181,5221.755,-41.637,0,0,100),
(68526,12,-1796.215,5221.762,-48.72382,0,0,100),
(68526,13,-1781.415,5224.892,-47.93328,0,0,100),
(68526,14,-1763.816,5243.585,-40.20918,0,0,100);

-- For creature GUID 68524 (Started by script)
-- Pathing for  Entry: 19155 UDB FORMAT 
DELETE FROM creature_movement_template WHERE entry = 19155;
INSERT INTO creature_movement_template (entry,point,pathId,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19155,1,1,-1690.107,5258.999,-51.5457,0,0,100),
(19155,2,1,-1706.435,5240.616,-50.32714,0,0,100),
(19155,3,1,-1739.823,5227.423,-50.60606,0,0,100),
(19155,4,1,-1759.002,5223.516,-49.27318,0,0,100),
(19155,5,1,-1770.28,5214.807,-49.37787,0,0,100),
(19155,6,1,-1791.6,5217.547,-48.96332,0,0,100),
(19155,7,1,-1820.912,5214.557,-42.27272,0,0,100),
(19155,8,1,-1837.317,5214.22,-40.20918,0,0,100),
(19155,9,1,-1863.931,5222.938,-40.20918,0,0,100),
(19155,10,1,-1907.124,5221.915,-46.63905,0,0,100),
(19155,11,1,-1916.961,5215.134,-47.81226,0,0,100),
(19155,12,1,-1925.269,5217.352,-47.2765,0,0,100),
(19155,13,1,-1925.222,5225.425,-44.59986,500,7,10100),
(19155,14,1,-1863.377,5225.167,-40.20918,0,0,100),
(19155,15,1,-1840.451,5213.061,-40.20918,0,0,100),
(19155,16,1,-1812.334,5216.117,-44.867,0,0,100),
(19155,17,1,-1783.024,5217.381,-49.06513,0,0,100),
(19155,18,1,-1767.346,5215.632,-49.58832,0,0,100),
(19155,19,1,-1761.921,5223.952,-49.11375,0,0,100),
(19155,20,1,-1743.904,5226.239,-50.4254,0,0,100),
(19155,21,1,-1714.136,5234.733,-51.05395,0,0,100),
(19155,22,1,-1681.296,5271.378,-51.46129,0,0,100),
(19155,23,1,-1668.254,5284.326,-49.39611,0,10,100),
(19155,24,1,-1668.487,5284.095,-49.42394,500,2,2.775074); -- Random movement

-- Dwarf Refugee
UPDATE creature SET MovementType = 2, orientation = 0 WHERE guid = 68395; -- Leader
UPDATE creature SET MovementType = 0, orientation = 0, position_x = -1892.04, position_y = 5179.68, position_z = -46.875 WHERE guid = 68394; -- Follower 1
UPDATE creature SET MovementType = 0, orientation = 0, position_x = -1894.54, position_y = 5179.68, position_z = -45.521030 WHERE guid = 68393; -- Follower 2
DELETE FROM creature_movement WHERE id IN (68394,68393); -- Delete the old follower paths
DELETE FROM creature_linking WHERE master_guid = 68395;
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(68394,68395,512),
(68393,68395,512);

-- Pathing for  Entry: 19077 'UDB FORMAT' 
DELETE FROM creature_movement WHERE id = 68395;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68395,1,-1832.019,5164.393,-47.82155,0,0,100),
(68395,2,-1805.324,5168.581,-41.91221,0,0,100),
(68395,3,-1788.632,5171.441,-40.20918,0,0,100),
(68395,4,-1767.594,5190.393,-40.97626,0,0,100),
(68395,5,-1743.07,5199.384,-40.96571,0,0,100),
(68395,6,-1709.195,5214.053,-47.98369,0,0,100),
(68395,7,-1690.923,5232.892,-49.36059,0,0,100),
(68395,8,-1686.848,5263.346,-51.5457,0,0,100),
(68395,9,-1675.501,5295.451,-50.51818,0,0,100),
(68395,10,-1673.785,5319.386,-48.61464,0,0,100),
(68395,11,-1663.835,5351.972,-45.89255,0,0,100),
(68395,12,-1682.768,5344.351,-42.00426,0,0,100),
(68395,13,-1701.157,5312.141,-40.20918,0,0,100),
(68395,14,-1701.046,5297.241,-40.20918,0,0,100),
(68395,15,-1719.516,5273.028,-40.20918,0,0,100),
(68395,16,-1701.046,5297.241,-40.20918,0,0,100),
(68395,17,-1701.157,5312.141,-40.20918,0,0,100),
(68395,18,-1682.768,5344.351,-42.00426,0,0,100),
(68395,19,-1663.835,5351.972,-45.89255,0,0,100),
(68395,20,-1673.785,5319.386,-48.61464,0,0,100),
(68395,21,-1675.501,5295.451,-50.51818,0,0,100),
(68395,22,-1686.848,5263.346,-51.5457,0,0,100),
(68395,23,-1690.923,5232.892,-49.36059,0,0,100),
(68395,24,-1709.195,5214.053,-47.98369,0,0,100),
(68395,25,-1743.07,5199.384,-40.96571,0,0,100),
(68395,26,-1767.594,5190.393,-40.97626,0,0,100),
(68395,27,-1788.632,5171.441,-40.20918,0,0,100),
(68395,28,-1805.324,5168.581,-41.91221,0,0,100),
(68395,29,-1831.25,5164.583,-47.81166,0,0,100),
(68395,30,-1860.935,5152.44,-44.80574,0,0,100),
(68395,31,-1875.795,5147.295,-44.1003,0,0,100),
(68395,32,-1885.993,5148.211,-40.20918,0,0,100),
(68395,33,-1892.595,5159.729,-40.20918,0,0,100),
(68395,34,-1914.948,5175.756,-40.20918,0,0,100),
(68395,35,-1892.595,5159.729,-40.20918,0,0,100),
(68395,36,-1885.993,5148.211,-40.20918,0,0,100),
(68395,37,-1875.795,5147.295,-44.1003,0,0,100),
(68395,38,-1860.935,5152.44,-44.80574,0,0,100);

-- Eiin
UPDATE creature_template SET MovementType = 2 WHERE entry = 19213;
UPDATE creature SET MovementType = 2 WHERE guid = 68743;
DELETE FROM creature_movement_template WHERE entry = 19213;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19213,1,-2074.096,5269.769,-37.32357,30000,0,100),
(19213,2,-2077.258,5270.031,-37.32357,37000,0,100); -- 1921301

-- Sniffs say he should do emote 69, but seems like that emote did not exist for this npc model in tbc. Commenting out for now, path and waittimes are probably still valid.
-- DELETE FROM dbscripts_on_creature_movement WHERE id IN(1921301);
-- INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
-- (1921301,0,1,69,0,0,0,0,0,0,0,0,0,'Eiin - STATE_USESTANDING',0,0,0,0),
-- (1921301,35,1,0,0,0,0,0,0,0,0,0,0,'Eiin - ONESHOT_NONE',0,0,0,0);
