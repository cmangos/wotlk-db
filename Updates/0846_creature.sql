-- AQ20 - Ossirian the Unscarred
UPDATE creature_template SET SpeedWalk = (2.5 / 2.5), SpeedRun = (6 / 7) WHERE Entry = 15339;
DELETE FROM creature_template_addon WHERE entry = 15339;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(15339, 0, 0, 1, 16, 0, 0, 19818);
