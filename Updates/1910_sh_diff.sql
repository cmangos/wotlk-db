-- Resolve DBScript Diff for Sethekk Halls

-- Delete dbscript_string moved to tbc range for alignment
DELETE FROM `dbscript_string` WHERE `entry` IN (
2000000600, -- 2000020108 "Thank you for freeing me, $n! I'm going to make my way to Shattrath!"
2000000601 --  2000020109 "Well done! Hurry, though, we don't want to be caught!"
);