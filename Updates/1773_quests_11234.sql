-- q.11234 'Report to Anselm'
DELETE FROM dbscripts_on_quest_end WHERE id = 11234;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11234,0,31,24042,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 24042 - only one allowed'),
(11234,1,10,24042,125000,0,0,0,0x08,0,0,0,0,1858.167,-6138.13,23.42487,5.427974,'summon: Generic Trigger LAB - OLD'),
(11234,2,20,2,1,0,24042,50,7,0,0,0,0,0,0,0,0,'buddy - movementType 2 path1');
UPDATE quest_template SET  CompleteScript = 11234 WHERE entry = 11234;

-- Generic Trigger LAB - OLD 24042
-- summoned
DELETE FROM creature WHERE guid=117998;
DELETE FROM creature_addon WHERE guid=117998;
DELETE FROM creature_movement WHERE id=117998;
DELETE FROM game_event_creature WHERE guid=117998;
DELETE FROM game_event_creature_data WHERE guid=117998;
DELETE FROM creature_battleground WHERE guid=117998;
DELETE FROM creature_linking WHERE guid=117998 
OR master_guid=117998;
-- Updates
DELETE FROM creature_movement_template WHERE entry = 24042;
INSERT INTO creature_movement_template (entry,pathID,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(24042,1,1,1858.167,-6138.13,23.42487,360000,2404201,5.427974);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2404201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2404201,0,10,24041,125000,0,0,0,0x08,0,0,0,0,1872.382,-6089.081,16.23354,4.480728,'summon: Prince Keleseth <The San\'layn>'),
(2404201,0,10,24044,120000,0,0,0,0x08,0,0,21989,0,1874.466,-6086.84,16.18892,4.978242,'summon: Winterskorn Guard'),
(2404201,0,10,24044,120000,1,0,0,0x08,0,0,21991,0,1869.646,-6086.073,15.54029,5.700193,'summon: Winterskorn Guard'),
(2404201,0,10,24044,120000,2,0,0,0x08,0,0,21992,0,1874.853,-6082.172,15.52153,4.346655,'summon: Winterskorn Guard'),
(2404201,0,10,24044,120000,3,0,0,0x08,0,0,21990,0,1869.973,-6082.041,15.13161,4.545804,'summon: Winterskorn Guard'),
(2404201,1,21,1,0,0,23780,117743,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active'),
(2404201,6,10,23883,120000,0,0,0,0x08,0,0,0,0,1860.395,-6158.918,23.70322,1.48353,'summon: Forsaken Crossbowman'),
(2404201,6,10,23883,120000,0,0,0,0x08,0,0,0,0,1861.823,-6159.1,23.71347,1.518436,'summon: Forsaken Crossbowman'),
(2404201,6,10,23883,120000,0,0,0,0x08,0,0,0,0,1863.592,-6159.383,23.73547,1.570796,'summon: Forsaken Crossbowman'),
(2404201,6,10,23883,120000,0,0,0,0x08,0,0,0,0,1865.439,-6159.756,23.76573,1.58825,'summon: Forsaken Crossbowman'),
(2404201,7,0,0,0,0,23780,117743,7 | 0x10,2000001728,0,0,0,0,0,0,0,''),
(2404201,7,10,23883,120000,0,0,0,0x08,0,0,0,0,1867.87,-6161.885,23.78007,1.64061,'summon: Forsaken Crossbowman'),
(2404201,7,10,23883,120000,0,0,0,0x08,0,0,0,0,1865.965,-6161.611,23.77313,1.605703,'summon: Forsaken Crossbowman'),
(2404201,8,10,23883,120000,0,0,0,0x08,0,0,0,0,1867.106,-6160.068,23.77399,1.64061,'summon: Forsaken Crossbowman'),
(2404201,8,10,23883,120000,0,0,0,0x08,0,0,0,0,1860.735,-6160.702,23.73123,1.500983,'summon: Forsaken Crossbowman'),
(2404201,8,10,23883,120000,0,0,0,0x08,0,0,0,0,1862.237,-6161.036,23.74415,1.53589,'summon: Forsaken Crossbowman'),
(2404201,8,10,23883,120000,0,0,0,0x08,0,0,0,0,1864.234,-6161.245,23.76622,1.570796,'summon: Forsaken Crossbowman'),
(2404201,15,0,0,0,0,23780,117743,7 | 0x10,2000001729,0,0,0,0,0,0,0,'');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001728 AND 2000001739;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001728,'Archers at the ready!  Hold your fire!',0,1,0,0,NULL),
(2000001729,'What fool dares to enter her majesty\'s dominion unannounced?',0,1,0,0,NULL),
(2000001730,'Ah, but it is you who intrudes on our master\'s territory.  He could wipe you out in an instant for that transgression alone!  Arthas does not have much love or patience for his escaped slaves.',0,0,0,0,NULL),
(2000001731,'But... he has learned of your victory over Stormwind\'s North Fleet and thinks you have potential.  Potential to see reason and abandon Sylvanas\' childish rebellion.',0,0,0,1,NULL),
(2000001732,'Arthas is prepared to offer you power beyond your imagination.  The puny army you lead here would pale in comparison to the phalanxes at your command if you returned to the Scourge\'s embrace.',0,0,0,0,NULL),
(2000001733,'Behold the Vrykul!   A race that has perfected war and destruction to the point of an art form.  Already they\'ve cast their lot with the Lich King!  Their dwellings surround you and their numbers are easily five times yours.',0,0,0,0,NULL),
(2000001734,'The choice is yours, Anselm.  Return to the Lich King\'s army and fight alongside them or remain loyal to your so-called queen and suffer their wrath as they drive you from their homelands!',0,0,0,0,NULL),
(2000001735,'Is that all you\'ve come to say?',0,0,0,0,NULL),
(2000001736,'Send these scumbags back to hell!  Fire at will!',0,1,0,0,NULL),
(2000001737,'Such a futile gesture.',0,0,0,0,NULL),
(2000001738,'Listen to your men\'s dying breaths as I drink in their souls!',0,0,0,0,NULL),
(2000001739,'This will not be the last you hear of me.  I will return to spit on your corpse after Utgarde\'s armies have descended upon you!',0,0,0,25,NULL);

-- Prince Keleseth <The San'layn> 24041
UPDATE creature_template SET UnitFlags = 768, MovementType = 2 WHERE entry = 24041;
DELETE FROM creature_movement_template WHERE entry = 24041;
INSERT INTO creature_movement_template (entry,pathID,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- path0
(24041,0,1,1868.876,-6103.927,18.09756,0,0,100),
(24041,0,2,1867.455,-6115.438,20.25003,0,0,100),
(24041,0,3,1865.922,-6123.009,22.36716,0,0,100),
(24041,0,4,1864.463,-6135.706,23.22949,300000,2404101,100),
-- path1
(24041,1,1,1863.295,-6133.734,23.33423,0,0,100),
(24041,1,2,1862.99,-6136.032,23.33423,300000,2404102,100);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2404101,2404102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2404101,6,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2404101,7,0,0,0,0,0,0,0,2000001730,0,0,0,0,0,0,0,''),
(2404101,16,0,0,0,0,0,0,0,2000001731,0,0,0,0,0,0,0,''),
(2404101,26,0,0,0,0,0,0,0,2000001732,0,0,0,0,0,0,0,''),
(2404101,37,0,0,0,0,0,0,0,2000001733,0,0,0,0,0,0,0,''),
(2404101,50,0,0,0,0,0,0,0,2000001734,0,0,0,0,0,0,0,''),
(2404101,60,0,0,0,0,23780,117743,7 | 0x10,2000001735,0,0,0,0,0,0,0,''),
(2404101,70,0,0,0,0,23780,117743,7 | 0x10,2000001736,0,0,0,0,0,0,0,''),
(2404101,70,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'send event A'),
(2404101,72,0,0,0,0,0,0,0,2000001737,0,0,0,0,0,0,0,''),
(2404101,72,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2404101,73,15,43066,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2404101,75,15,42982,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2404101,76,3,0,0,0,0,0,0x08,0,0,0,0,1869.094,-6129.338,23.38788,2.775074,'teleport self'),
(2404101,79,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'path1'),
(2404102,1,0,0,0,0,0,0,0,2000001738,0,0,0,0,0,0,0,''),
(2404102,2,15,43056,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2404102,9,0,0,0,0,0,0,0,2000001739,0,0,0,0,0,0,0,''),
(2404102,19,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Winterskorn Guard 24044
UPDATE creature_template SET FactionAlliance = 1885, FactionHorde = 1885, UnitFlags = 33024, MovementType = 2 WHERE entry = 24044;
DELETE FROM creature_movement_template WHERE entry = 24044;
INSERT INTO creature_movement_template (entry,pathID,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(24044,0,1,1869.839,-6136.289,23.44875,2000,3,100),
(24044,1,1,1868.379,-6132.597,23.45205,2000,3,100),
(24044,2,1,1865.034,-6130.739,23.2197,2000,3,100),
(24044,3,1,1861.354,-6131.79,23.3447,2000,3,100);
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 1807;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(1807, 6327, 0, 0);
DELETE FROM dbscript_random_templates WHERE id = 20051;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20051,1,20081,0,'24044 - Random Scripts'),
(20051,1,20082,0,'24044 - Random Scripts'),
(20051,1,20083,0,'24044 - Random Scripts'),
(20051,1,20084,0,'24044 - Random Scripts');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20081 AND 20084;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20081,0,42,0,0,0,0,0,0,6327,0,0,0,0,0,0,0,'24044 - Random Scripts'),
(20082,0,42,0,0,0,0,0,0,33276,0,0,0,0,0,0,0,'24044 - Random Scripts'),
(20083,0,42,0,0,0,0,0,0,5287,0,0,0,0,0,0,0,'24044 - Random Scripts'),
(20084,0,42,0,0,0,0,0,0,1983,0,0,0,0,0,0,0,'24044 - Random Scripts');
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 1807;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(1807, 6327, 0, 0);

-- Forsaken Crossbowman 23883
DELETE FROM creature_template_addon WHERE entry = 23883;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(23883,0,0,2,0,0,0,NULL);

-- set correct target for: 
-- s.ID - 42905 Time-Warped Shoot
-- s.ID - 42982 Vampire Prince Teleport
-- s.ID - 43056 Vampire Soul Retrieve Channel
-- s.ID - 43066 Cone of Cold
DELETE FROM spell_script_target WHERE entry IN (42905,42982,43056,43066);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(42905,1,24044,0),
(42982,1,24041,0),
(43056,1,23883,0),
(43066,1,23883,0);
