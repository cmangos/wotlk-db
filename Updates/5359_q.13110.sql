-- q.13110 'The Restless Dead'

-- Released Soul 30736
UPDATE creature_template SET InhabitType = 4, Faction = 35, UnitFlags = 33555200 WHERE entry = 30736;
DELETE FROM dbscripts_on_relay WHERE id =  20922;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20922,1,3,0,0,0,0,0,0x04,0,0,0,0,0,0,20,0,'Part of Released Soul 30736 EAI: move'),
(20922,2,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Released Soul 30736 EAI: despawn');
DELETE FROM spell_script_target WHERE entry IN (57806);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(57806,2,30202,0);
