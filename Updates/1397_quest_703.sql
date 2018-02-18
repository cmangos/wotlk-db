-- add quest end rp
UPDATE `quest_template` SET `CompleteScript`='703' WHERE `entry`=703;

-- Change string id
DELETE FROM `dbscript_string` WHERE `entry`=2000001548;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000001548, '%s cooks up a batch of spicy hot buzzard wings for $N.', 0, 2, 0, 0, 'Rigglefuzz - emote on Quest Complete');

-- add script and correct ID according to above
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=703;
INSERT INTO `dbscripts_on_quest_end` (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments)) VALUES
(703, 0, 0, 0, 0, 0, 0, 0, 0, 2000001548, 0, 0, 0, 0, 0, 0, 0, 'Rigglefuzz - emote on Quest Complete');
