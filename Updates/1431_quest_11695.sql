-- q.11695 'The Horn of Elemental Fury'
-- pois corrected
Delete from `quest_poi` where `questId`=11695;
insert into `quest_poi` (`questId`, `poiId`, `objIndex`, `mapId`, `mapAreaId`, `floorId`, `unk3`, `unk4`) values
('11695','0','4','571','486','0','1','1'),
('11695','1','5','571','486','0','2','1'),
('11695','2','-1','571','486','0','0','1');

Delete from `quest_poi_points` where `questId`=11695;
insert into `quest_poi_points` (`questId`, `poiId`, `x`, `y`) values
('11695','0','3346','4621'),
('11695','1','3809','4033'),
('11695','2','3523','4214');
