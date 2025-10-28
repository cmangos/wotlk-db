-- q.12906 'Discipline'
-- q.13422 'Maintaining Discipline'
-- moved from sd2 to DB + fixed

-- Part of Exhausted Vrykul 30146 EAI
DELETE FROM `dbscript_random_templates` WHERE `id` = 20387;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20387,1,21237,0,'Part of Exhausted Vrykul 30146 EAI - Quest - Random Script 1'), -- attack player
(20387,1,21238,0,'Part of Exhausted Vrykul 30146 EAI - Quest - Random Script 2'); -- work
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21237 AND 21238;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21237
(21237,0,0,0,0,0,0,0,0,30793,30794,30795,0,0,0,0,0,'random say'),
-- 21238
(21238,0,35,5,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'send event 5'),
(21238,1,0,0,0,0,0,0,0,30796,30797,30798,0,0,0,0,0,'random say'),
(21238,2,48,256,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'add unitflags'),
(21238,3,1,34,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'),
(21238,4,28,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'stand'),
(21238,4000,1,233,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'),
(21238,10000,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'despawn self');
