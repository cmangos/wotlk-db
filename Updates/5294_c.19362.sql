-- Kor'kron Defender 19362
-- Relays ID's moved to another location (17950 - 17953 belong to quest script and was overwriten by mistake);
DELETE FROM `dbscript_random_templates` WHERE `id` IN (19975,19976);
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(19975,0,16554,0,'Kor\'kron Defender 19362 - Random OOC Say 1'),
(19975,0,16555,0,'Kor\'kron Defender 19362 - Random OOC Say 2'),
(19975,0,16556,0,'Kor\'kron Defender 19362 - Random OOC Say 3'),
(19975,0,16557,0,'Kor\'kron Defender 19362 - Random OOC Say 4'),
(19975,0,16558,0,'Kor\'kron Defender 19362 - Random OOC Say 5'),
(19975,0,16559,0,'Kor\'kron Defender 19362 - Random OOC Say 6'),
(19976,1,19946,0,'Kor\'kron Defender 19362 - Random Script 1'),
(19976,1,19947,0,'Kor\'kron Defender 19362 - Random Script 2'),
(19976,1,19948,0,'Kor\'kron Defender 19362 - Random Script 3'),
(19976,1,19949,0,'Kor\'kron Defender 19362 - Random Script 4');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 19946 AND 19949;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19946,0,42,0,0,0,0,0,0x04,30178,0,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 1'),
(19947,0,42,0,0,0,0,0,0x04,30179,0,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 2'),
(19948,0,42,0,0,0,0,0,0x04,30180,30180,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 3'),
(19949,0,42,0,0,0,0,0,0x04,30181,21549,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 4');
