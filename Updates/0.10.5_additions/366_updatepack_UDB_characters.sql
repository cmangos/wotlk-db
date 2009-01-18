-- Apply this file as you wish. It will update existing charater's spell to add new default ones and remove old default ones no more available.
UPDATE IGNORE `character_spell` SET `spell`=58985 WHERE `spell`=20600; -- Perception
DELETE FROM `character_spell` WHERE `spell`=20600; 
UPDATE IGNORE `character_spell` SET `spell`=20154 WHERE `spell`=21084; -- Seal of Righteousness
DELETE FROM `character_spell` WHERE `spell`=21084;
UPDATE IGNORE `character_spell` SET `spell`=59221 WHERE `spell`=20579; -- Shadow Resistance
DELETE FROM `character_spell` WHERE `spell`=20579;
UPDATE IGNORE `character_spell` SET `spell`=58984 WHERE `spell`=20580; -- Shadowmeld 
DELETE FROM `character_spell` WHERE `spell`=20580;
DELETE FROM `character_spell` WHERE `spell`=21009; -- Shadowmeld Passive
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,1843,1,0 FROM `characters`; -- Disarm
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,45927,1,0 FROM `characters`; -- Summon Friend
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,61437,1,0 FROM `characters`; -- Opening
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,59752,1,0 FROM `characters` WHERE `race`=1; -- Every Man for Himself
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,58985,1,0 FROM `characters` WHERE `race`=1; -- Perception
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,59224,1,0 FROM `characters` WHERE `race`=3; -- Mace Specialization
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,58984,1,0 FROM `characters` WHERE `race`=4; -- Shadowmelt
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,58943,1,0 FROM `characters` WHERE `race`=8; -- Da Voodoo Shuffle
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,59221,1,0 FROM `characters` WHERE `race`=11; -- Shadow Resistance
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,20154,1,0 FROM `characters` WHERE `class`=2; -- Seal of Righteousness
INSERT IGNORE INTO `character_spell` (`guid`,`spell`,`active`,`disabled`) SELECT `guid`,58284,1,0 FROM `characters` WHERE `class`=9; -- Chaos Bolt Passive
-- This cleanup character_action. This is like delete from character_action where type=0 and action not in character_spell for same player
DELETE FROM ca,cs USING `character_action` ca LEFT JOIN `character_spell` cs ON ca.`guid`=cs.`guid` AND ca.`action`=cs.`spell` WHERE ca.`type`=0 AND cs.`guid` IS NULL;
