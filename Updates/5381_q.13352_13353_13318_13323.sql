-- q.13352 'Drag and Drop' - H
-- q.13353 'Drag and Drop' - H -- Daily
-- q.13318 'Drag and Drop' - A
-- q.13323 'Drag and Drop' - A -- Daily
DELETE FROM dbscripts_on_relay WHERE id IN (20946,20947,20948);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20946,0,22,974,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: faction'),
(20946,1,48,256,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: UnitFlags added'),
(20946,10,0,20361,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: random Say'),
(20946,11,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: emote'),
(20946,4000,15,4328,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: cast 4328'),
(20946,4001,16,15129,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: play sound'),
(20946,10000,1,431,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: emote'),
(20946,10001,0,20362,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Dark Subjugator 32236 EAI: random Say'),
(20947,1,15,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Aldur\'thar Sentry 32292 EAI: cast 46598'),
(20948,1,37,0,0,0,23837,100,1,0,0,0,0,0,0,0,0,'Part of Aldur\'thar Sentry 32292 EAI: move towards target'),
(20948,5000,37,0,0,0,23837,34107,1|0x100,0,0,0,0,0,0,0,0,'Part of Aldur\'thar Sentry 32292 EAI: move towards target'),
(20948,12000,15,50630,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Aldur\'thar Sentry 32292 EAI: Cast 50630'),
(20948,14000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Aldur\'thar Sentry 32292 EAI: despawn');
DELETE FROM dbscript_random_templates WHERE `id` IN (20361,20362);
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20361,0,32630,0,'Dark Subjugator 32236 - Say 1-1 (q."Drag and Drop")'),
(20361,0,32631,0,'Dark Subjugator 32236 - Say 1-2 (q."Drag and Drop")'),
(20361,0,32632,0,'Dark Subjugator 32236 - Say 1-3 (q."Drag and Drop")'),
(20361,0,32633,0,'Dark Subjugator 32236 - Say 1-4 (q."Drag and Drop")'),
(20362,0,32634,0,'Dark Subjugator 32236 - Say 2-1 (q."Drag and Drop")'),
(20362,0,32635,0,'Dark Subjugator 32236 - Say 2-2 (q."Drag and Drop")'),
(20362,0,32636,0,'Dark Subjugator 32236 - Say 2-3 (q."Drag and Drop")'),
(20362,0,32637,0,'Dark Subjugator 32236 - Say 2-4 (q."Drag and Drop")');

-- ELM General Purpose Bunny 23837
-- outer line - req for quest
DELETE FROM `spawn_group` WHERE id = 34107;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34107, 'Icecrown - Aldur\'thar - ELM General Purpose Bunny 23837 - Group 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34107;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34107, 503086, -1),(34107, 503139, -1),(34107, 503085, -1),
(34107, 503146, -1),(34107, 503142, -1),(34107, 503087, -1),
(34107, 503143, -1),(34107, 503088, -1),(34107, 503090, -1),
(34107, 503078, -1);
