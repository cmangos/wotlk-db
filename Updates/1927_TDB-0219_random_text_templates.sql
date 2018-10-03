-- Were moved to 1001 and 1002 is not used in wotlk-db as its unclear if the fix was legit
-- https://www.wowhead.com/quest=3701/the-smoldering-ruins-of-thaurissan#comments:id=17855
-- https://github.com/cmangos/tbc-db/commit/58aa53e81310595eb4b7703cf2672fa04b34270f
DELETE FROM dbscript_random_templates WHERE id in (1,2);

