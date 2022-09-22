-- q.12588 'Troll Patrol: Can You Dig It?'

-- Ancient Dirt KC Bunny 28330 
UPDATE creature SET spawntimesecsmin = 240, spawntimesecsmax = 240 WHERE id = 28330;
DELETE FROM dbscripts_on_spell WHERE `id` = 51333;
-- Part of Ancient Dirt KC Bunny 28330 EAI:
DELETE FROM dbscripts_on_relay WHERE `id` In (20660,20661);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20660,1,9,0,0,0,190550,10,7,0,0,0,0,0,0,0,0,'Part of Ancient Dirt KC Bunny 28330: respawn object'),
(20661,1,15,51345,0,0,0,0,0x04,51357,51370,0,0,0,0,0,0,'Part of Ancient Dirt KC Bunny 28330: cast Random spell'),
(20661,100,40,0,0,0,190550,10,7,0,0,0,0,0,0,0,0,'Part of Ancient Dirt KC Bunny 28330: depawn object'),
(20661,500,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ancient Dirt KC Bunny 28330: depawn delf');
-- Source TC
-- Ancient Drakkari Chest 190552
DELETE FROM `gameobject_template` WHERE `entry`=190552;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`,`ScriptName`) VALUES 
(190552, 3, 2450, 'Ancient Drakkari Chest', '', '', '', 94, 0, 1, 1691, 27240, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,'');
DELETE FROM `gameobject_loot_template` WHERE `Entry`=27240;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `ChanceOrQuestChance`, `GroupId`, `MinCountOrRef`, `MaxCount`, `Comments`) VALUES 
(27240, 46369, 52, 1, 1, 1, NULL),
(27240, 46368, 47, 1, 1, 1, NULL),
(27240, 43851, 15, 2, 1, 1, NULL),
(27240, 43852, 14, 2, 1, 1, NULL),
(27240, 33470, 14, 3, 1, 4, NULL);
-- Ancient Dirt Mound 190550
-- missing added
DELETE FROM `gameobject` WHERE `guid` = 520966;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 520979 AND 520992;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(520966,190550,571,1,4833.413,-3086.445,290.5907,2.007128,0,0,0.8433914,0.5372996,300,300,100,1),
(520979,190550,571,1,4837.822,-2961.738,290.6022,2.565632,0,0,0.9588194,0.2840165,300,300,100,1),
(520980,190550,571,1,4904.143,-2988.849,289.7597,-2.879789,0,0,-0.9914446,0.1305283,300,300,100,1),
(520981,190550,571,1,4774.502,-3146.541,293.9273,-2.495818,0,0,-0.9483232,0.3173059,300,300,100,1),
(520982,190550,571,1,4971.439,-2966.859,290.2518,-1.762782,0,0,-0.7716246,0.6360782,300,300,100,1),
(520983,190550,571,1,4834.069,-3024.146,290.8399,-0.523598,0,0,-0.2588186,0.9659259,300,300,100,1),
(520984,190550,571,1,4847.445,-2933.018,290.703,2.914690,0,0,0.9935713,0.1132084,300,300,100,1),
(520985,190550,571,1,4889.123,-2826.122,291.1009,-2.670347,0,0,-0.9723692,0.2334484,300,300,100,1),
(520986,190550,571,1,4928.226,-2954.833,289.3405,2.129301,0,0,0.8746195,0.4848101,300,300,100,1),
(520987,190550,571,1,4935.69,-2910.847,289.8739,0.4712385,0,0,0.2334452,0.97237,300,300,100,1),
(520988,190550,571,1,4865.62,-2879.63,291.125,2.56753,0,0,0.959089,0.283104,300,300,100,1),
(520989,190550,571,1,4899.92,-2870.17,290.484,5.30857,0,0,0.468247,-0.883597,300,300,100,1),
(520990,190550,571,1,4933.91,-2988.99,290.105,0.479894,0,0,0.237651,0.971351,300,300,100,1),
(520991,190550,571,1,4959.36,-2882.25,290.097,3.13847,0,0,0.999999,0.00156243,300,300,100,1),
(520992,190550,571,1,4948.89,-2845.02,289.801,1.819,0,0,0.789196,0.614141,300,300,100,1);
