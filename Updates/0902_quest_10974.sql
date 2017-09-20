-- q.10974 'Stasis Chambers of Bash'ir'
-- object need to reset itself
DELETE FROM dbscripts_on_go_template_use WHERE id = 185512 AND delay = 300;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185512,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go');
-- Players shouldnt wait 10secs for Thuk the Defiant
UPDATE dbscripts_on_go_template_use SET delay = 4 WHERE id = 185512 AND delay = 10;

-- Quest should be finished by c.22919
DELETE FROM creature_involvedrelation WHERE id = 20482 AND quest = 10974; -- wrong npc
DELETE FROM creature_involvedrelation WHERE id = 22919 AND quest = 10974;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(22919,10974);
