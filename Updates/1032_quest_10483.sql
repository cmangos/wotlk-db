-- q.10483 'Ill Omens'
UPDATE quest_template SET CompleteScript = 10483 WHERE entry = 10483;
UPDATE creature_template_addon SET emote = 0 WHERE entry = 21133;

DELETE FROM dbscripts_on_quest_end WHERE id = 10483;
INSERT INTO dbscripts_on_quest_end (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(10483,0,0,0,0,0,2000001339,0,0,0,0,0,0,'Corporal Ironridge - %s inspects the talisman $n gave him...',0,0,0,0),
(10483,0,1,69,0,0,0,0,0,0,0,0,0,'Corporal Ironridge - STATE_USESTANDING',0,0,0,0),
(10483,3,1,0,0,0,0,0,0,0,0,0,0,'Corporal Ironridge - ONESHOT_NONE',0,0,0,0),
(10483,4,0,0,0,0,2000001340,2000001341,2000001342,2000001343,0,0,0,'Corporal Ironridge - Random Text',0,0,0,0),
(10483,7,3,0,0,0,0,0,0,0,0,0,0,'Corporal Ironridge - Set Orientation',0,0,0,2.565634),
(10483,7,0,0,0,0,2000001344,0,0,0,0,0,0,'Corporal Ironridge - %s faces the Bleeding Hollow fort of Zeth''Gor...',0,0,0,0),
(10483,10,0,0,0,0,2000001345,0,0,0,0,0,0,'Corporal Ironridge - Damn you!  Damn all of you bleeding fel orcs!  May your souls rot in the belly of whatever Dark Power that fuels you!',0,0,0,0),
(10483,13,3,0,0,0,0,0,0,0,0,0,0,'Corporal Ironridge - Set Orientation',0,0,0,2.251475);

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001339 AND 2000001345;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001339, '%s inspects the talisman $n gave him...', 0, 2, 0, 0, 'Corporal Ironridge (Entry: 21133)'),
(2000001340, 'Ah, yes... Private Guarding.  He always was quick to laugh... until a Bleeding Hollow Raid tore out his throat!', 0, 0, 0, 1, 'Corporal Ironridge (Entry: 21133)'),
(2000001341, 'Ah, this was from Private Denning.  I remember when he fell...', 0, 0, 0, 1, 'Corporal Ironridge (Entry: 21133)'),
(2000001342, 'This one was from Corporal Stonewell... he died protecting a field hospital...', 0, 0, 0, 1, 'Corporal Ironridge (Entry: 21133)'),
(2000001343, 'This insignia is from Sergeant Rantack, once my superior.  You''d never find a tougher soldier than old Rantack...', 0, 0, 0, 1, 'Corporal Ironridge (Entry: 21133)'),
(2000001344, '%s faces the Bleeding Hollow fort of Zeth\'Gor...', 0, 2, 0, 0, 'Corporal Ironridge (Entry: 21133)'),
(2000001345, 'Damn you!  Damn all of you bleeding fel orcs!  May your souls rot in the belly of whatever Dark Power that fuels you!', 0, 0, 0, 15, 'Corporal Ironridge (Entry: 21133)');

-- Corporal Ironridge gossip should change after Ill Omens is completed
DELETE FROM conditions WHERE condition_entry = 1236;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1236, 8, 10483, 0); -- Quest 10483 Rewarded

UPDATE gossip_menu SET condition_id = 1236 WHERE entry = 8241 AND text_id = 10253; -- Quest 10254 Rewarded
