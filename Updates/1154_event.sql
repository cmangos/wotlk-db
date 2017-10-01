-- Event: Pirate's Day
-- delete go and creatures from events
DELETE FROM game_event_gameobject WHERE guid = 88;
DELETE FROM game_event_creature WHERE guid IN 
(16397,16398,16399,16400,16402,43212,70165,77646,77647,78933,84498,86277,86278,86869,93838,97346,100084,100431,100704,101951,101952,102309,105579,105582,105593,105597,107018,110149,120700,122268,122271,122272,122273,122274,122275,122276,122277,122280,122281,122282,122283,122284,122287,122288,122289,122290);

-- create new pirates day event
DELETE FROM `game_event` WHERE entry = 44;
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `linkedto`) VALUES 
(44, '2010-09-19 00:01:00', '2020-09-20 00:00:00', 525600, 1440, 398, 'Pirate\'s Day', 0);

DELETE FROM `game_event_gameobject` WHERE abs(`event`) = 44;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(88,44);

DELETE FROM `game_event_creature` WHERE abs(`event`) = 44;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(16397,44),
(16398,44),
(16399,44),
(16400,44),
(16402,44),
(43212,44),
(70165,44),
(77646,44),
(77647,44),
(78933,44),
(84498,44),
(86277,44),
(86278,44),
(86869,44),
(93838,44),
(97346,44),
(100084,44),
(100431,44),
(100704,44),
(101951,44),
(101952,44),
(102309,44),
(105579,44),
(105582,44),
(105593,44),
(105597,44),
(107018,44),
(110149,44),
(120700,44),
(122268,44),
(122271,44),
(122272,44),
(122273,44),
(122274,44),
(122275,44),
(122276,44),
(122277,44),
(122280,44),
(122281,44),
(122282,44),
(122283,44),
(122284,44),
(122287,44),
(122288,44),
(122289,44),
(122290,44);

