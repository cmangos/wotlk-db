-- rune strike should only enable itself on dodge and parry
DELETE FROM spell_proc_event WHERE entry=56816;
INSERT INTO spell_proc_event(entry, procEx) VALUES
(56816, 0x0000030);

