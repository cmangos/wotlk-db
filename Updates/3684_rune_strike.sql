-- rune strike should only enable itself on dodge and parry
DELETE FROM spell_proc_event WHERE entry=56816;
INSERT INTO spell_proc_event(entry, procEx) VALUES
(56816, 0x0000030);

-- passive used to proc eligibility to use rune strike
DELETE FROM playercreateinfo_spell WHERE Spell=56816;
INSERT INTO playercreateinfo_spell(race, class, Spell, Note) VALUES
(1,6,56816,'Rune Strike'),
(2,6,56816,'Rune Strike'),
(3,6,56816,'Rune Strike'),
(4,6,56816,'Rune Strike'),
(5,6,56816,'Rune Strike'),
(6,6,56816,'Rune Strike'),
(7,6,56816,'Rune Strike'),
(8,6,56816,'Rune Strike'),
(10,6,56816,'Rune Strike'),
(11,6,56816,'Rune Strike');

