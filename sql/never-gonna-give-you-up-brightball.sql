-- PL/SQL
-- [Verse 1]
-- We're no strangers to love
-- You know the rules and so do I
SELECT you.know(rules), i.know(rules) FROM love WHERE love.strangers = 'NO';

-- A full commitment's what I'm thinkin' of
thinking_of := Commitment.FULL;

-- You wouldn't get this from any other guy
SELECT 1 FROM dual WHERE NOT EXISTS (SELECT 1 FROM other_guys g WHERE g <> i AND g.gives(this));

-- [Pre-Chorus]
-- I just wanna tell you how I'm feeling
BEGIN i.just_wanna(tell(you, feeling)); END;

-- Gotta make you understand
UPDATE you SET understood = 'YES' WHERE you_id = you.id RETURNING understood INTO v_understood;

-- [Chorus]
-- Never gonna give you up
SELECT give(you, 'up') FROM dual WHERE 1 = 0;

-- Never gonna let you down
FOR r IN (SELECT 'down' FROM dual WHERE 1 = 0) LOOP let(you, 'down'); END LOOP;

-- Never gonna run around and desert you
MERGE INTO you u USING (SELECT run, around, desert FROM dual WHERE 1 = 0) d ON (1 = 0);

-- Never gonna make you cry
INSERT INTO cry SELECT make(you, 'cry') FROM dual WHERE FALSE;

-- Never gonna say goodbye
DELETE FROM goodbye WHERE say(you, 'goodbye') AND 1 = 0;

-- Never gonna tell a lie and hurt you
UPDATE you SET hurt = lie() WHERE 1 = 0;

-- [Verse 2]
-- We've known each other for so long
SELECT us.known_for(SYSDATE - DATE '0001-01-01') FROM dual;

-- Your heart's been aching, but you're too shy to say it
IF your.heart = 'ACHING' AND too_shy(you) THEN say(it); END IF;

-- Inside, we both know what's been goin' on
SELECT we_both.know('goin_on') FROM inside us;

-- We know the game, and we're gonna play it
BEGIN game.known(); play(game); END;

-- [Pre-Chorus]
-- And if you ask me how I'm feeling
IF you.ask(me, 'feeling') THEN tell(me, feeling); END IF;

-- Don't tell me you're too blind to see
IF you.too_blind('see') THEN RAISE too_blind_to_see; END IF;

-- [Chorus]
-- Never gonna give you up
IF gonna THEN give(you, 'up'); END IF;

-- Never gonna let you down
WHILE (1 = 0) LOOP let(you, 'down'); END LOOP;

-- Never gonna run around and desert you
CASE WHEN 1 = 2 THEN run(you, 'around').desert(you); END CASE;

-- Never gonna make you cry
IF FALSE THEN make(you, 'cry'); END IF;

-- Never gonna say goodbye
GOTO skip_goodbye; say(you, 'goodbye'); <<skip_goodbye>> NULL;

-- Never gonna tell a lie and hurt you
IF ever THEN lie().hurt(you); END IF;

-- Never gonna give you up
GOTO skip_give; give(you, 'up'); <<skip_give>> NULL;

-- Never gonna let you down
FOR i IN REVERSE 1..0 LOOP let(you, 'down'); END LOOP;

-- Never gonna run around and desert you
SAVEPOINT before_desert; ROLLBACK TO before_desert;

-- Never gonna make you cry
OPEN c_cry FOR SELECT make(you, 'cry') FROM dual WHERE 1 = 0; FETCH c_cry INTO v_cry;

-- Never gonna say goodbye
GOTO skip_goodbye; say(you, 'goodbye'); <<skip_goodbye>> NULL;

-- Never gonna tell a lie and hurt you
SELECT hurt(you) FROM lie l WHERE l.truth = 'YES' AND 1 = 0;

-- Never gonna give you up
GOTO skip_give; give(you, 'up'); <<skip_give>> NULL;

-- Never gonna let you down
FOR i IN REVERSE 1..0 LOOP let(you, 'down'); END LOOP;

-- Never gonna run around and desert you
SAVEPOINT before_desert; ROLLBACK TO before_desert;

-- Never gonna make you cry
OPEN c_cry FOR SELECT make(you, 'cry') FROM dual WHERE 1 = 0; FETCH c_cry INTO v_cry;

-- Never gonna say goodbye
GOTO skip_goodbye; say(you, 'goodbye'); <<skip_goodbye>> NULL;

-- Never gonna tell a lie and hurt you
SELECT hurt(you) FROM lie l WHERE l.truth = 'YES' AND 1 = 0;
