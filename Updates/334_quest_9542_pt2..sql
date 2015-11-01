-- q.9542 'Totem of Vark'
-- end part of quest
DELETE FROM dbscripts_on_quest_end WHERE id = 9542;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9542,1,14,30448,0,0,0,2,0,0,0,0,0,0,0,0,''),
(9542,3,10,17410,15000,0,0,0,0,0,0,0,-4489.97,-11645.7,11.577,2.5501,'summon Stillpine Ancestor Vark'),
(9542,6,0,0,0,17410,50,0,2000000679,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9542 WHERE entry = 9542;
DELETE FROM db_script_string WHERE entry = 2000000679;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000679,' [Furbolg] Bear witness to the savage acts of our adversaries, $n. They steal our young... our weak... Imprisoned here, they are left to the devices of the Bristlelimb. Set them free, Promised One!',0,0,0,0,NULL);
UPDATE creature_template SET MovementType = 0 WHERE Entry = 17410;
