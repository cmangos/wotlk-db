-- First Aid, Cooking and Fishing trainers in Outland
-- Master Skill books and manuals were removed in patch 3.1.0 and replaced with straight-up training. 

-- 1) NPC 18990 Burko
UPDATE creature_template SET NpcFlags = 80 WHERE entry = 18990;

-- 2) NPC 18991 Aresella
UPDATE creature_template SET NpcFlags = 80 WHERE entry = 18991;
DELETE FROM npc_vendor WHERE entry = 18991;
DELETE FROM npc_trainer WHERE entry = 18991;
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES
(18991,3279,100,0,0,0),
(18991,3280,500,129,50,0),
(18991,3276,100,129,40,0),
(18991,7934,250,129,80,0),
(18991,3277,250,129,80,0),
(18991,3278,1000,129,115,0),
(18991,54254,1000,129,125,0),
(18991,7928,5000,129,150,0),
(18991,7929,25000,129,180,0),
(18991,10847,25000,129,200,35),
(18991,10840,60000,129,210,0),
(18991,10841,100000,129,240,0),
(18991,18629,125000,129,260,0),
(18991,18630,150000,129,290,0),
(18991,54255,100000,129,275,0),
(18991,27032,200000,129,300,0),
(18991,27033,400000,129,360,0);

-- 3) NPC 19184 Mildred Fletcher
UPDATE creature_template SET NpcFlags = 80 WHERE entry = 19184;
DELETE FROM npc_trainer WHERE entry = 19184;
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES
(19184,3279,100,0,0,0),
(19184,3280,500,129,50,0),
(19184,3276,100,129,40,0),
(19184,7934,250,129,80,0),
(19184,3277,250,129,80,0),
(19184,3278,1000,129,115,0),
(19184,54254,1000,129,125,0),
(19184,7928,5000,129,150,0),
(19184,7929,25000,129,180,0),
(19184,10847,25000,129,200,35),
(19184,10840,60000,129,210,0),
(19184,10841,100000,129,240,0),
(19184,18629,125000,129,260,0),
(19184,18630,150000,129,290,0),
(19184,54255,100000,129,275,0),
(19184,27032,200000,129,300,0),
(19184,27033,400000,129,360,0);

-- 4) NPC 18911 Juno Dufrain
DELETE FROM npc_vendor WHERE item = 27532; /* Master Fishing - The Art of Angling */

-- 5) NPC 18993 Naka
-- 6) NPC 18988 Baxter (Pt. 1)
-- 7) NPC 18987 Gaston
DELETE FROM npc_vendor WHERE item = 27736; /* Master Cookbook */

-- 6) NPC 18988 Baxter (Pt. 2)
UPDATE creature_template SET NpcFlags = 80 WHERE entry = 18988;
