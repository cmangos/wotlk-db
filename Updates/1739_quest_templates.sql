-- q.11227 'Let Them Eat Crow'
-- q item must be removed after q. completed
-- ReqSourceCount3 - to many items collected shouldnt be left in players inventory
UPDATE quest_template SET ReqSourceCount2 = 1, ReqSourceCount3 = 100 WHERE entry = 11227;

-- q.11281 'Mimicking Nature's Call'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11281;

-- q.11314 'The Fallen Sisters'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11314;

-- q.11319 'Seeds of the Blacksouled Keepers'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11319;

-- q.11352 'The Rune of Command'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount3 = 1 WHERE entry = 11352;

-- q.11365 'March of the Giants'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount3 = 1 WHERE entry = 11365;

-- q.11366 'The Lodestone'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount3 = 1 WHERE entry = 11366;

-- q.11257 'Gruesome, But Necessary'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11257;

-- q.11258 'Burn Skorn, Burn!'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11258;

-- q.11259 'Towers of Certain Doom'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11259;

-- q.11282 'A Lesson in Fear'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry = 11282;

-- q.11285 'Baleheim Must Burn!'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry = 11285;

-- q.11301 'Brains! Brains! Brains!'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11301;

-- q.11399 'Bring Down Those Shields'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11399;

-- q.11279 'Green Eggs and Whelps'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11279;

-- q.11280 'Draconis Gastritis'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11280;

-- q.11307 'Field Test'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11307;

-- q.11310 'Warning: Some Assembly Required'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11310;

-- q.11458 'Avenge Iskaal'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11458;

-- q.11568 'A Return to Resting'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry = 11568;

-- q.11259 'Towers of Certain Doom'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11259;

-- q.12481 'Adding Injury to Insult'
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount3 = 1 WHERE entry = 12481;

-- q.11452/11453 'The Slumbering King' - -A -H
-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry IN (11452,11453);
