-- q.6027 'Book of the Ancients'
-- reset for object added

DELETE FROM dbscripts_on_go_template_use WHERE id = 177673;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(177673,2,10,12369,300000,0,0,0,0,0,0,0,251.381,2962.47,2.76527,0.860446,''),
(177673,60,43,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset');

-- Somnus
-- Stats corrected
UPDATE creature_template SET Expansion = 0, MinLevelHealth = 38844, MaxLevelHealth = 38844, MinLevelMana = 0, MaxLevelMana = 0 WHERE entry = 12900;
