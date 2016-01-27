-- Emissary Valustraa
-- after path 3.3.2 she became a mage trainer
UPDATE creature_template SET TrainerClass = 8, TrainerTemplateId = 81 WHERE entry = 17105;
-- not needed anymore
DELETE FROM npc_trainer WHERE entry = 17105;
