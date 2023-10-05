-- BASED ON TDB source:
-- SELECT * FROM creature c where movementtype = 0 AND guid IN (SELECT cm.id FROM creature_movement cm JOIN creature c ON cm.id = c.guid) and c.id NOT IN (10556,10541,23720,18722,20617,21352,17375) /*scripted npcs*/ order by c.guid;

-- WOTLKDB ONLY

-- Remove old unused movement data that was not deleted
-- Assign some movement data which currently is not.

-- old path Removed
DELETE FROM `creature_movement` WHERE `id` IN 
(7215,15094,21660,21661,42897,57944,57952,57967,57968,65501,68373,90481,90482,;

-- wrong movement TYPE
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (18434,80272);
