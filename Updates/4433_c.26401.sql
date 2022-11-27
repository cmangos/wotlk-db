-- Summer Scorchling 26401
-- moved to Midsummer Fire Festival
DELETE FROM `game_event_creature` WHERE guid = 86250;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(86250, 1);
