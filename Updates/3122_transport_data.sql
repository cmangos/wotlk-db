-- Missing transports
DELETE FROM transports WHERE entry in (201599,201811,201812);
INSERT INTO transports (entry,name, period) VALUES
(201599,'Orgrim\'s Hammer - Halls of Reflection',21134),
(201811,'The Skybreaker - ICC Raid Horde',47740),
(201812,'Orgrim\'s Hammer - ICC Raid Horde',82702);

-- Update descriptions for existing transports
UPDATE transports SET name='The Skybreaker - Halls of Reflection' WHERE entry=201598;
UPDATE transports SET name='The Skybreaker - ICC Raid Alliance' WHERE entry=201580;
UPDATE transports SET name='Orgrim\'s Hammer - ICC Raid Alliance' WHERE entry=201581;
UPDATE transports SET name='Alliance Gunship - Isle of Conquest' WHERE entry=195121;
UPDATE transports SET name='Horde Gunship - Isle of Conquest' WHERE entry=195276;
