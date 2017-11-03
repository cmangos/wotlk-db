-- Pendant of the Violet Eye should proc on any cast
DELETE FROM spell_proc_event WHERE entry IN(29601);
INSERT INTO spell_proc_event(entry,procEx) VALUES(29601,65536);
