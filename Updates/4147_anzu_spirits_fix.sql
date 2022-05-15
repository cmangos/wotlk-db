-- migrate deprecated pvp flag to wotlk style
UPDATE creature_template SET UnitFlags=UnitFlags&~0x00001000 WHERE entry IN(23134,23135, 23136);
DELETE FROM creature_template_addon WHERE entry IN(23134,23135, 23136);
INSERT INTO creature_template_addon(entry,b2_1_pvp_state) VALUES
(23134,1),
(23135,1),
(23136,1);


