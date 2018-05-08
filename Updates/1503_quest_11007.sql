-- q.11007 "Kael'thas and the Verdant Sphere"
UPDATE creature_template SET UnitFlags = 832,InhabitType = 4 WHERE entry IN (23054); -- needs to "fly"

DELETE FROM creature_template_addon WHERE entry IN (23054);
INSERT INTO creature_template_addon(entry,auras) VALUES
(23054,'39966');

DELETE FROM dbscripts_on_relay WHERE id IN(10061);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('10061', '0', '0', '0', '0', '0', '0', '0', '0', '2000001613', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '4', '0', '0', '0', '0', '0', '0', '0', '2000001614', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '8', '0', '0', '0', '0', '0', '0', '0', '2000001615', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '13', '0', '0', '0', '0', '0', '0', '0', '2000001616', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '14', '9', '45220', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Respawn Mark of Kaelthas'),
('10061', '14', '10', '23054', '50000', '0', '0', '0', '8', '0', '0', '0', '0', '-1884.322', '5420.598', '-8.42119', '0.4886922', 'Spawn kaelthas'),
('10061', '20', '0', '0', '0', '0', '23054', '30', '0', '2000001617', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player'),
('10061', '31', '0', '0', '0', '0', '23054', '30', '0', '2000001618', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player'),
('10061', '42', '0', '0', '0', '0', '23054', '30', '0', '2000001619', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player'),
('10061', '53', '0', '0', '0', '0', '23054', '30', '0', '2000001620', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001613 AND 2000001620;
INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, comment) VALUES
('2000001613', 'Silence descends upon Shattrath.', '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000001614', '%s''s thoughts invade your mind.', '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000001615', 'Kael''thas Sunstrider has been defeated by $n and $g his:her; allies.', '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000001616', 'The time to strike at the remaining blood elves of Tempest Keep is now. Take arms and let A''dal''s song of battle empower you!', '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000001617', 'Your monkeys failed to finish the job, naaru. Beaten but alive... The same mistake was not made when we took command of your vessel.', '0', '6', '0', '0', 'q.11007 Kaelthas yell'),
('2000001618', 'All for what? Trinkets? You are too late. The preparations have already begun. Soon the master will make his return.', '0', '6', '0', '0', 'q.11007 Kaelthas yell'),
('2000001619', 'And there is nothing you or that fool, Illidan, can do to stop me! You have both served me in your own right - unwittingly.', '0', '6', '0', '0', 'q.11007 Kaelthas yell'),
('2000001620', 'Lay down your arms and succumb to the might of Kil''jaeden!', '0', '6', '0', '0', 'q.11007 Kaelthas yell');
