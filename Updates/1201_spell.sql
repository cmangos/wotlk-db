-- Scarab of Unending Life should proc on any cast
UPDATE spell_proc_event SET procEx=65536 WHERE entry IN(33953);
