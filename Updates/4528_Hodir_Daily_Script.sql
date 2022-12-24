-- Add 'Spy Hunter' Hodir Daily Script
DELETE FROM gameobject WHERE guid = 514939;
INSERT INTO gameobject (`guid`, `id`, `map`, `spawnMask`, `phaseMask`,`position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(514939,193993,571,1,4,7161.85,-2229.08,759.174,1.01,0,0,0.881198,0.472748,180,180,255,1);
DELETE FROM creature WHERE id=30222;
UPDATE creature_template SET MinLevel=79,MaxLevel=80 WHERE entry=30219;
UPDATE creature_template SET SpeedRun=1 WHERE entry=30219;
UPDATE broadcast_text SET ChatTypeID=2 WHERE id BETWEEN 30909 AND 30915;
UPDATE broadcast_text SET EmoteID1=53,SoundEntriesID1=9036 WHERE id=30915;
-- targets corrected
DELETE FROM spell_script_target WHERE entry=61964;
INSERT INTO `spell_script_target` VALUES
(61964,1,32882,0),
(61964,1,32886,0),
(61964,1,32885,0),
(61964,1,32908,0),
(61964,1,32883,0),
(61964,1,32907,0);
