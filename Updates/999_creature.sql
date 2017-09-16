-- Missing aura for creature 19913. Related to Area-52 areatriggers
DELETE FROM creature_template_addon WHERE entry=19913;
INSERT INTO creature_template_addon (entry, auras) VALUES
(19913, 39312);
