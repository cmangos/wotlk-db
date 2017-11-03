-- Darkmoon Card: Crusade should proc on any cast
DELETE FROM spell_proc_event WHERE entry IN(39440);
INSERT INTO spell_proc_event(entry,procEx) VALUES(39440,65536);
