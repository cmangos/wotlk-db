DELETE FROM achievement_criteria_requirement WHERE criteria_id IN(4944,4946,4948,4950,4949,4951,4952,4955,4953,4958,4954,4956,4957);
INSERT INTO achievement_criteria_requirement(criteria_id,type,value1,value2) VALUES
(4944,23,0,1), -- total npc kills
(4946,23,0,2), -- kill an npc that yields xp
(4948,23,1,0), -- beast
(4950,23,2,0), -- dragonkin
(4949,23,3,0), -- demon
(4951,23,4,0), -- elemental
(4952,23,5,0), -- giant
(4955,23,6,0), -- undead
(4953,23,7,0), -- humanoid
(4958,23,8,0), -- critter
(4954,23,9,0), -- mechanical
(4956,23,10,0), -- not specified
(4957,23,11,0); -- totem


