-- Summer Scorchling 26401
-- moved to Midsummer Fire Festival
INSERT IGNORE INTO `game_event_creature` (`guid`, `event`) SELECT `guid`, 1 FROM `creature` WHERE id IN (26401);

