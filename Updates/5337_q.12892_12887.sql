-- q.12892 'It's All Fun and Games' - H
-- q.12887 'It's All Fun and Games' - A
-- The Ocular 29747
UPDATE creature_template SET InhabitType = 4, StaticFlags2 = 4194336 WHERE entry = 29747;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (29747));
DELETE FROM creature_template_addon WHERE entry IN (29747);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29747,0,0,0,0,0,0,'18950 55162');
