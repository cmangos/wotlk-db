-- WoTLK texts moved to range 20k+
-- also synced with TDB

-- #1227
-- Quests 'Stop the Ascension!'
-- q.11260 - horde ver
-- q.11249 - Alliance ver
UPDATE dbscript_string SET entry = 2000020385 WHERE entry = 2000001451;
UPDATE dbscript_string SET entry = 2000020386 WHERE entry = 2000001452;
UPDATE dbscript_string SET entry = 2000020387 WHERE entry = 2000001453;
UPDATE dbscript_string SET entry = 2000020388 WHERE entry = 2000001454;
UPDATE dbscripts_on_event SET dataint = 2000020385 WHERE id = 15672 AND delay = 2000 AND command = 0;
UPDATE dbscripts_on_event SET dataint = 2000020386 WHERE id = 15672 AND delay = 6000 AND command = 0;
UPDATE dbscripts_on_creature_death SET dataint = 2000020387 WHERE id = 23671 AND delay = 2000 AND command = 0;
UPDATE dbscripts_on_creature_death SET dataint = 2000020388 WHERE id = 23671 AND delay = 9000 AND command = 0;

-- q.9166 - sync with TDB
UPDATE dbscript_string SET entry = 2000001451 WHERE entry = 2000001546;
UPDATE dbscript_string SET entry = 2000001452 WHERE entry = 2000001547;
UPDATE dbscripts_on_quest_end SET dataint = 2000001451 WHERE id = 9166 AND delay = 1000 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000001452 WHERE id = 10060 AND delay = 1000 AND command = 0;

-- q.703  - sync with TDB
UPDATE dbscript_string SET entry = 2000001453 WHERE entry = 2000001548;
UPDATE dbscripts_on_quest_end SET dataint = 2000001453 WHERE id = 703 AND delay = 0 AND command = 0;
