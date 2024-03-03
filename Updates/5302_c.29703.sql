-- Sheddle Glossgleam 29703
-- RP
UPDATE creature SET position_x = 5811.384, position_y = 676.7547, position_z = 658.139, spawndist = 0, MovementType = 0 WHERE id = 29703;
DELETE FROM dbscripts_on_event WHERE id IN (20892);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20892,1,31,29703,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29703'),
(20892,100,21,1,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,0,'buddy - active'),
(20892,101,36,0,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,0,'buddy - face Player'),
(20892,200,0,0,0,0,29703,526138,3|0x10,33178,33180,33181,0,0,0,0,0,'buddy - random say'),
(20892,2000,3,0,0,0,29703,526138,3|0x10,0,0,0,0,5809.938,676.03973,658.02826,100,'buddy - move'),
(20892,4500,36,0,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,0,'buddy - face Player'),
(20892,6000,28,8,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,0,'buddy - STATE_KNEEL'),
(20892,10001,15,62089,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,0,'buddy - cast 62089 on Player'),
(20892,10002,28,0,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND'),
(20892,11500,0,0,0,0,29703,526138,3|0x10,33182,33183,33179,0,0,0,0,0,'buddy - random say'),
(20892,13000,3,0,0,0,29703,526138,3|0x10,0,0,0,0,5811.384,676.7547,658.139,100,'buddy - move'),
(20892,15000,3,0,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,2.565634,'buddy - move'),
(20892,15001,21,0,0,0,29703,526138,3|0x10,0,0,0,0,0,0,0,0,'buddy - active');
