-- q.489 'Seek Redemption!' - update
-- spell target corrected
UPDATE dbscripts_on_quest_end SET data_flags = 4 WHERE id = 489 AND delay = 0;
