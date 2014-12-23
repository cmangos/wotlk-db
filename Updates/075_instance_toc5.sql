
-- ToC5 updates

-- cleanup vehicle accessory - vehicles handled by script
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (35638,35635,35640,35641,35634,35637,35633,35768,34658,35636);

-- champion, mounts and trash updates
UPDATE creature_template SET vehicleTemplateId=489, MinLevel=80, MaxLevel=80, MinLevelHealth=12600, MaxLevelHealth=12600, UnitFlags=UnitFlags|33587456 WHERE entry=35768;
UPDATE creature_template SET vehicleTemplateId=430, MinLevel=80, MaxLevel=80, MinLevelHealth=12600, MaxLevelHealth=12600, UnitFlags=UnitFlags|33587456 WHERE entry=34658;
UPDATE creature_template SET MinLevel=80, MaxLevel=80, MinLevelHealth=12600, MaxLevelHealth=12600, UnitFlags=UnitFlags|33587456 WHERE entry IN (35636,35633,35637,35638,35634);
UPDATE creature_template SET UnitFlags=UnitFlags|33024 WHERE entry IN (34705,34702,34701,34657,34703,35572,35617);
UPDATE creature_template SET UnitFlags=UnitFlags|768 WHERE entry IN (35327,35314,35329,35332,35330,35331,35328);
UPDATE creature_template SET FactionAlliance=80, FactionHorde=80 WHERE entry=34657;
UPDATE creature_template SET FactionAlliance=1638, FactionHorde=1638 WHERE entry=34701;
UPDATE creature_template SET FactionAlliance=875, FactionHorde=875 WHERE entry=34702;
UPDATE creature_template SET FactionAlliance=55, FactionHorde=55 WHERE entry=34703;
UPDATE creature_template SET FactionAlliance=1078, FactionHorde=1078 WHERE entry=34705;
