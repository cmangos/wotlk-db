-- r3130
UPDATE creature_template SET ScriptName='npc_grand_admiral_westwind' WHERE entry=29621;

-- r3131
UPDATE creature_template SET ScriptName='npc_concentrated_bullet' WHERE entry IN (34628,34630);
UPDATE creature_template SET ScriptName='npc_valkyr_stalker' WHERE entry IN (34704,34720);

-- r3135
UPDATE instance_template SET ScriptName='instance_halls_of_reflection' WHERE map=668;

-- r3140
UPDATE creature_template SET ScriptName='npc_bone_spike' WHERE entry IN (36619,38711,38712);
UPDATE creature_template SET ScriptName='npc_coldflame' WHERE entry=36672;