-- Q relations

-- q.13302 'Slaves to Saronite' - H
-- req. q.13224 finished first.
UPDATE quest_template SET RequiredCondition = 20647 WHERE entry IN (13302);
DELETE FROM conditions WHERE condition_entry = 20647;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20647,8,13224,0,0,0,0,'');
-- q.13300 'Slaves to Saronite' - A
-- req. q.13225 finished first.
UPDATE quest_template SET RequiredCondition = 20648 WHERE entry IN (13300);
DELETE FROM conditions WHERE condition_entry = 20648;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20648,8,13225,0,0,0,0,'');

-- q.13258 'Opportunity' - H
-- Opens after q.13224 & q.12899 - rewarded
UPDATE quest_template SET RequiredCondition = 20650 WHERE entry IN (13258);
DELETE FROM conditions WHERE condition_entry BETWEEN 20649 AND 20650;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20649,8,12899,0,0,0,0,''),
(20650,-1,20649,20647,0,0,0,'');
-- q.13386 'Exploiting an Opening' - A
-- Opens after q.13225 & q.12898 - rewarded
UPDATE quest_template SET RequiredCondition = 20651 WHERE entry IN (13386);
DELETE FROM conditions WHERE condition_entry IN (20506,20651);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20506,8,12898,0,0,0,0,''),
(20651,-1,20648,20506,0,0,0,'');

-- q.13264 'That's Abominable!' - H
-- req. q.13237 finished first.
UPDATE quest_template SET RequiredCondition = 20652 WHERE entry IN (13264);
DELETE FROM conditions WHERE condition_entry = 20652;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20652,8,13237,0,0,0,0,'');
-- q.13276 'That's Abominable!' - H -- Daily
-- req. q.13237 finished first.
UPDATE quest_template SET RequiredCondition = 20653 WHERE entry IN (13276);
DELETE FROM conditions WHERE condition_entry = 20653;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20653,8,13264,0,0,0,0,'');
-- q.13288 'That's Abominable!' - A
-- req. q.13287 finished first.
UPDATE quest_template SET RequiredCondition = 20654 WHERE entry IN (13288);
DELETE FROM conditions WHERE condition_entry = 20654;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20654,8,13287,0,0,0,0,'');
-- q.13289 'That's Abominable!' - A -- Daily
-- req. q.13288 finished first.
UPDATE quest_template SET RequiredCondition = 20655 WHERE entry IN (13289);
DELETE FROM conditions WHERE condition_entry = 20655;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20655,8,13288,0,0,0,0,'');

-- q.13277 'Against the Giants' - H
-- req. q.13237 finished first.
UPDATE quest_template SET RequiredCondition = 20652 WHERE entry IN (13277);
-- q.13294 'Against the Giants' - A
-- req. q.13287 finished first.
UPDATE quest_template SET RequiredCondition = 20654 WHERE entry IN (13294);

-- q.13278 'Coprous the Defiled' - H
-- req. q.13277 finished first.
UPDATE quest_template SET RequiredCondition = 20656 WHERE entry IN (13278);
DELETE FROM conditions WHERE condition_entry = 20656;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20656,8,13277,0,0,0,0,'');
-- q.13298 'Coprous the Defiled' - A
-- req. q.13277 finished first.
UPDATE quest_template SET RequiredCondition = 20657 WHERE entry IN (13298);
DELETE FROM conditions WHERE condition_entry = 20657;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20657,8,13294,0,0,0,0,'');

-- q.13281 'Neutralizing the Plague' - H
-- req. q.13279 finished first.
UPDATE quest_template SET RequiredCondition = 20658 WHERE entry IN (13281);
DELETE FROM conditions WHERE condition_entry = 20658;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20658,8,13279,0,0,0,0,'');
-- q.13297 'Neutralizing the Plague' - A
-- req. q.13295 finished first.
UPDATE quest_template SET RequiredCondition = 20659 WHERE entry IN (13297);
DELETE FROM conditions WHERE condition_entry = 20659;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20659,8,13295,0,0,0,0,'');

-- q.13306 'Raise the Barricades' - H
-- req. q.13366 finished first.
UPDATE quest_template SET RequiredCondition = 20660 WHERE entry IN (13306);
DELETE FROM conditions WHERE condition_entry = 20660;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20660,8,13366,0,0,0,0,'');
-- q.13332 'Raise the Barricades' - A
-- req. q.13345 finished first.
UPDATE quest_template SET RequiredCondition = 20661 WHERE entry IN (13332);
DELETE FROM conditions WHERE condition_entry = 20661;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20661,8,13345,0,0,0,0,'');

-- q.13307 'Bloodspattered Banners' - H
-- req. q.13306 finished first.
UPDATE quest_template SET RequiredCondition = 20662 WHERE entry IN (13307);
DELETE FROM conditions WHERE condition_entry = 20662;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20662,8,13306,0,0,0,0,'');
-- q.13334 'Bloodspattered Banners' - A
-- req. q.13332 finished first.
UPDATE quest_template SET RequiredCondition = 20663 WHERE entry IN (13334);
DELETE FROM conditions WHERE condition_entry = 20663;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20663,8,13332,0,0,0,0,'');

-- q.13312 'The Ironwall Rampart' - H
-- Opens after completed q.13306 & q.13367
UPDATE quest_template SET RequiredCondition = 20665 WHERE entry IN (13312);
DELETE FROM conditions WHERE condition_entry BETWEEN 20664 AND 20665;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20664,8,13367,0,0,0,0,''),
(20665,-1,20664,20662,0,0,0,'');
-- q.13337 'The Ironwall Rampart' - A
-- Opens after completed q.13332 q.13346
UPDATE quest_template SET RequiredCondition = 20667 WHERE entry IN (13337);
DELETE FROM conditions WHERE condition_entry BETWEEN 20666 AND 20667;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20666,8,13346,0,0,0,0,''),
(20667,-1,20666,20663,0,0,0,'');

-- q.13316 'The Guardians of Corp'rethar' - H
-- req. q.13329 finished first.
UPDATE quest_template SET RequiredCondition = 20668 WHERE entry IN (13316);
DELETE FROM conditions WHERE condition_entry = 20668;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20668,8,13329,0,0,0,0,'');
-- q.13338 'The Guardians of Corp'rethar' - A
-- req. q.13335 finished first.
UPDATE quest_template SET RequiredCondition = 20669 WHERE entry IN (13338);
DELETE FROM conditions WHERE condition_entry = 20669;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20669,8,13335,0,0,0,0,'');

-- q.13328 'Shatter the Shards' - H
-- req. q.13329 finished first.
UPDATE quest_template SET RequiredCondition = 20668 WHERE entry IN (13328);
-- q.13339 'Shatter the Shards' - A
-- req. q.13335 finished first.
UPDATE quest_template SET RequiredCondition = 20669 WHERE entry IN (13339);

-- q.13329 'Before the Gate of Horror' - H
-- Opens after q.13307 & q.13312 completed
UPDATE quest_template SET RequiredCondition = 20672 WHERE entry IN (13329);
DELETE FROM conditions WHERE condition_entry BETWEEN 20670 AND 20672;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20670,8,13307,0,0,0,0,''),
(20671,8,13312,0,0,0,0,''),
(20672,-1,20671,20670,0,0,0,'');
-- q.13335 'Before the Gate of Horror' - A
-- Opens after q.13334 & q.13337 completed
UPDATE quest_template SET RequiredCondition = 20675 WHERE entry IN (13335);
DELETE FROM conditions WHERE condition_entry BETWEEN 20673 AND 20675;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20673,8,13334,0,0,0,0,''),
(20674,8,13337,0,0,0,0,''),
(20675,-1,20674,20673,0,0,0,'');

-- q.13351 'Sneak Preview' - H
-- req. q.13264 finished first.
UPDATE quest_template SET RequiredCondition = 20653 WHERE entry IN (13351);
-- q.13315 'Sneak Preview' - A
-- req. q.13288 finished first.
UPDATE quest_template SET RequiredCondition = 20655 WHERE entry IN (13315);

-- q.13352 'Drag and Drop' - H
-- req. q.13351 finished first.
UPDATE quest_template SET RequiredCondition = 20676 WHERE entry IN (13352);
DELETE FROM conditions WHERE condition_entry = 20676;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20676,8,13351,0,0,0,0,'');
-- q.13353 'Drag and Drop' - H -- Daily
-- req. q.13352 finished first.
UPDATE quest_template SET RequiredCondition = 20677 WHERE entry IN (13353);
DELETE FROM conditions WHERE condition_entry = 20677;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20677,8,13352,0,0,0,0,'');
-- q.13318 'Drag and Drop' - A
-- req. q.13315 finished first.
UPDATE quest_template SET RequiredCondition = 20678 WHERE entry IN (13318);
DELETE FROM conditions WHERE condition_entry = 20678;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20678,8,13315,0,0,0,0,'');
-- q.13323 'Drag and Drop' - A -- Daily
-- req. q.13318 finished first.
UPDATE quest_template SET RequiredCondition = 20317 WHERE entry IN (13323);
DELETE FROM conditions WHERE condition_entry = 20317;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20317,8,13318,0,0,0,0,'');

-- q.13354 'Chain of Command' - H
-- req. q.13351 finished first.
UPDATE quest_template SET RequiredCondition = 20676 WHERE entry IN (13354);
-- q.13319 'Chain of Command' - A
-- req. q.13315 finished first.
UPDATE quest_template SET RequiredCondition = 20678 WHERE entry IN (13319);

-- q.13355 'Cannot Reproduce' - H
-- req. q.13351 finished first.
UPDATE quest_template SET RequiredCondition = 20676 WHERE entry IN (13355);
-- q.13320 'Cannot Reproduce' - A
-- req. q.13351 finished first.
UPDATE quest_template SET RequiredCondition = 20678 WHERE entry IN (13320);

-- q.13358 'Not a Bug' - H
-- req. q.13352 finished first.
UPDATE quest_template SET RequiredCondition = 20677 WHERE entry IN (13358);
-- q.13365 'Not a Bug' - H -- Daily
-- req. q.13358 finished first.
UPDATE quest_template SET RequiredCondition = 20679 WHERE entry IN (13365);
DELETE FROM conditions WHERE condition_entry = 20679;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20679,8,13358,0,0,0,0,'');
-- q.13342 'Not a Bug' - A
-- req. q.13318 finished first.
UPDATE quest_template SET RequiredCondition = 20317 WHERE entry IN (13342);
-- q.13344 'Not a Bug' - A -- Daily
-- req. q.13342 finished first.
UPDATE quest_template SET RequiredCondition = 20680 WHERE entry IN (13344);
DELETE FROM conditions WHERE condition_entry = 20680;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20680,8,13342,0,0,0,0,'');
-- q.13366 'Need More Info' - H
-- req. q.13352 finished first.
UPDATE quest_template SET RequiredCondition = 20677 WHERE entry IN (13366);
-- q.13345 'Need More Info' - A
-- req. q.13318 finished first.
UPDATE quest_template SET RequiredCondition = 20317 WHERE entry IN (13345);

-- q.13367 'No Rest For The Wicked' - H
-- req. q.13366 finished first.
UPDATE quest_template SET RequiredCondition = 20660 WHERE entry IN (13367);
-- q.13368 'No Rest For The Wicked' - H -- Daily
-- req. q.13367 finished first.
UPDATE quest_template SET RequiredCondition = 20664 WHERE entry IN (13368);
-- q.13346 'No Rest For The Wicked' - A
-- req. q.13345 finished first.
UPDATE quest_template SET RequiredCondition = 20661 WHERE entry IN (13346);
-- q.13350 'No Rest For The Wicked' - A -- Daily
-- req. q.13346 finished first.
UPDATE quest_template SET RequiredCondition = 20666 WHERE entry IN (13350);

-- q.13363 'Argent Aid' - H
-- req. q.13362 finished first.
UPDATE quest_template SET RequiredCondition = 20681 WHERE entry IN (13363);
DELETE FROM conditions WHERE condition_entry = 20681;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20681,8,13362,0,0,0,0,'');
-- q.13402 'Tirion's Help' - A
-- req. q.13401 finished first.
UPDATE quest_template SET RequiredCondition = 20682 WHERE entry IN (13402);
DELETE FROM conditions WHERE condition_entry = 20682;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20682,8,13401,0,0,0,0,'');

-- q.13228 'The Broken Front' - H
-- req. q.13224 finished first.
UPDATE quest_template SET RequiredCondition = 20647 WHERE entry IN (13228);
-- q.13231 'The Broken Front' - A
-- req. q.13225 finished first.
UPDATE quest_template SET RequiredCondition = 20648 WHERE entry IN (13231);

-- q.13234 'Make Them Pay!' - H -- Daily
-- req. q.13228 finished first.
UPDATE quest_template SET RequiredCondition = 20683 WHERE entry IN (13234);
DELETE FROM conditions WHERE condition_entry = 20683;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20683,8,13228,0,0,0,0,'');
-- q.13233 'No Mercy!' - A -- Daily
-- req. q.13231 finished first.
UPDATE quest_template SET RequiredCondition = 20684 WHERE entry IN (13233);
DELETE FROM conditions WHERE condition_entry = 20684;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20684,8,13231,0,0,0,0,'');

-- q.13238 'Good For Something?' - H
-- req. q.13228 finished first.
UPDATE quest_template SET RequiredCondition = 20683 WHERE entry IN (13238);
-- q.13290 'Your Attention, Please' - A
-- req. q.13231 finished first.
UPDATE quest_template SET RequiredCondition = 20684 WHERE entry IN (13290);

-- q.13260 'Takes One to Know One ' - H
-- req. q.13228 finished first.
UPDATE quest_template SET RequiredCondition = 20683 WHERE entry IN (13260);
-- q.13286 '...All the Help We Can Get.' - A
-- req. q.13231 finished first.
UPDATE quest_template SET RequiredCondition = 20684 WHERE entry IN (13286);

-- q.13313 'Blinding the Eyes in the Sky' - H
-- req. q.13306 finished first.
UPDATE quest_template SET RequiredCondition = 20662 WHERE entry IN (13313);
-- q.13314 'Get the Message' - A
-- req. q.13332 finished first.
UPDATE quest_template SET RequiredCondition = 20663 WHERE entry IN (13314);

-- q.13331 'Keeping the Alliance Blind' - H -- Daily
-- req. q.13313 finished first.
UPDATE quest_template SET RequiredCondition = 20685 WHERE entry IN (13331);
DELETE FROM conditions WHERE condition_entry = 20685;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20685,8,13313,0,0,0,0,'');
-- q.13333 'Capture More Dispatches' - A -- Daily
-- req. q.13314 finished first.
UPDATE quest_template SET RequiredCondition = 20686 WHERE entry IN (13333);
DELETE FROM conditions WHERE condition_entry = 20686;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20686,8,13314,0,0,0,0,'');

-- q.13330 'Blood of the Chosen' - H -- Daily
-- q.13340 'Joining the Assault' - H
-- req. q.13224 finished first.
UPDATE quest_template SET RequiredCondition = 20647 WHERE entry IN (13330,13340);
-- q.13336 'Blood of the Chosen' - A -- Daily
-- q.13341 'Joining the Assault' - A
-- req. q.13225 finished first.
UPDATE quest_template SET RequiredCondition = 20648 WHERE entry IN (13336,13341);
