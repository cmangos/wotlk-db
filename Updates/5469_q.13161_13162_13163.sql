-- q.13161 'The Rider of the Unholy'
-- q.13162 'The Rider of Frost'
-- q.13163 'The Rider of Blood'

-- Baelok 31159
-- Rokir 31160
-- Sapph 31161
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (31866,31867,31868,31872,31835,31852,31853,31855,31860,31861,31863,31864,31862);
-- Shambling Zombie 32503
UPDATE creature_template SET Faction = 16, MinLevel = 80, MaxLevel = 80, SpeedWalk = (2 / 2.5), SpeedRun = (2 / 7), Expansion = 2, UnitClass = 1 WHERE Entry = 32503;
