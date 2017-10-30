-- ----------------------------------------
-- Warmaul Chef Bufferlo (Entry: 18440)
-- ----------------------------------------
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(8/7) WHERE entry=18440;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 10045 AND 10047;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10045,0,31,18445,10,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Terminate Script if Corki not found',0,0,0,0),
(10045,1,1,35,0,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - OneShotAttackUnarmed',0,0,0,0),
(10045,3,0,0,0,0,2000001434,0,0,0,0,0,0,'Warmaul Chef Bufferlo - And dis is da recipe for da bestest Broken chowder!',0,0,0,0),
(10045,8,0,0,0,0,2000001435,0,0,0,0,0,0,'Warmaul Chef Bufferlo - First you need da spices.',0,0,0,0),
(10045,12,0,0,0,0,2000001436,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Da salt goes into da pot...',0,0,0,0),
(10045,14,0,0,0,0,2000001437,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Den you put da pepper in da pot...',0,0,0,0),
(10045,16,1,35,0,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - OneShotAttackUnarmed',0,0,0,0),
(10045,18,0,0,0,0,2000001438,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Now we gonna kick it up a notch wit da secret ingra... ingor... inrag... da secret sauce!',0,0,0,0),
(10045,21,0,0,0,0,2000001439,0,0,0,0,0,0,'Warmaul Chef Bufferlo - And last, we put in da Corki!',0,0,0,0),
(10045,24,1,153,0,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - OneShotLaughNoSheathe',0,0,0,0),
(10046,0,31,18445,10,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Terminate Script if Corki not found',0,0,0,0),
(10046,1,1,36,0,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - OneShotAttack1H',0,0,0,0),
(10046,3,0,0,0,0,2000001440,0,0,0,0,0,0,'Warmaul Chef Bufferlo - BAM! Look at dat gristle sizzle!',0,0,0,0),
(10047,0,31,18445,10,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Terminate Script if Corki not found',0,0,0,0),
(10047,1,0,0,0,0,2000001441,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Your daddy pay Warmaul and maybe we no eat you.',0,0,0,0),
(10047,6,0,0,0,0,2000001442,0,0,0,0,0,0,'Warmaul Chef Bufferlo - Ha-ha! Just kidding. We eat you for shure anyway!',0,0,0,0),
(10047,9,1,1,0,0,0,0,0,0,0,0,0,'Warmaul Chef Bufferlo - OneShotTalk',0,0,0,0);

DELETE FROM dbscript_random_templates WHERE id=10032;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10032,1,10045,0,'Warmaul Chef Bufferlo - Random OOC Events'),
(10032,1,10046,0,'Warmaul Chef Bufferlo - Random OOC Events'),
(10032,1,10047,0,'Warmaul Chef Bufferlo - Random OOC Events');

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001434 AND 2000001442;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001434, 'And dis is da recipe for da bestest Broken chowder!', 0, 0, 0, 1, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001435, 'First you need da spices.', 0, 0, 0, 1, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001436, 'Da salt goes into da pot...', 0, 0, 0, 35, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001437, 'Den you put da pepper in da pot...', 0, 0, 0, 0, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001438, 'Now we gonna kick it up a notch wit da secret ingra... ingor... inrag... da secret sauce!', 0, 0, 0, 43, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001439, 'And last, we put in da Corki!', 0, 0, 0, 1, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001440, 'BAM! Look at dat gristle sizzle!', 0, 0, 0, 1, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001441, 'Your daddy pay Warmaul and maybe we no eat you.', 0, 0, 0, 1, 'Warmaul Chef Bufferlo (Entry: 18440)'),
(2000001442, 'Ha-ha! Just kidding. We eat you for shure anyway!', 0, 0, 0, 11, 'Warmaul Chef Bufferlo (Entry: 18440)');
