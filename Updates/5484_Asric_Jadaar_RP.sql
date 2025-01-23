-- Asric & Jadaar - Event
-- Patch 2.3.0 (Final TBC) Moved from the Lower City to the World's End Tavern.
-- Patch 3.2.0 (Final WoTLK) Moved from Dalaran to the Argent Tournament Grounds.

/* TBC Final
-- emotes and timing missing
-- Arguments at World's End Tavern
-- 1st:
Peacekeeper Jadaar says: I must have taken leave of my senses, allowing a Scryer to aid in such a delicate operation...
Investigator Asric says: My services were rendered. The protection of the city is not my jurisdiction. I believe that's why they call you "peacekeepers?"
Peacekeeper Jadaar says: Had we been fully handling the investigation, I assure you, the evidence would have remained safe. Instead we used your highly questionable methods...
Investigator Asric says: Of course. My methods are questionable. It was my methodology, I'll note, that exposed that "Griftah" as a fraud in the first place! You had only to keep the peace, and you failed in that simple task!
Peacekeeper Jadaar says: [Draenei] Ashjrakamas nagasraka zekul (Translation: Incompetent, sniveling dandy.)
Investigator Asric says: [Thalassian] Shan're dor'ano shan're (Translation: Pompous, uptight windbag.)
Peacekeeper Jadaar and Investigator Asric glare at each other silently, their eyes narrowed.
-- 2nd:
Peacekeeper Jadaar says: How could you have lost the evidence?!
Investigator Asric says: I thought it was secure! If your peacekeepers had the clout to control the thieves of this city, this wouldn't have happened!
Peacekeeper Jadaar says: You blame the peacekeepers for your failure? You were entrusted with a simple task. The troll was obviously a fraud!
Investigator Asric says: And you're entrusted with keeping the city safe! How am I supposed to perform my simple task if the streets are thick with lowlifes? I can't spit in Shattrath without hitting some gruby burglar.
Investigator Asric says: ...not that I would spit, of course.
Peacekeeper Jadaar says: I was trying to oust one of those lowlifes you so loathe permanently! Next time, I'll be certain to specify that I require a competent investigator!
Investigator Asric says: [Thalassian] Ri osa FULO talah banthalos (Translation: Do you EVER cease prattling?)
Investigator Asric says: [Thalassian] Diel nei dorNi ala ni ethala do ala ri shar diel mandalas (Translation: That man didn't pay me enough to put up with this blowhard...)
Peacekeeper Jadaar says: What was that?
Investigator Asric says: Oh, nothing. Merely thinking aloud.
*/

-- Final WoTLK
-- remove them from TBC area & Dalaran
DELETE FROM creature_addon WHERE guid IN (10200,81641,531692,531694);
DELETE FROM creature_movement WHERE Id IN (10200,81641,531692,531694);
DELETE FROM game_event_creature WHERE guid IN (10200,81641,531692,531694);
DELETE FROM game_event_creature_data WHERE guid IN (10200,81641,531692,531694);
DELETE FROM creature_battleground WHERE guid IN (10200,81641,531692,531694);
DELETE FROM creature_linking WHERE guid IN (10200,81641,531692,531694)
 OR master_guid IN (10200,81641,531692,531694);
DELETE FROM creature WHERE guid IN (10200,81641,531692,531694);

-- Jadaar 31899 & Asric 31898 - RP 
DELETE FROM dbscript_random_templates WHERE `id` = 20382;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20382,1,21152,0,'Part of Jadaar 31899 EAI: - script 1 (WOTLK event - Jadaar 31899 & Asric 31898 - RP 1)'),
(20382,1,21153,0,'Part of Jadaar 31899 EAI: - script 2 (WOTLK event - Jadaar 31899 & Asric 31898 - RP 2)'),
(20382,1,21154,0,'Part of Jadaar 31899 EAI: - script 3 (WOTLK event - Jadaar 31899 & Asric 31898 - RP 3)'),
(20382,1,21155,0,'Part of Jadaar 31899 EAI: - script 4 (WOTLK event - Jadaar 31899 & Asric 31898 - RP 4)'),
(20382,1,21156,0,'Part of Jadaar 31899 EAI: - script 5 (WOTLK event - Jadaar 31899 & Asric 31898 - RP 5)');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21152 AND 21156;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21152
(21152,1,31,31898,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: search for 31898'),
(21152,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: active'),
(21152,101,21,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy active'),
(21152,200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 23:31:35.257
(21152,300,0,0,0,0,0,0,0x04,36773,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'),
(21152,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 23:31:38.519
(21152,6000,1,6,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 23:31:41.764
(21152,6100,0,0,0,0,31898,20,7,36774,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'),
(21152,12000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 23:31:48.233
(21152,12100,0,0,0,0,0,0,0x04,36775,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'), -- 23:31:48.336
(21152,18000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 23:31:54.709
(21152,18100,0,0,0,0,31898,20,7,36776,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- 23:31:54.810
(21152,21000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 23:31:57.950
(21152,21100,0,0,0,0,0,0,0x04,36777,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'), -- 23:31:58.057
(21152,27000,1,273,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 23:32:04.427
(21152,27100,0,0,0,0,31898,20,7,36778,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- 23:32:04.534 -- Discretion is the b....
(21152,28000,21,0,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy unactive'),
(21152,28100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: unactive'),
-- 21153
(21153,1,31,31898,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: search for 31898'),
(21153,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: active'),
(21153,101,21,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy active'),
(21153,200,42,0,0,0,31898,20,7,2703,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: temp equip'), -- 01:28:21.000 - UNIT_VIRTUAL_ITEM_SLOT_ID + 1: 2703
(21153,201,42,0,0,0,0,0,0x04,2703,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: temp equip'),
(21153,500,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 01:28:21.000
(21153,600,0,0,0,0,31898,20,7,36818,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- To your health, windbag.
(21153,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 01:28:24.000
(21153,3100,0,0,0,0,0,0,0x04,36819,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'),
(21153,7000,1,92,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 01:28:28.000
(21153,7001,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'),
(21153,12000,42,0,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: reset equip'), -- 01:28:33.000
(21153,12001,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: reset equip'),
(21153,13000,21,0,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy unactive'),
(21153,13100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: unactive'),
-- 21154
(21154,1,31,31898,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: search for 31898'),
(21154,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: active'),
(21154,101,21,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy active'),
(21154,200,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 01:30:46.000
(21154,300,0,0,0,0,31898,20,7,36744,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- Now comes our cha
(21154,3000,1,5,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 01:30:49.000
(21154,9000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 01:30:54.000
(21154,9100,0,0,0,0,0,0,0x04,36745,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'), -- I don\'t know.
(21154,14000,1,6,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 01:31:00.000
(21154,14100,0,0,0,0,31898,20,7,36746,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- What could be holding yo
(21154,17000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 01:31:03.000
(21154,24000,1,274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 01:31:09.000
(21154,24100,0,0,0,0,0,0,0x04,36747,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'), -- I don\'t know.
(21154,29000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 01:31:14.000
(21154,29100,0,0,0,0,31898,20,7,36748,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- Ah. That mi
(21154,30000,21,0,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy unactive'),
(21154,30100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: unactive'),
-- 21155
(21155,1,31,31898,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: search for 31898'),
(21155,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: active'),
(21155,101,21,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy active'),
(21155,200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 12:48:53.000
(21155,300,0,0,0,0,0,0,0x04,36754,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'), -- You realize, of cours
(21155,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 12:48:56.000
(21155,9000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 12:49:02.000
(21155,9100,0,0,0,0,31898,20,7,36755,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- There is no doubt in
(21155,11000,1,25,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 12:49:04.000
(21155,19000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 12:49:12.000
(21155,19100,0,0,0,0,0,0,0x04,36769,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'), -- Bullheadedness? It is 
(21155,21000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 12:49:14.000
(21155,27000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 12:49:20.000
(21155,27100,0,0,0,0,31898,20,7,36770,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- Typical empty b
(21155,30000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 12:49:23.000
(21155,34000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'),
(21155,35000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'), -- 12:49:29.000
(21155,35100,0,0,0,0,0,0,0x04,36771,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'), -- I hear those lances
(21155,37000,1,274,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 12:49:31.000
(21155,37100,0,0,0,0,31898,20,7,36772,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- Just as well.
(21155,41000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'), -- 12:49:23.000
(21155,42000,21,0,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy unactive'),
(21155,42100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: unactive'),
-- 21156
(21156,1,31,31898,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: search for 31898'),
(21156,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: active'),
(21156,101,21,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy active'),
(21156,200,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'),
(21156,300,0,0,0,0,0,0,0x04,36749,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'),
(21156,6000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'),
(21156,6100,0,0,0,0,31898,20,7,36750,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- I had a... S
(21156,9000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'),
(21156,15000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'),
(21156,15100,0,0,0,0,31898,20,7,36751,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- Needless to say,
(21156,21000,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: emote'),
(21156,21100,0,0,0,0,0,0,0x04,36752,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: say'),
(21156,25000,1,1,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'),
(21156,25100,0,0,0,0,31898,20,7,36753,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy say'), -- ...
(21156,28000,1,274,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy emote'),
(21156,29000,21,0,0,0,31898,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: buddy unactive'),
(21156,29100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 31899 EAI: unactive');
