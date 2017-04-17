-- q.11289 'Guided by Honor'
DELETE FROM dbscripts_on_quest_end WHERE id = 11289;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11289,0,31,24232,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 24232'), -- script shouldnt start again if one is in progress already
(11289,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(11289,1,21,1,0,0,24233,111855,7 | 0x10,0,0,0,0,0,0,0,0,'Cleric active'),
(11289,1,29,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'npcflag removed'),
(11289,1,1,0,0,0,24233,111855,7 | 0x10,0,0,0,0,0,0,0,0,''),
(11289,3,0,0,0,0,24233,111855,7 | 0x10,2000001147,0,0,0,0,0,0,0,''),
(11289,6,3,0,0,0,24233,111855,7 | 0x10,0,0,0,0,600.9436,-5007.845,3.653939,255,''),
(11289,13,0,0,0,0,24233,111855,7 | 0x10,2000001148,0,0,0,0,0,0,0,''),
(11289,13,44,24232,0,0,24233,111855,7 | 0x10,0,0,0,0,0,0,0,0,''),
(11289,13,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.45184,''),
(11289,14,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'npcflag added'),
(11289,14,0,0,0,0,0,0,0,2000001149,0,0,0,0,0,0,0,''),
(11289,17,0,0,0,0,24232,50,7,2000001150,0,0,0,0,0,0,0,''),
(11289,21,1,274,0,0,24232,50,7,0,0,0,0,0,0,0,0,''),
(11289,27,0,0,0,0,24232,50,7,2000001151,0,0,0,0,0,0,0,''),
(11289,33,0,0,0,0,0,0,0,2000001152,0,0,0,0,0,0,0,''),
(11289,37,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11289,42,1,274,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11289,45,0,0,0,0,24232,50,7,2000001153,0,0,0,0,0,0,0,''),
(11289,48,0,0,0,0,24232,50,7,2000001154,0,0,0,0,0,0,0,''),
(11289,51,1,1,0,0,24232,50,7,0,0,0,0,0,0,0,0,''),
(11289,56,0,0,0,0,24232,50,7,2000001155,0,0,0,0,0,0,0,''),
(11289,59,1,1,0,0,24232,50,7,0,0,0,0,0,0,0,0,''),
(11289,62,0,0,0,0,24232,50,7,2000001156,0,0,0,0,0,0,0,''),
(11289,62,42,0,0,0,24232,50,7,13262,0,0,0,0,0,0,0,''),
(11289,64,3,0,0,0,24232,50,7,0,0,0,0,0,0,0,6.230825,''),
(11289,65,3,0,0,0,0,0,0,0,0,0,0,0,0,0,6.19592,''),
(11289,67,0,0,0,0,24232,50,7,2000001157,0,0,0,0,0,0,0,''),
(11289,71,1,397,0,0,24232,50,7,0,0,0,0,0,0,0,0,''),
(11289,130,42,1,0,0,24232,50,7,0,0,0,0,0,0,0,0,''),
(11289,131,44,24233,0,0,24232,50,7,0,0,0,0,0,0,0,0,''),
(11289,132,3,0,0,0,24233,50,7,0,0,0,0,601.464,-5003.82,3.90394,1.76278,''),
(11289,135,1,69,0,0,24233,50,7,0,0,0,0,0,0,0,0,''),
(11289,137,21,0,0,0,24233,50,7,0,0,0,0,0,0,0,0,'Cleric unactive'),
(11289,137,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET  CompleteScript = 11289 WHERE entry = 11289;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001147 AND 2000001157;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001147,'That will be enough, Irulon.',0,0,0,0,NULL),
(2000001148,'%s removes his disguise',0,2,0,0,NULL),
(2000001149,'Lord Fordring, you mustn\'t reveal yourself!',0,0,0,5,NULL),
(2000001150,'The boy\'s death and, in fact, the deaths of all of the knights involved in the redemption of the blade could have been avoided.',0,0,0,1,NULL),
(2000001151,'Their passing weighs heavily upon my soul.',0,0,0,1,NULL),
(2000001152,'The path of freedom has always been beset with tragedy, sire. We could not risk losing you. The Crusade could not have survived such a blow.',0,0,0,1,NULL),
(2000001153,'%s grimaces.',0,2,0,0,NULL),
(2000001154,'It should have been me that carried the blade to Northrend. The burden was mine to bear.',0,0,0,1,NULL),
(2000001155,'But you are right, Irulon. The price of our freedom will undoubtedly cost thousands more of their lives.',0,0,0,1,NULL),
(2000001156,'%s picks up the Ashbringer.',0,2,0,0,NULL),
(2000001157,'Do you hear me, Arthas? The Argent Crusade comes for you! Your kingdom shall crumble beneath the weight of justice! By the Light!',0,1,0,22,NULL);

-- Highlord Tirion Fordring
-- He should pick up sword only with quest_end_script.
UPDATE creature_template SET equipmentTemplateid = 0 WHERE entry = 24232;
