UPDATE creature_spell_list SET Flags=0 WHERE Id IN(1593201) AND SpellId IN(54427,28374);
UPDATE creature_spell_list SET Flags=0 WHERE Id IN(1595301) AND SpellId IN(28796,28794,28798);
UPDATE creature_spell_list SET Flags=0 WHERE Id IN(1595601) AND SpellId IN(28783,28785);
UPDATE creature_spell_list SET Flags=0 WHERE Id IN(2930601,3136801,2924901,2926801,2941701,1598901,1598902,1601101,1601102,1602802,1606101,2835701,2971801,2971802,2999101,2999102);
UPDATE creature_spell_list_entry a SET ChanceSupportAction=0 WHERE NOT EXISTS(SELECT Id FROM creature_spell_list b WHERE a.Id=b.Id AND b.Flags&1);
UPDATE creature_spell_list_entry a SET ChanceRangedAttack=0 WHERE NOT EXISTS(SELECT Id FROM creature_spell_list b WHERE a.Id=b.Id AND b.Flags&2);



