-- q.11485 'Iron Rune Constructs and You: Rocket Jumping'

-- only when quest is active
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 902401, condition_id = 1564 WHERE menu_id = 9024 AND id = 0;
DELETE FROM conditions WHERE condition_entry = 1564;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1564, 9, 11485, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 902401; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(902401,0,15,49985,0,0,0,0,2,0,0,0,0,0,0,0,0,'');
-- missing object added
DELETE FROM game_event_gameobject WHERE guid  = 120831;
DELETE FROM gameobject_battleground WHERE guid = 120831;
DELETE FROM gameobject WHERE guid = 120831;
INSERT INTO gameobject(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(120831,186952,571,1,1,479.076,-5941.57,308.747,1.29984,0,0,0.605121,0.796133,300,300,255,1);
-- Iron Rune Construct
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 642, MinMeleeDmg = 291, MaxMeleeDmg = 415 WHERE entry = 24806;
DELETE FROM creature_template_spells WHERE entry = 24806;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(24806,44498,0,0,0);
DELETE FROM spell_script_target WHERE entry IN (44498,44499);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44498,0,186956,5), -- effect 1 only
(44499,0,186957,5); -- effect 1 only
DELETE FROM dbscripts_on_go_template_use WHERE id IN (186956,186957);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(186956,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object'),
(186957,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object');
-- Part of Iron Rune Construct 24806 EAI
DELETE FROM dbscripts_on_relay WHERE id = 20091;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20091,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly'),
(20091,0,0,0,0,0,0,0,0,2000001758,0,0,0,0,0,0,0,''),
(20091,1,3,0,1800,0,0,0,0,0,0,0,0,479.1461,-5941.515,339.7554,100,'Part of Iron Rune Construct 24806'),
(20091,2,3,0,1800,0,0,0,0,0,0,0,0,496.1333,-5940.065,344.5331,100,'Part of Iron Rune Construct 24806'),
(20091,3,3,0,1800,0,0,0,0,0,0,0,0,511.516,-5936.729,339.7554,100,'Part of Iron Rune Construct 24806'),
(20091,4,3,0,1800,0,0,0,0,0,0,0,0,514.5781,-5936.898,314.1444,100,'Part of Iron Rune Construct 24806'),
(20091,6,15,44499,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20091,6,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Event that happens only if quest is accepted
DELETE FROM dbscripts_on_event WHERE id = 16341;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
/* We dont want any other player to disturb this event - that why send event is used*/
(16341,0,35,5,20,0,24807,20,7,0,0,0,0,0,0,0,0,'Walt - Send EVENT');
DELETE FROM creature_movement_template WHERE entry = 24807;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(24807,1,475.726,-5935.29,308.804,55000,2480701,3.735);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2480701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2480701,0,21,1,0,0,24717,100,7,0,0,0,0,0,0,0,0,'Stanwad - active'),
(2480701,0,21,1,0,0,24720,100,7,0,0,0,0,0,0,0,0,'Needlemeyer - active'),
(2480701,0,21,1,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Lebronski - active'),
(2480701,0,21,1,0,0,24719,100,7,0,0,0,0,0,0,0,0,'Gwendolyn - active'),
(2480701,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Walt - active'),
(2480701,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.807769,'Walt'),
(2480701,2,0,0,0,0,0,0,0,2000001759,0,0,0,0,0,0,0,'Walt'),
(2480701,3,28,0,0,0,24717,100,7,0,0,0,0,0,0,0,0,'Stanwad - STAND_STATE'),
(2480701,3,28,0,0,0,24720,100,7,0,0,0,0,0,0,0,0,'Needlemeyer - STAND_STATE'),
(2480701,3,20,0,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Lebronski - idle'),
(2480701,3,20,0,0,0,24719,100,7,0,0,0,0,0,0,0,0,'Gwendolyn - idle'),
(2480701,4,3,0,700,0,24717,100,7,0,0,0,0,478.5301,-5932.788,308.7202,4.286737,'Stanwad - move'),
(2480701,4,3,0,700,0,24720,100,7,0,0,0,0,479.78,-5925.5,308.721,3.98059,'Needlemeyer - move'),
(2480701,4,3,0,700,0,24718,100,7,0,0,0,0,489.749,-5923.61,308.656,4.1133,'Lebronski - move'),
(2480701,4,3,0,700,0,24719,100,7,0,0,0,0,474.2464,-5930.146,308.7548,4.992265,'Gwendolyn - move'),
(2480701,5,3,0,700,0,24720,100,7,0,0,0,0,476.659,-5929.89,308.721,4.50008,'Needlemeyer - move'),
(2480701,5,3,0,700,0,24718,100,7,0,0,0,0,485.8252,-5930.573,309.0128,100,'Lebronski - move'),
(2480701,6,3,0,700,0,24718,100,7,0,0,0,0,481.1437,-5933.588,308.7708,3.45762,'Lebronski - move'),
(2480701,8,0,0,0,0,24717,100,7,2000001760,0,0,0,0,0,0,0,'Stanwad - text'),
(2480701,11,0,0,0,0,24717,100,7,2000001761,0,0,0,0,0,0,0,'Stanwad - text'),
(2480701,11,1,11,0,0,24717,100,7,0,0,0,0,0,0,0,0,'Stanwad - emote'),
(2480701,11,1,392,0,0,24720,100,7,0,0,0,0,0,0,0,0,'Needlemeyer - emote'),
(2480701,11,1,392,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Lebronski - emote'),
(2480701,11,1,392,0,0,24719,100,7,0,0,0,0,0,0,0,0,'Gwendolyn - emote'),
(2480701,14,1,11,0,0,24717,100,7,0,0,0,0,0,0,0,0,'Stanwad - emote'),
(2480701,16,3,0,700,0,24717,100,7,0,0,0,0,0,0,0,3.871264,'Stanwad - move'),
(2480701,17,0,0,0,0,24717,100,7,2000001762,0,0,0,0,0,0,0,'Stanwad - text'),
(2480701,19,1,1,0,0,24717,100,7,0,0,0,0,0,0,0,0,'Stanwad - emote'),
(2480701,23,0,0,0,0,24719,100,7,2000001763,0,0,0,0,0,0,0,'Gwendolyn - text'),
(2480701,26,0,0,0,0,24720,100,7,2000001764,0,0,0,0,0,0,0,'Needlemeyer - text'),
(2480701,28,1,0,0,0,24720,100,7,0,0,0,0,0,0,0,0,'Needlemeyer - emote'),
(2480701,28,1,0,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Lebronski - emote'),
(2480701,28,1,0,0,0,24719,100,7,0,0,0,0,0,0,0,0,'Gwendolyn - emote'),
(2480701,30,0,0,0,0,24718,100,7,2000001765,0,0,0,0,0,0,0,'Lebronski - text'),
(2480701,34,0,0,0,0,0,0,0,2000001766,0,0,0,0,0,0,0,'Walt - text'),
(2480701,38,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Walt - emote'),
(2480701,42,3,0,0,0,24720,100,7,0,0,0,0,479.78,-5925.5,308.721,100,'Needlemeyer - move'),
(2480701,44,3,0,0,0,24720,100,7,0,0,0,0,482.058,-5925.68,308.721,100,'Needlemeyer - move'),
(2480701,45,3,0,0,0,24720,100,7 | 0x08,0,0,0,0,483.309,-5926.559,308.6645,3.47321,'Needlemeyer - move'),
(2480701,45,28,5,0,0,24720,100,7,0,0,0,0,0,0,0,0,'Needlemeyer - STAND_SIT'),
(2480701,44,3,0,0,0,24719,100,7,0,0,0,0,467.963,-5923.52,309.837,3.84355,'Gwendolyn - move'),
(2480701,50,20,2,0,0,24719,100,7,0,0,0,0,0,0,0,0,'Gwendolyn - wps'),
(2480701,46,3,0,0,0,24718,100,7,0,0,0,0,485.8252,-5930.573,309.0128,100,'Lebronski - move'),
(2480701,48,3,0,0,0,24718,100,7,0,0,0,0,489.749,-5923.61,308.656,100,'Lebronski - move'),
(2480701,50,20,2,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Lebronski - wps'),
(2480701,48,3,0,0,0,24717,100,7,0,0,0,0,481.899,-5930.41,308.721,1.13352,'Stanwad - move'),
(2480701,50,3,0,0,0,24717,100,7 | 0x08,0,0,0,0,479.6632,-5929.458,308.6646,1.117009,'Stanwad - move'),
(2480701,50,28,5,0,0,24717,100,7,0,0,0,0,0,0,0,0,'Stanwad - STAND_SIT'),
(2480701,53,21,0,0,0,24717,100,7,0,0,0,0,0,0,0,0,'Stanwad - unactive'),
(2480701,53,21,0,0,0,24720,100,7,0,0,0,0,0,0,0,0,'Needlemeyer - unactive'),
(2480701,53,21,0,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Lebronski - unactive'),
(2480701,53,21,0,0,0,24719,100,7,0,0,0,0,0,0,0,0,'Gwendolyn - unactive'),
(2480701,54,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3.735,'Walt'),
(2480701,54,20,0,0,0,0,0,0,0,0,0,0,0,0,0,3.735,'Walt - idle'),
(2480701,54,35,6,2,0,0,0,0,0,0,0,0,0,0,0,0,'Walt - Send EVENT'),
(2480701,55,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Walt - unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001758 AND 2000001766;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001758,'Launching.',0,0,0,0,NULL),
(2000001759,'Behold my perfect creation!',0,0,0,5,NULL),
(2000001760,'WHOA, WHOA, WHOA! Hold everything, fellas!',0,0,0,5,NULL),
(2000001761,'The dwarves all burst out in laughter.',0,2,0,0,NULL),
(2000001762,'Oh dear lords of stone and steel, what... I repeat... WHAT are ya gonna do with that?',0,0,0,5,NULL),
(2000001763,'I\'m cryin\' here! Please, make the funny stop!',0,0,0,5,NULL),
(2000001764,'If only our pappy were alive to see this!',0,0,0,5,NULL),
(2000001765,'Man, that will never work. The iron dwarves are never gonna fall for that hunk o\' junk!',0,0,0,1,NULL),
(2000001766,'You\'re out of your element, Lebronski! Uncalled for! Those iron dwarves won\'t know what hit \'em! Now why don\'t you get back to uncovering the mystery of the gigantic turd on your rug and leave the real scientists to their work!',0,0,0,1,NULL);
