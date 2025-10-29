-- q.12707 'Wooly Justice'
-- make them do RandomMovement+Run 
-- reset issue fixed

-- Enraged Mammoth 28851
UPDATE creature_template SET StaticFlags2 = 0x00000400 WHERE Entry IN (28851);
-- Part of Enraged Mammoth 28851 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20155);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20155,0,20,1,10,0,0,0,0x04,1,0,0,0,0,0,0,0,'Part of Enraged Mammoth 28851 EAI: Set RandomMovement + RUN');