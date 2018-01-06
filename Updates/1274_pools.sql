-- Add pooling for Night Elf Plans: An'daroth
DELETE FROM pool_template WHERE entry = 16461;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(16461,1,'Night Elf Plans: An\'daroth');
DELETE FROM pool_gameobject_template WHERE id = 181138;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(181138,16461,0,'Night Elf Plans: An\'daroth');
