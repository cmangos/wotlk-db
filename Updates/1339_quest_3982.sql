-- ClassicDB: StartScript for What Is Going On? (3982)
DELETE FROM dbscripts_on_quest_start WHERE id = 3982;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3982, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gor''shak active'),
(3982, 1, 22, 495, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'temp faction'),
(3982, 1, 0, 0, 0, 0, 0, 0, 2000001517, 0, 0, 0, 0, 0, 0, 0, 'say'),
(3982, 3, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 379.509, -191.971, -69.718, 3.4033, '1st wave'),
(3982, 4, 3, 0, 0, 8891, 20, 0, 0, 0, 0, 0, 372.17, -178.3, -70.03, 3.4033, 'move inside cell'),
(3982, 4, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 376.053, -192.092, -70.561, 1.8162, '1st wave'),
(3982, 4, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 374.817, -190.909, -70.725, 1.2256, '1st wave'),
(3982, 43, 34, 944, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(3982, 44, 34, 945, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(3982, 45, 10, 9398, 300000, 0, 0, 0, 0, 0, 0, 0, 379.509, -191.971, -69.718, 3.4033, '2nd wave'),
(3982, 46, 3, 0, 0, 9398, 20, 0, 0, 0, 0, 0, 372.17, -178.3, -70.03, 3.4033, 'move inside cell'),
(3982, 46, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 376.053, -192.092, -70.561, 1.8162, '2nd wave'),
(3982, 46, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 374.817, -190.909, -70.725, 1.2256, '2nd wave'),
(3982, 97, 34, 944, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(3982, 97, 34, 945, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(3982, 98, 7, 3982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest credit'),
(3982, 99, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gor''shak unactive');
UPDATE quest_template SET StartScript = 3982 WHERE entry = 3982;

DELETE FROM dbscript_string WHERE entry = 2000001517;
INSERT INTO dbscript_string VALUES
(2000001517, 'Defend yourself, fool!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
