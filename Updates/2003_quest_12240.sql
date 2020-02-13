-- q.12240 'A Means to an End'

-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 2523;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2523, 34668, 0, 0);

-- Foreman Kaleiki 27238
UPDATE creature_template SET EquipmentTemplateid = 2523 WHERE entry = 27238;
-- Levine Family Termite 27352
UPDATE creature_template SET UnitFlags = 33554432, MovementType = 1 WHERE entry = 27352;

-- Event
DELETE FROM dbscripts_on_event WHERE id = 17868;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17868,10,31,27238,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 27238 - prevent multispawn'),
(17868,300,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,305,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,310,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,311,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,312,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,413,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,400,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,405,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,408,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,410,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,514,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,515,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,520,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,521,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,557,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,560,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,570,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,575,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,580,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,590,10,27352,45000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Levine Family Termite 27352'), -- should be: summoned by server side spell: 48346
(17868,3000,10,27238,300000,0,0,0,0,0,0,0,0,2797.56,-201.851,139.162,3.55805,'summon Foreman Kaleiki 27238');

