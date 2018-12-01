-- Reexport script for Bortherhood of Light council in Light's Hope Chapel
-- with better timing to avoid texts scrolling too fast especially the last ones

-- NPC 16115 (Commander Eligor Dawnbringer) will handle all the script
-- with NPC 16114 (Scarlet Commander Marjhan) as a buddy
UPDATE creature SET MovementType = 2 WHERE id = 16115;

DELETE FROM creature_movement_template WHERE entry=16115;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(16115, 0, 1, 2298.86, -5341.83, 90.8799, 480000, 1611501, 2.16421);

DELETE FROM dbscripts_on_creature_movement WHERE id=1611501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1611501, 1000, 31, 16114, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114'),
(1611501, 2000, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),	-- prevent players from breaking the script by displaying gossip or giving/taking quest
(1611501, 2000, 29, 3, 2, 0, 16114, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1611501, 2000, 0, 0, 0, 0, 16114, 15, 7, 2000003135, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 10000, 0, 0, 0, 0, 0, 0, 0, 2000003136, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 17000, 0, 0, 0, 0, 0, 0, 0, 2000003137, 0, 0, 0, 0, 0, 0, 0, 'text emote'),
(1611501, 19000, 0, 0, 0, 0, 0, 0, 0, 2000003138, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 23000, 0, 0, 0, 0, 0, 0, 0, 2000003139, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 38000, 0, 0, 0, 0, 16114, 15, 7, 2000003140, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 42000, 0, 0, 0, 0, 0, 0, 0, 2000003141, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 46000, 0, 0, 0, 0, 16114, 15, 7, 2000003142, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 52000, 0, 0, 0, 0, 0, 0, 0, 2000003143, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 65000, 0, 0, 0, 0, 16114, 15, 7, 2000003144, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 71000, 0, 0, 0, 0, 0, 0, 0, 2000003145, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 76000, 0, 0, 0, 0, 16114, 15, 7, 2000003146, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 80000, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 82000, 0, 0, 0, 0, 0, 0, 0, 2000003147, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 96000, 0, 0, 0, 0, 0, 0, 0, 2000003148, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 115000, 0, 0, 0, 0, 0, 0, 0, 2000003149, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 132000, 0, 0, 0, 0, 0, 0, 0, 2000003150, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 152000, 0, 0, 0, 0, 0, 0, 0, 2000003151, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 165000, 28, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 166000, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'), -- resume gossip and quest giver flags
(1611501, 166000, 29, 3, 1, 0, 16114, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000003135 AND 2000003151;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003135, 'Your message did reach us, Commander, but by no means is our involvement here sanctioned by the Grand Crusader.', 0, 0, 0, 1, NULL),
(2000003136, 'Your leader takes residence at the doorstep to Naxxramas. Do you think he does not feel the pressure?', 0, 0, 0, 1, NULL),
(2000003137, '%s lowers the sound of his voice to a whisper.', 0, 2, 0, 0, NULL),
(2000003138, 'Even demons are capable of fear...', 0, 0, 0, 1, NULL),
(2000003139, 'Scourge activity in the Plaguelands has increased ten-fold. We are receiving reports of Scourge attacks from as far away as Kalimdor! Now how do you suppose this has happened? How have the wretched undead done that which was previously thought impossible? Is nowhere safe?', 0, 0, 0, 1, NULL),
(2000003140, 'The heathens will be forced to react. Orcs, bull-men...', 0, 0, 0, 1, NULL),
(2000003141, 'Tauren.', 0, 0, 0, 1, NULL),
(2000003142, 'Whatever. The revolting, unkempt Horde filth...', 0, 0, 0, 1, NULL),
(2000003143, 'You lack tact, Commander. This is not surprising. However, you are right in that the Horde will be forced to act. But not just the Horde. They already come - heroes from across the world.', 0, 0, 0, 1, NULL),
(2000003144, 'Too little, too late. The dam has broken. We are a bump in the road at best.', 0, 0, 0, 1, NULL),
(2000003145, 'So why are you here? What are we to do if there is no hope?', 0, 0, 0, 1, NULL),
(2000003146, 'There is always... Ashbringer.', 0, 0, 0, 1, NULL),
(2000003147, 'So this is what you have come for? To try and claim that which is the reason for the Dawn\'s existence and the Crusade\'s downfall? You open old wounds with your words, Commander!', 0, 0, 0, 5, NULL),
(2000003148, 'The Ashbringer is dead and there will never be another like him. The lesser Mograine is a far cry from the man his father was. You know this, Commander! It was, after all, your own leadership that was responsible for the death of the Scarlet Highlord Mograine.', 0, 0, 0, 274, NULL),
(2000003149, 'It was your leadership that manipulated a grieving child to try and recover the sword. A child that has grown into a man with nothing but vengeance and hatred in his heart! And for what? You are no closer to the sword now than you were five years ago.', 0, 0, 0, 1, NULL),
(2000003150, 'Yet you think that recovering Ashbringer will somehow turn the tide of battle? Let me let you in on a little secret, Commander: The power of the Ashbringer came from the man who would wield it... I was there, Commander. I watched him burn legions of undead in righteous fire before he would even unsheathe the blade. Alas, your grasp on history is ... lacking.', 0, 0, 0, 1, NULL),
(2000003151, 'Now be silent and note where you are, lest I inform Lord Fordring and his knights that you are no longer here on amicable terms. I am certain he would take great pleasure in seeing to your \'atonement.\'', 0, 0, 0, 25, NULL);
