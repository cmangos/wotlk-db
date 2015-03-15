-- ToC25
-- linking
DELETE FROM creature_linking_template WHERE entry IN (34496,34704,34720,34628,34630,34567,34568);
INSERT INTO creature_linking_template (entry,map,master_entry,flag,search_range) VALUES
(34496,649,34497,4099,0),
(34704,649,34497,4112,0),
(34720,649,34497,4112,0),
(34628,649,34497,4112,0),
(34630,649,34497,4112,0),
(34567,649,34497,4112,0),
(34568,649,34497,4112,0);
-- achiev criterias
-- upper back pain
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11779,11780,11802,11801) AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement VALUES
(11779,18,0,0),
(11780,18,0,0),
(11802,18,0,0),
(11801,18,0,0);
-- three sixty pain spike
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11838,11861,11839,11862) AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement VALUES
(11838,18,0,0),
(11861,18,0,0),
(11839,18,0,0),
(11862,18,0,0);
-- salt and pepper
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11778,11818,11860,12258) AND type IN (11, 18);
-- tribute immportality
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12358,12359) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12358,18,0,0),
(12359,18,0,0),
(12358,12,3,0),
(12359,12,3,0);
-- tribute insanity
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12349,12343) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12349,18,0,0),
(12343,18,0,0),
(12349,12,2,0),
(12343,12,3,0);
-- tribute mad skill
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12347,12348,12341,12342) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12347,18,0,0),
(12348,18,0,0),
(12347,12,2,0),
(12348,12,2,0),
(12341,18,0,0),
(12342,18,0,0),
(12341,12,3,0),
(12342,12,3,0);
-- tribute skill
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12344,12345,12346,12338,12339,12340) AND type IN (11, 18, 12);
INSERT INTO achievement_criteria_requirement VALUES
(12344,18,0,0),
(12345,18,0,0),
(12346,18,0,0),
(12344,12,2,0),
(12345,12,2,0),
(12346,12,2,0),
(12338,18,0,0),
(12339,18,0,0),
(12340,18,0,0),
(12338,12,3,0),
(12339,12,3,0),
(12340,12,3,0);
