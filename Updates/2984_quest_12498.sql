-- q.12498 'On Ruby Wings'

-- Wyrmrest Vanquisher 27996
DELETE FROM creature_template_addon WHERE entry = 27996;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27996,0,50331648,0,0,0,0,50345);
DELETE FROM npc_spellclick_spells WHERE npc_entry = 27996;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(27996, 50343, 0, 0, 0, 1, 0);
-- Part of Wyrmrest Vanquisher 27996
DELETE FROM dbscripts_on_relay WHERE id = 20342;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20342,10,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Wyrmrest Vanquisher EAI: move towards summoner'),
(20342,5000,2,59,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Wyrmrest Vanquisher EAI: unitflags');
