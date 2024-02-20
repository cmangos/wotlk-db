-- Vaelen the Flayed 30056
DELETE FROM gossip_menu WHERE entry IN(9867);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(9867,13671,0,0),
(9867,13673,0,20646);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13671,13673);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13671,1,30719),
(13673,1,30724);
DELETE FROM npc_text WHERE id IN (13671,13673);
DELETE FROM conditions WHERE condition_entry = 20646;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(20646,8,12949,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN (54112,55796);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(54112, 1, 30056, 0),
(55796, 1, 30056, 0);
