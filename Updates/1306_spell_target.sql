/*
Nightlash hitting players with Spirit Steal
*/

DELETE FROM spell_script_target WHERE entry = 3477;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(3477, 1, 1772, 0),
(3477, 1, 1773, 0);

/*
http://www.wowhead.com/npc=21350/gronn-priest#comments:id=39991
Make Gronn-Priest interruptable
*/
UPDATE creature_template SET MechanicImmuneMask = 619397119 WHERE entry = 19389;
