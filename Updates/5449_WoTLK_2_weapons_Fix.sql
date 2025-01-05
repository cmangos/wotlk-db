-- Custom Fix for Client(3.3.5a) issue with not showing 2nd weapon when 3rd ranged is also present
-- issue does not happen when second weapon = shield 
-- Cenarion Hold Infantry 15184
DELETE FROM creature_template_addon WHERE entry IN (15184,30352,30755);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(15184,0,0,1,1,0,0,18950),
(30352,0,0,1,1,0,0,NULL),
(30755,0,0,1,1,0,0,NULL);
DELETE FROM creature_spawn_data_template WHERE entry IN (20074);
INSERT INTO creature_spawn_data_template (entry, RelayId, name) VALUES
(20074,31004,'- RelayId 31004');
DELETE FROM creature_spawn_data WHERE id IN (20074);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(42766,20074),(42767,20074),(42768,20074),(42769,20074),(42770,20074),(42771,20074),(42772,20074),
(42773,20074),(42774,20074),(42775,20074),(42776,20074),(42777,20074),(42778,20074),(42779,20074),
(42780,20074),(42781,20074),(42782,20074),(42783,20074),(42784,20074),(42785,20074),(42868,20074),
(42884,20074),(42885,20074),(42886,20074),(42891,20074),(42892,20074);
-- Kor'kron Reaver 30755
DELETE FROM creature_spawn_data_template WHERE entry IN (20075);
INSERT INTO creature_spawn_data_template (entry, RelayId, name) VALUES
(20075,31000,'- RelayId 31000');
DELETE FROM creature_spawn_data WHERE id IN (20075);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(528567,20075),(528568,20075),(528569,20075),(528570,20075),(530011,20075),
(530012,20075),(530013,20075),(530014,20075),(6220027,20075),(6220028,20075),
(6220029,20075),(6220030,20075),(6220031,20075),(6220032,20075),(6220033,20075),
(6220034,20075),(6220035,20075),(6220036,20075),(6220037,20075),(6220038,20075),
(6220039,20075),(6220040,20075),(6220041,20075),(6220042,20075),(6220043,20075),
(6220044,20075),(6220045,20075),(6220046,20075),(6220047,20075),(6220048,20075),
(7130004,20075),(7130005,20075),(7130006,20075),(7130007,20075),(7130008,20075),
(7130009,20075),(7130010,20075),(7130011,20075),(7130012,20075),(7130013,20075),
(7130014,20075),(7130015,20075),(7130016,20075),(7130017,20075),(7130018,20075),
(7130019,20075),(7130020,20075),(7130021,20075),(7130022,20075),(7130023,20075),
(7130024,20075),(7130025,20075);
-- Sky-Reaver Korm Blackscar 30824
DELETE FROM creature_spawn_data_template WHERE entry IN (20076);
INSERT INTO creature_spawn_data_template (entry, RelayId, name) VALUES
(20076,31002,'- RelayId 31002');
DELETE FROM creature_spawn_data WHERE id IN (20076);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(6220054,20076),(7130051,20076);
-- Relays
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 31000 AND 31005;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Part of Kor\'kron Reaver 30755 EAI
(31000,1,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Kor\'kron Reaver 30755 EAI: Reset equipment (Client custom FIX)'),
(31000,1000,42,0,0,0,0,0,0x04,11019,11019,0,0,0,0,0,0,'Part of Kor\'kron Reaver 30755 EAI: Special Case: SET Equipment (Client custom FIX)'),
(31001,0,42,0,0,0,0,0,0x04,11019,11019,23052,0,0,0,0,0,'Part of Kor\'kron Reaver 30755 EAI: Special Case: SET Equipment (Client custom FIX)'),
-- Part of Sky-Reaver Korm Blackscar 30824 EAI
(31002,1,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sky-Reaver Korm Blackscar 30824 EAI: Reset equipment (Client custom FIX)'),
(31002,1000,42,0,0,0,0,0,0x04,43175,43175,0,0,0,0,0,0,'Part of Sky-Reaver Korm Blackscar 30824 EAI: Special Case: SET Equipment (Client custom FIX)'),
(31003,0,42,0,0,0,0,0,0x04,43175,43175,21554,0,0,0,0,0,'Part of Sky-Reaver Korm Blackscar 30824 EAI: Special Case: SET Equipment (Client custom FIX)'),
-- Part of Cenarion Hold Infantry 15184 EAI
(31004,1,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Cenarion Hold Infantry 15184 EAI: Reset equipment (Client custom FIX)'),
(31004,1000,42,0,0,0,0,0,0x04,14882,20417,0,0,0,0,0,0,'Part of Cenarion Hold Infantry 15184 EAI: Special Case: SET Equipment (Client custom FIX)'),
(31005,0,42,0,0,0,0,0,0x04,14882,20417,5261,0,0,0,0,0,'Part of Cenarion Hold Infantry 15184 EAI: Special Case: SET Equipment (Client custom FIX)');
