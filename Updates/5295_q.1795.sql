-- q.1795 'The Binding' - update
-- Removed Relays by mistake - readded
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 17950 AND 17953;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 17950
(17950,0,29,3,1,0,6254,30,0,0,0,0,0,0,0,0,0,'The Binding: Acolyte Wytula - Add NpcFlags'),
(17950,0,29,3,1,0,6252,30,0,0,0,0,0,0,0,0,0,'The Binding: Acolyte Magaz - Add NpcFlags'),
(17950,0,3,0,0,0,0,0,0,0,0,0,0,-776.003,-3718.86,42.6078,0,'The Binding: Strahad Farsan - Move'),
(17950,4000,3,0,0,0,0,0,0,0,0,0,0,-782.851,-3718.55,41.5492,0,'The Binding: Strahad Farsan - Move'),
(17950,7000,3,0,0,0,0,0,0,0,0,0,0,-785.161,-3721.88,40.8014,0,'The Binding: Strahad Farsan - Move'),
(17950,10000,3,0,0,0,0,0,0,0,0,0,0,-785.912,-3723.26,40.4528,0,'The Binding: Strahad Farsan - Move'),
(17950,11000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.0594,'The Binding: Strahad Farsan - Move'),
(17950,13000,29,51,1,0,0,0,0,0,0,0,0,0,0,0,0,'The Binding: Strahad Farsan - Add Npc Flags'),
(17950,13000,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Binding: Strahad Farsan - Remove ActiveObject'),
-- 17951
(17951,185000,31,6251,6,0,0,0,0,0,0,0,0,0,0,0,0,'The Binding: Only terminate script when in range with Strahad Farsan'),
(17951,185000,45,17953,0,0,6251,6,0,0,0,0,0,0,0,0,0,'The Binding: Start Fail Script'),
-- 17952
(17952,0,45,17953,0,0,6251,20,0,0,0,0,0,0,0,0,0,'The Binding: Start Fail Script'),
(17952,1000,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Binding: Despawn Self'),
-- 17953
(17953,0,29,2,1,0,6254,30,0,0,0,0,0,0,0,0,0,'The Binding: Acolyte Wytula - Add QuestGiver NpcFlags'),
(17953,0,29,2,1,0,6252,30,0,0,0,0,0,0,0,0,0,'The Binding: Acolyte Magaz - Add QuestGiver NpcFlags'),
(17953,0,3,0,0,0,0,0,0,0,0,0,0,-776.003,-3718.86,42.6078,0,'The Binding: Strahad Farsan - Move'),
(17953,3000,3,0,0,0,0,0,0,0,0,0,0,-782.851,-3718.55,41.5492,0,'The Binding: Strahad Farsan - Move'),
(17953,6000,3,0,0,0,0,0,0,0,0,0,0,-785.161,-3721.88,40.8014,0,'The Binding: Strahad Farsan - Move'),
(17953,11000,3,0,0,0,0,0,0,0,0,0,0,-785.912,-3723.26,40.4528,0,'The Binding: Strahad Farsan - Move'),
(17953,13000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.0594,'The Binding: Strahad Farsan - Move'),
(17953,14000,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'The Binding: Strahad Farsan - Add Npc Flags'),
(17953,14000,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Binding: Strahad Farsan - Remove ActiveObject');
