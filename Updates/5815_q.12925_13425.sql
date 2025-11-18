-- q.12925 'Aberrations'
-- q.13425 'The Aberrations Must Die' - Daily
-- Vial of Frost Oil 41612 - Max Stack: 20
UPDATE quest_template SET ReqSourceCount2 = 20 WHERE entry IN (12925,13425);
-- Plagued Proto-Drake Egg 191840
-- 55647
DELETE FROM dbscripts_on_go_template_use WHERE id IN (191840);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(191840,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn object');
