-- q.9418 'Avruu's Orb' - Update [WOTLK ONLY]
-- WoTLK Data used
-- It seems that TBC had it diff... and many issues happened. Thats why blizz decided to redo it for wotlk
-- wotlk vid: https://youtu.be/iRRFpSzlMjE?t=1505
/*
--  Detected build: V3_0_3_9183
ServerToClient: SMSG_QUERY_GAME_OBJECT_RESPONSE (0x005F) Length: 134 ConnIdx: 0 Time: 01/08/2009 16:27:04.000 Number: 204631
Entry: 181606
Type: 2 (QuestGiver)
Display ID: 6964
[0] Name: Haal'eshi Altar
[1] Name: 
[2] Name: 
[3] Name: 
Icon Name: 
Cast Caption: 
Unk String: 
[0] Data: 0
[1] Data: 0
[2] Data: 0
[3] Data: 10219
[4] Data: 0
[5] Data: 0
[6] Data: 0
[7] Data: 0
[8] Data: 0
[9] Data: 0
[10] Data: 0
[11] Data: 0
[12] Data: 0
[13] Data: 0
[14] Data: 0
[15] Data: 0
[16] Data: 0
[17] Data: 0
[18] Data: 0
[19] Data: 0
[20] Data: 0
[21] Data: 0
[22] Data: 0
[23] Data: 0
Size: 2
*/

UPDATE gameobject_template SET type = 2, data3 = 10219, data22 = 0 WHERE entry = 181606; 