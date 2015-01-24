-- Ulduar - despawn Sanity Well on wipe / complete
DELETE FROM creature_linking_template WHERE entry=33991;
INSERT INTO creature_linking_template VALUES
(33991,603,33280,8192,0);
-- Ulduar - despawn immortal guardiand on complete
UPDATE creature_linking_template SET flag=flag|16 WHERE entry=33988 AND master_entry=33288;
