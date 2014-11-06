-- link to Arthas the spawned scourge for burning city escort
DELETE FROM creature_linking_template WHERE entry IN (27729,27731,27732,27734,27736,28199,28200,28201,28249,27737);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(27729, 595, 26499, 8208, 0),
(27731, 595, 26499, 8208, 0),
(27732, 595, 26499, 8208, 0),
(27734, 595, 26499, 8208, 0),
(27736, 595, 26499, 8208, 0),
(28199, 595, 26499, 8208, 0),
(28200, 595, 26499, 8208, 0),
(28201, 595, 26499, 8208, 0),
(28249, 595, 26499, 8208, 0),
(27737, 595, 26499, 8208, 0);
-- achiev crit
DELETE FROM achievement_criteria_requirement WHERE criteria_id=7494 AND type=11;
