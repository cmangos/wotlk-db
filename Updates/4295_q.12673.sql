-- q.12673 'It Rolls Downhill'

-- Geist WP Bunny 28751
UPDATE creature_template SET MovementType = 0 WHERE entry = 28751;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 28751;
-- Blight Geist 28750
UPDATE creature_template SET SpellList=0 WHERE entry=28750;
DELETE FROM creature_spell_list_entry WHERE Id = 2875000;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2875000, 'ZulDrak - Blight Geist - Charm spells',0,0);
DELETE FROM creature_spell_list WHERE Id = 2875000;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2875000,8,52245,0,0,0,100,0,0,0,0,0,'Blighted Geist - Harvest Blight Crystal');
-- spell: Harvest Blight Crystal 52245
DELETE FROM dbscripts_on_spell WHERE id IN (52247);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52247,2000,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,2500,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,3000,1,399,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,4000,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52247,5000,40,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn object'),
(52247,6000,15,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52247,6500,15,52248,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52247,7000,14,52244,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52247,10000,3,0,0,0,0,0,0x04,0,0,0,0,6174.282,-2017.247,245.1156,100,'force to move');
