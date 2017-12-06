-- Vengeance Landing - Howling Fjord

-- High Executor Anselm
UPDATE creature_template SET GossipMenuId = 8911 WHERE entry = 23780;
DELETE FROM gossip_menu WHERE entry = 8911;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8911, 11796, 0, 0);
DELETE FROM creature_template_addon WHERE entry = 23780;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23780,10721,0,0,0,0,0,NULL);

-- Deathguard Hicks
-- shouldn't be there -- transport npc.
DELETE FROM creature WHERE guid=117715;
DELETE FROM creature_addon WHERE guid=117715;
DELETE FROM creature_movement WHERE id=117715;
DELETE FROM game_event_creature WHERE guid=117715;
DELETE FROM game_event_creature_data WHERE guid=117715;
DELETE FROM creature_battleground WHERE guid=117715;
DELETE FROM creature_linking WHERE guid=117715 OR master_guid=117715;

-- Crewman Coilspan
-- shouldn't be there -- transport npc.
DELETE FROM creature WHERE guid=116702;
DELETE FROM creature_addon WHERE guid=116702;
DELETE FROM creature_movement WHERE id=116702;
DELETE FROM game_event_creature WHERE guid=116702;
DELETE FROM game_event_creature_data WHERE guid=116702;
DELETE FROM creature_battleground WHERE guid=116702;
DELETE FROM creature_linking WHERE guid=116702 OR master_guid=116702;

-- Pontius
UPDATE creature_template SET GossipMenuId = 8970 WHERE entry = 23938;
DELETE FROM gossip_menu WHERE entry = 8970;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8970, 12103, 0, 0);

-- Forsaken Croaabowman
-- Individual Addons
DELETE FROM creature_addon WHERE guid IN (102612,102618,102620);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(102612,0,0,2,0,0,0,NULL),
(102618,0,0,2,0,0,0,NULL), 
(102620,0,0,2,0,0,0,NULL);
-- Waypoints
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid IN (102612,102618,102620);
DELETE FROM creature_movement WHERE id IN (102612,102618,102620);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(102612,1,2002.14,-6032.62,8.80714,7000,2388301,0.733038),
(102618,1,1997.71,-6024.19,9.76395,12000,2388302,0.575959),
(102620,1,1993.8,-6016.08,9.57791,10000,2388303,0.541052);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2388301,2388302,2388303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2388301,1,15,42611,1,0,5202,100,1,0,0,0,0,0,0,0,0,''),
(2388302,3,15,42611,1,0,5202,100,1,0,0,0,0,0,0,0,0,''),
(2388303,7,15,42611,1,0,5202,100,1,0,0,0,0,0,0,0,0,'');

-- Magister Varenthas
UPDATE creature_template SET GossipMenuId = 9780 WHERE entry = 29159;

-- Booker Kells
UPDATE creature_template SET GossipMenuId = 9879 WHERE entry = 26959;

-- Apothecary Lysander
UPDATE creature_template SET GossipMenuId = 8827 WHERE entry = 24126;
DELETE FROM gossip_menu WHERE entry = 8827;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8827, 11384, 0, 0);
-- missing npc_text added
DELETE FROM npc_text WHERE ID = 11384;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(11384,'The Royal Apothecary Society welcomes you to Northrend, $c.  Now, what is it that you will do to aid us in Sylvanas\' service?', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Vengeance Landing Deathguard -- mounted patrol
-- Individual Addons
DELETE FROM creature_addon WHERE guid IN (117673,117674);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(117673,10718,0,1,1,0,0,NULL), -- master
(117674,10718,0,1,1,0,0,NULL);
-- Waypoints
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 117673;
UPDATE creature SET position_x = 2013.908936, position_y = -6164.616699, position_z = 15.733516, orientation = 1.57369, SpawnDist = 0, MovementType = 0 WHERE guid = 117674;
DELETE FROM creature_movement WHERE id = 117673;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(117673,1,2016.24,-6157.87,13.1977,0,0,1.52477),
(117673,2,2015.83,-6145.55,7.88017,0,0,1.67348),
(117673,3,2014.28,-6133.29,6.46747,0,0,1.66955),
(117673,4,2012.94,-6120.86,6.03301,0,0,1.6774),
(117673,5,2011.75,-6107.13,6.63284,0,0,1.69704),
(117673,6,2009.53,-6095.89,7.08266,0,0,1.88946),
(117673,7,2007.67,-6090.07,7.64141,0,0,2.00334),
(117673,8,2004.53,-6084.76,8.83384,0,0,2.26095),
(117673,9,1998.68,-6080.14,10.576,0,0,2.64344),
(117673,10,1989.88,-6077.4,12.7546,0,0,2.94582),
(117673,11,1973.77,-6074.59,16.3861,0,0,3.21678),
(117673,12,1965.13,-6075.81,17.5653,0,0,3.60556),
(117673,13,1958.82,-6080.25,18.4291,0,0,3.73772),
(117673,14,1951.8,-6085.63,20.1726,0,0,3.82412),
(117673,15,1941.9,-6094.04,20.6644,0,0,3.93407),
(117673,16,1939.54,-6099.86,20.5402,0,0,4.53882),
(117673,17,1939.1,-6105.71,21.2091,0,0,4.75088),
(117673,18,1939.12,-6110.8,22.4324,0,0,4.47285),
(117673,19,1936.42,-6121.51,23.2113,0,0,4.498),
(117673,20,1933.25,-6130.15,23.1697,0,0,4.71729),
(117673,21,1934.82,-6135.03,23.2975,0,0,5.10213),
(117673,22,1938.9,-6145.15,23.7109,0,0,5.01966),
(117673,23,1939.97,-6152.59,23.7182,0,0,4.76205),
(117673,24,1943.13,-6159.74,23.7036,0,0,5.38599),
(117673,25,1950.22,-6169.12,24.1232,0,0,5.46453),
(117673,26,1956.32,-6174.43,24.2589,0,0,5.84389),
(117673,27,1964.69,-6178.04,24.0037,0,0,5.89102),
(117673,28,1972.11,-6180.07,23.7833,0,0,6.1227),
(117673,29,1978.29,-6180.39,23.7011,0,0,6.26015),
(117673,30,1987.2,-6179.4,23.1245,0,0,0.03194),
(117673,31,1995.8,-6178.26,19.8625,0,0,0.11048),
(117673,32,2006.32,-6176.85,15.3594,0,0,0.14975),
(117673,33,2013.16,-6175.09,15.3707,0,0,0.668113),
(117673,34,2015.35,-6170.03,15.5007,0,0,1.28465),
(117673,35,2015.85,-6164.67,15.7319,0,0,1.5831);
-- link
DELETE FROM creature_linking WHERE master_guid = 117673;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(117674,117673,1+2+512);

-- Apothecary Celestine
UPDATE creature SET position_x = 1976.567, position_y = -6148.698, position_z = 25.13685, orientation = 1.134464, SpawnDist = 0, MovementType = 2 WHERE guid = 117795;
DELETE FROM creature_movement WHERE id = 117795;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(117795,1,1976.567,-6148.698,25.13685,26000,2378101,1.134464);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2378101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2378101,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2378101,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- 23805 -- Vengeance Landing Cannon Controler
-- 23803 -- Vengeance Landing Cannon Trigger
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119640;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119641;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119653;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119654;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119670;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119619;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119655;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119678;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=119618;
-- targets corrected
DELETE FROM spell_script_target WHERE entry = 42442;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(42442, 1, 23803, 0),
(42442, 1, 24921, 0);

-- Event
-- http://www.wowhead.com/npc=29302/deathguard-hemil#comments
-- Forsaken Recruit
UPDATE creature SET position_x = 1972.96, position_y = -6254.06, position_z = 1.25329, orientation = 0.390811, spawndist = 0, MovementType = 2 WHERE guid = 118404; -- master
UPDATE creature SET position_x = 1973.1, position_y = -6254.7, position_z = 1.25329, orientation = 0.390811, spawndist = 0, MovementType = 0 WHERE guid = 118403;
UPDATE creature SET position_x = 1972.64, position_y = -6253.59, position_z = 1.25329, orientation = 0.390811, spawndist = 0, MovementType = 0 WHERE guid = 118401;
UPDATE creature SET position_x = 1972.43, position_y = -6254.23, position_z = 1.25329, orientation = 0.34326, spawndist = 0, MovementType = 0 WHERE guid = 118402;
-- links
DELETE FROM creature_linking WHERE master_guid = 118404;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(118403,118404,1+2+128+512+1024+8192),
(118401,118404,1+2+128+512+1024+8192),
(118402,118404,1+2+128+512+1024+8192);
DELETE FROM creature_movement WHERE id = 118404;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(118404,1,1977.54,-6251.92,1.25325,2000,0,0.482814),
(118404,2,1989.75,-6244.71,1.25325,0,0,0.561354),
(118404,3,1999.49,-6238.68,1.26237,0,0,0.384639),
(118404,4,2007.32,-6235.63,5.29081,0,0,0.376785),
(118404,5,2010.27,-6236.29,5.32908,0,0,5.38134),
(118404,6,2009.43,-6239.24,5.32908,0,0,3.69667),
(118404,7,2003.54,-6241.83,8.41202,0,0,3.49247),
(118404,8,1997.87,-6242.26,8.58237,0,0,2.60889),
(118404,9,1990.17,-6237.41,8.58352,0,0,2.45574),
(118404,10,1987.09,-6234.06,8.62203,0,0,2.03241),
(118404,11,1985.3,-6226.95,7.73933,10000,2942201,3.11693),
(118404,12,1985.91,-6221.04,7.73933,0,0,0.821211),
(118404,13,1997.99,-6214.67,7.73933,0,0,0.420497),
(118404,14,2007.97,-6210.96,7.7388,0,0,0.65219),
(118404,15,2011.58,-6204.69,7.89962,0,0,1.31585),
(118404,16,2015.14,-6195.65,11.6578,0,0,1.43994),
(118404,17,2015.56,-6185.98,15.7973,0,0,1.5105),
(118404,18,2015.46,-6176.38,15.3872,0,0,1.61039),
(118404,19,2014.71,-6164.41,15.7934,0,0,1.64181),
(118404,20,2015.76,-6156.04,12.4072,0,0,1.57505),
(118404,21,2015.16,-6145.36,7.86001,0,0,1.64181),
(118404,22,2014.01,-6131.76,6.38754,0,0,1.66537),
(118404,23,2012.71,-6120.14,5.99595,0,0,1.71249),
(118404,24,2011.76,-6108.17,6.56669,0,0,1.64966),
(118404,25,2009.49,-6095.97,7.07232,0,0,1.88921),
(118404,26,2006.13,-6088.4,8.03768,0,0,2.13268),
(118404,27,2001.07,-6082.28,9.85732,0,0,2.54894),
(118404,28,1994.55,-6078.78,11.6305,0,0,2.76493),
(118404,29,1986.24,-6075.43,13.6475,0,0,2.94164),
(118404,30,1975.85,-6074.51,15.9894,0,0,3.13406),
(118404,31,1967.14,-6075.05,17.3374,0,0,3.20082),
(118404,32,1961.05,-6075.53,17.7725,0,0,2.82148),
(118404,33,1956.93,-6073.34,17.4238,0,0,2.31725),
(118404,34,1953.77,-6067.5,16.3958,0,0,1.99524),
(118404,35,1952.29,-6060.38,15.2479,0,0,1.5829),
(118404,36,1952.62,-6052.13,14.5453,0,0,1.29231),
(118404,37,1956.05,-6045.36,13.7723,0,0,0.971828),
(118404,38,1963.5,-6040.85,13.5027,0,0,0.418122),
(118404,39,1972.26,-6036.53,12.5244,5000,1,0.484881); -- desp
DELETE FROM dbscripts_on_creature_movement WHERE id = 2942201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2942201,0,35,5,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT');

-- Dark Ranger
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid IN (85476,85477);
DELETE FROM creature_movement WHERE id IN (85476,85477);
DELETE FROM game_event_creature WHERE guid IN (85476,85477);
DELETE FROM game_event_creature_data WHERE guid IN (85476,85477);
DELETE FROM creature_battleground WHERE guid IN (85476,85477);
DELETE FROM creature_linking WHERE guid IN (85476,85477)
OR master_guid IN (85476,85477);
DELETE FROM creature WHERE guid IN (85476,85477);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(85476,23776,571,1,1,0,511,1966.86,-6262.24,13.636,0.416786,300,300,0,0,14415,0,0,2), -- master
(85477,23776,571,1,1,0,511,1966.45,-6261.53,13.636,0.334319,300,300,0,0,14415,0,0,0);
-- Individual Addons
DELETE FROM creature_addon WHERE guid IN (85476,85477);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(85476,10718,0,1,1,0,0,NULL), -- master
(85477,10718,0,1,1,0,0,NULL);
-- link
DELETE FROM creature_linking WHERE master_guid = 85476;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(85477,85476,1+2+128+512+1024+8192);
DELETE FROM creature_movement WHERE id = 85476;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(85476,1,1968.06,-6261.8,13.637,120000,5,0.380826),
(85476,2,1972.76,-6259.87,14.6937,0,0,0.608592),
(85476,3,1976.97,-6255.25,14.4775,0,0,1.00129),
(85476,4,1986.89,-6242.99,13.8749,0,0,0.639729),
(85476,5,1991.34,-6240.14,8.58528,0,0,1.39371),
(85476,6,1991.53,-6237.17,8.58528,0,0,2.21524),
(85476,7,1987.39,-6234.63,8.48948,0,0,1.90815),
(85476,8,1985.53,-6224.06,7.73862,0,2377601,1.7118),
(85476,9,1992.64,-6219.13,7.73862,0,0,0.588678),
(85476,10,2001.36,-6212.46,7.73862,0,0,0.631875),
(85476,11,2012.76,-6204.6,7.89861,0,0,0.623161),
(85476,12,2015,-6202.05,8.90979,0,0,1.23577),
(85476,13,2014.37,-6186.23,15.6992,0,0,1.64038),
(85476,14,2012.21,-6179.49,15.394,0,0,2.14696),
(85476,15,2006.72,-6176.76,15.3592,0,0,2.89152),
(85476,16,1997.09,-6177.13,19.2825,0,0,3.17583),
(85476,17,1987.3,-6177.98,23.3879,0,0,3.26615),
(85476,18,1976.95,-6178.97,23.7202,0,0,3.08316),
(85476,19,1967.51,-6178.25,23.9363,0,0,3.03603),
(85476,20,1958.1,-6175.62,24.2028,0,0,2.76507),
(85476,21,1949.09,-6169.15,24.0711,0,0,2.50981),
(85476,22,1941.59,-6166,23.6998,0,0,3.07923),
(85476,23,1924.51,-6166.94,23.7876,0,0,3.1774),
(85476,24,1912.73,-6165.86,23.0089,0,0,2.80041),
(85476,25,1905.4,-6159.84,21.6651,0,0,2.25063),
(85476,26,1900.11,-6149.83,18.502,0,0,2.05036),
(85476,27,1895.57,-6141.51,18.0577,0,0,2.0857),
(85476,28,1893.9,-6137.66,18.0577,0,0,1.57519),
(85476,29,1894.31,-6126.74,18.1256,0,0,1.45765),
(85476,30,1895.81,-6118.22,18.3296,0,0,1.97602),
(85476,31,1887.19,-6109.54,18.1207,0,0,2.60434),
(85476,32,1878.36,-6103.71,18.0258,0,0,2.69858),
(85476,33,1868.98,-6100.17,17.2504,0,0,2.93333),
(85476,34,1857.29,-6100.18,15.4363,0,0,3.16109),
(85476,35,1842.48,-6102.49,13.5645,0,0,3.56165),
(85476,36,1833.03,-6107.17,12.5284,0,0,3.91491),
(85476,37,1825.68,-6115.29,10.637,0,0,4.04843),
(85476,38,1814.87,-6129.22,10.0362,0,0,4.07984),
(85476,39,1809.67,-6138.8,9.84111,0,0,4.38222),
(85476,40,1806.8,-6155.59,8.07283,0,0,4.57071),
(85476,41,1804.64,-6170.94,5.94955,0,0,4.57464),
(85476,42,1803.19,-6183.59,5.57056,5000,1,4.62569); -- desp
DELETE FROM dbscripts_on_creature_movement WHERE id = 2377601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2377601,0,35,6,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT');

-- Morris Family
DELETE FROM creature_linking WHERE master_guid = 118144;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(115143,118144,1+2+128+512+1024+8192),
(118200,118144,1+2+128+512+1024+8192),
(118249,118144,1+2+128+512+1024+8192),
(115231,118144,1+2+128+512+1024+8192),
(118045,118144,1+2+128+512+1024+8192);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 118144; -- master
DELETE FROM creature_movement WHERE id = 118144;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(118144,1,1979.35,-6255.47,8.58476,40000,0,0.376571),
(118144,2,1984.87,-6253.24,8.58476,0,0,0.32552),
(118144,3,1990.82,-6250.85,8.58476,0,0,0.451184),
(118144,4,1995.73,-6248.42,8.58476,0,0,1.16982),
(118144,5,1995.47,-6241.94,8.58302,0,0,1.80207),
(118144,6,1990.43,-6237.06,8.58344,0,0,2.46573),
(118144,7,1987.03,-6234.24,8.5071,0,0,1.69054),
(118144,8,1985.58,-6226.35,7.73876,20000,2941901,3.31475),
(118144,9,1986.77,-6221.69,7.73876,0,0,0.65618),
(118144,10,1994.25,-6216.97,7.73876,0,0,0.515594),
(118144,11,2003.94,-6211.56,7.73876,0,0,0.515594),
(118144,12,2013.67,-6204.89,7.89386,0,0,1.65049),
(118144,13,2014.42,-6195.4,11.7727,0,0,1.48949),
(118144,14,2014.66,-6186,15.7962,0,0,1.57195),
(118144,15,2014.63,-6176.89,15.3869,0,0,1.59039),
(118144,16,2014.64,-6164.27,15.8498,0,0,1.55897),
(118144,17,2016.01,-6155.96,12.3781,0,0,1.53934),
(118144,18,2015.22,-6145.53,7.87425,0,0,1.60217),
(118144,19,2013.88,-6129.59,6.28219,0,0,1.72391),
(118144,20,2012.7,-6117.38,6.04007,0,0,1.64144),
(118144,21,2011.24,-6105.77,6.73958,0,0,1.73569),
(118144,22,2009.26,-6096.05,7.03634,0,0,1.86921),
(118144,23,2005.91,-6088.15,8.11917,0,0,2.16373),
(118144,24,2000.91,-6081.72,9.93104,0,0,2.76063),
(118144,25,1994.18,-6078.81,11.7192,5000,1,2.90975); -- temp. desp
-- part missing
DELETE FROM dbscripts_on_creature_movement WHERE id = 2941901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2941901,0,31,29302,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29302'),
(2941901,1,0,0,0,0,29302,100,7,2000001457,0,0,0,0,0,0,0,''),
(2941901,5,0,0,0,0,0,0,0,2000001458,0,0,0,0,0,0,0,''),
(2941901,8,31,29302,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29302'),
(2941901,9,0,0,0,0,29302,100,7,2000001459,0,0,0,0,0,0,0,''),
(2941901,14,0,0,0,0,0,0,0,2000001460,0,0,0,0,0,0,0,''),
(2941901,17,31,29302,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29302'),
(2941901,18,0,0,0,0,29302,100,7,2000001461,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001457 AND 2000001461;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001457,'Looks like you brought the whole family!  What\'s your business here, then?',0,0,0,1,NULL),
(2000001458,'We\'re here for civilian work, sir.',0,0,0,1,NULL),
(2000001459,'Work?  You are aware this is a warzone, citizen?  What is your profession?',0,0,0,6,NULL),
(2000001460,'Well... we\'re undertakers, sir.',0,0,0,2,NULL),
(2000001461,'Right.  Go ahead.',0,0,0,1,NULL);
