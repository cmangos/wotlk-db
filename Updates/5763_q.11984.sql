-- q.11984 'Filling the Cages'
-- summon budd fix
DELETE FROM dbscripts_on_gossip WHERE id = 930101;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(930101,1,15,6962,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 6962'), -- dismiss existing pet
(930101,10,15,61545,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Budd'),
(930101,1500,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'despawn static Budd'),
(930101,2000,0,0,0,0,32663,50,39,25658,0,0,0,0,0,0,0,0,0,0,'Budd - say');
DELETE FROM dbscripts_on_spell WHERE id = 6962;
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(6962,1,15,36562,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'');
