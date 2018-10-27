-- Required count is 6, but the Objectives says 8. Changed text from 8 to 6.
-- https://www.wowhead.com/quest=7/deprecated-kobold-camp-cleanup
UPDATE
	`quest_template`
SET
	`Objectives` = 'Kill 6 Kobold Vermin, then return to Marshal McBride.'
WHERE
	`entry` = 7;