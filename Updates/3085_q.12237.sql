-- q.12237 'Flight of the Wintergarde Defender' - Update
-- make it work again
DELETE FROM dbscripts_on_spell WHERE id = 48363;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48363,10,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(48363,1000,46,43671,0,0,0,0,0x02,2,0,0,0,0,0,0,0,'cast 43671 with seat selection');
