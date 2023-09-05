-- q.12607 'A Mammoth Undertaking'
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (51659,51660);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(51659,0,15,51658,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(51660,0,14,51658,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_template_spells WHERE entry IN(28379);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(28379,51660,51944,0,0,0,0,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20773;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20773,1,31,28771,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Shattertusk Mammoth 28379 EAI: spell check'),
(20773,11,3,0,0,0,0,0,0x04,0,0,0,0,6444.78,5094.459,-63.94596,4.834562,'Part of Shattertusk Mammoth 28379 EAI: move to');
