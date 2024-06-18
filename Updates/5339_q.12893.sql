-- q.12893 'Free Your Mind'

-- spell targets
DELETE FROM spell_script_target WHERE entry IN(29070);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(29070,1,29769,0),
(29070,1,29770,0),
(29070,1,29840,0);
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (29071);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29071,1,34,20687,0,0,0,0,6|0x08,0,0,0,0,0,0,0,0,'aura check'),
(29071,100,15,35426,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry = 20687;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20687,1,29266,0,0,0,2,'');
-- Relays
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20908 AND 20910;
INSERT INTO dbscripts_on_relay (id, priority, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Vile 29769
(20908,0,1,22,35,1,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Vile 29769 EAI: Set Temp Faction'),
(20908,0,10,14,29266,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Vile 29769 EAI: Remove aura'),
(20908,0,20,8,29845,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Vile 29769 EAI: Kill credit'),
(20908,0,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Vile 29769 EAI: Face Player'),
(20908,0,1200,0,0,0,0,0,0,0x02,30460,0,0,0,0,0,0,0,'Part of Vile 29769 EAI: Say to Player'),
(20908,0,1300,1,34,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Vile 29769 EAI: emote'),
(20908,0,10000,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Vile 29769 EAI: despawn'),
-- The Leaper 29840
(20909,0,1,22,35,1,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of The Leaper 29840 EAI: Set Temp Faction'),
(20909,0,10,14,29266,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of The Leaper 29840 EAI: Remove aura'),
(20909,0,20,8,29847,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of The Leaper 29840 EAI: Kill credit'),
(20909,0,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of The Leaper 29840 EAI: Face Player'),
(20909,0,1200,0,0,0,0,0,0,0x02,30459,0,0,0,0,0,0,0,'Part of The Leaper 29840 EAI: Say to Player'),
(20909,0,1300,1,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of The Leaper 29840 EAI: emote'),
(20909,0,10000,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Leaper 29840 EAI: despawn'),
-- Lady Nightswood 29770
(20910,0,1,22,35,1,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: Set Temp Faction'),
(20910,0,10,14,29266,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: Remove aura'),
(20910,0,20,8,29846,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: Kill credit'),
(20910,0,1000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: Face Player'),
(20910,0,1200,0,0,0,0,0,0,0x02,30458,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: Say to Player'),
(20910,0,1300,1,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: emote'),
(20910,0,10000,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: despawn');
