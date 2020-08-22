-- q.12072 'Blightbeasts be Damned!'

-- Kor'kron War Rider 26813
UPDATE creature_template SET UnitFlags = 33554432, UnitClass = 1, Expansion = 2, MinLevel=70, MaxLevel=76, HealthMultiplier=1.5, MinLevelHealth=13473, MaxLevelHealth=16502, Armor = 6719, InhabitType = 1 WHERE Entry = 26813;
DELETE FROM creature_template_addon WHERE entry=26813;
INSERT INTO creature_template_addon VALUES
(26813,0,0,0,0,0,0,47433);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26813;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(26813, 47424, 12072, 1, 12072, 1, 0);

-- Part of Kor'kron War Rider EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20321,20322);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20321,10,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Arcane Wyrm EAI: RUN ON'),
(20321,1000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Arcane Wyrm EAI: move towards player'),
(20321,4000,5,59,33554432,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Arcane Wyrm EAI: remove nonselectable flag'),
-- zone check
(20322,10,34,20070,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Arcane Wyrm EAI: zone check'),
(20322,1000,14,47424,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Arcane Wyrm EAI: remove vehicle control'),
(20322,1100,0,0,0,0,0,0,0,2000020447,0,0,0,0,0,0,0,'Part of Arcane Wyrm EAI: say');
DELETE FROM conditions WHERE condition_entry =  20070;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20070, 4, 4163, 0);
DELETE FROM `dbscript_string` WHERE `entry` = 2000020447;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000020447,'%s flies away.', 0, 2, 0, 0, '');
