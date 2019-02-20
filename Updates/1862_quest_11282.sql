-- q.11282 'A Lesson in Fear'

-- Part of Winterskorn Defender 24015 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20152,20153,20154);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #20152
(20152,0,31,24161,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Oric the Baleful 24161 - terminate if alive'),
(20152,1,31,24016,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Ulf the Bloodletter 24016 - terminate if alive'),
(20152,2,31,24162,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Gunnar Thorvardsson 24162 - terminate if alive'),
(20152,3,10,24161,300000,0,0,0,0x08,0,0,0,0,1565.831,-5577.12,226.6889,4.799655,'summon Oric the Baleful'),
-- #20153
(20153,0,31,24161,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Oric the Baleful 24161 - terminate if alive'),
(20153,1,31,24016,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Ulf the Bloodletter 24016 - terminate if alive'),
(20153,2,31,24162,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Gunnar Thorvardsson 24162 - terminate if alive'),
(20153,3,10,24016,300000,0,0,0,0x08,0,0,0,0,1522.141,-5592.615,223.6606,5.009095,'summon Ulf the Bloodletter'),
-- #20154
(20154,0,31,24161,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Oric the Baleful 24161 - terminate if alive'),
(20154,1,31,24016,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Ulf the Bloodletter 24016 - terminate if alive'),
(20154,2,31,24162,200,0,0,0,0x08,0,0,0,0,0,0,0,0,'check for Gunnar Thorvardsson 24162 - terminate if alive'),
(20154,3,10,24162,300000,0,0,0,0x08,0,0,0,0,1501.596,-5607.046,226.9952,5.532694,'summon Gunnar Thorvardsson');
