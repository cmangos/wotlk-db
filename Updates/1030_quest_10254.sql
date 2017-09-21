-- q.10254 'Force Commander Danath'
DELETE FROM dbscripts_on_quest_end WHERE id = 10254;
INSERT INTO dbscripts_on_quest_end (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(10254,0,15,6245,0,0,0,0,0,0,0,0,2,'Force Commander Danath Trollbane - Cast Force Target - Salute',0,0,0,0),
(10254,0,0,0,0,0,2000001338,0,0,0,0,0,0,'Force Commander Danath Trollbane - Welcome to Honor Hold, $n.  It\'s good to have you.',0,0,0,0);
UPDATE quest_template SET CompleteScript = 10254 WHERE entry = 10254;
DELETE FROM dbscript_string WHERE entry = 2000001338;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001338, 'Welcome to Honor Hold, $n.  It\'s good to have you.', 0, 0, 0, 0, 'Force Commander Danath Trollbane (Entry: 16819)');

DELETE FROM conditions WHERE condition_entry BETWEEN 1230 AND 1235;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1230, 9, 10254, 0), -- Quest 10254 Accepted
-- (84, 8, 10254, 0), -- Quest 10254 Rewarded (already in DB)
(1231, 8, 10160, 0), -- Quest 10160 Rewarded
(1232, -3, 1231, 0), -- Quest 10160 NOT Rewarded
(1233, -1, 84, 1232), -- Quest 10254 Rewarded AND Quest 10160 NOT Rewarded
(1234, 8, 10141, 0), -- Quest 10141 Rewarded
(1235, -1, 84, 1234); -- Quest 10254 AND 10141 Rewarded

UPDATE gossip_menu SET condition_id = 1230 WHERE entry = 7352 AND text_id = 9938; -- Quest 10254 Accepted
UPDATE gossip_menu SET condition_id = 84 WHERE entry = 7352 AND text_id = 9939; -- Quest 10254 Rewarded

UPDATE gossip_menu_option SET condition_id = 84 WHERE menu_id = 7352 AND id = 0; -- Quest 10254 Rewarded
UPDATE gossip_menu_option SET condition_id = 1233, action_menu_id = 8049 WHERE menu_id = 7352 AND id = 1; -- Quest 10254 Rewarded AND Quest 10160 NOT Rewarded
UPDATE gossip_menu_option SET condition_id = 1235 WHERE menu_id = 7352 AND id = 2; -- Quest 10254 AND 10141 Rewarded
