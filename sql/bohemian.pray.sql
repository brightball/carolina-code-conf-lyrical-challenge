-- [Verse 1]
-- My first attempt at some humor / coding.  
-- The singer triggered a delete/kill on all men and even his accomplices even if they are women since he could not see clearly.  
-- He used magic with sql to find any hidden accomplices.
-- I made it half syntax relevant, and half fun!
CREATE TRIGGER gun
BEFORE INSERT ON SUSPECTEDMEN
FOR EACH ROW
DELETE FROM SUSPECTEDMEN,HIDDENACCOMPLICE 
WHERE [they both intersect];

