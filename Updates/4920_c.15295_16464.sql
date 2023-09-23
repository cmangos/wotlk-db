-- WoTLK DB ONLY
-- data taken from tdb and ajusted to wotlk conditions

-- Well Watcher Solanian 15295
-- gossip corrected
UPDATE gossip_menu SET condition_id = 843 WHERE entry = 6569 AND text_id = 7784;
UPDATE gossip_menu SET condition_id = 820 WHERE entry = 6569 AND text_id = 7791;

-- Apothecary Venustus 16464
-- gossip corrected
UPDATE gossip_menu SET condition_id = 10059 WHERE entry = 7251 AND text_id = 8566;
UPDATE gossip_menu SET condition_id = 10061 WHERE entry = 7251 AND text_id = 8623;
DELETE FROM conditions WHERE condition_entry IN (1504,1505,1506,10059,10060,10061);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(10059,8,9275,0,0,0,0,''),
(10060,-3,10059,0,0,0,0,''),
(10061,-1,10060,842,0,0,0,'');