-- q.12589 'Kick, What Kick?'
-- q.12549 'Dreadsaber Mastery: Becoming a Predator'
-- req. q.12525 & q.12523 finished first
UPDATE quest_template SET RequiredCondition = 20552 WHERE entry IN (12549);
UPDATE quest_template SET RequiredCondition = 20552 WHERE entry IN (12589);
DELETE FROM `conditions` WHERE `condition_entry` IN (20550,20551,20552);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20550,8,12523,0,0,0,0,''),
(20551,8,12525,0,0,0,0,''),
(20552,-1,20551,20550,0,0,0,'');

-- Lucky Wilhelm 28054
DELETE FROM creature_template_addon WHERE entry IN (28054);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28054,0,4,1,0,0,0,NULL);
-- duplicate
DELETE FROM creature_addon WHERE guid IN (520284);
DELETE FROM creature_movement WHERE id IN (520284);
DELETE FROM game_event_creature WHERE guid IN (520284);
DELETE FROM game_event_creature_data WHERE guid IN (520284);
DELETE FROM creature_battleground WHERE guid IN (520284);
DELETE FROM creature_linking WHERE guid IN (520284);
DELETE FROM creature where guid IN (520284);