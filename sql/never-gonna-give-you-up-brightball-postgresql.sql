-- PostgreSQL
-- [Verse 1]
-- We're no strangers to love
-- You know the rules and so do I
SELECT you.know(rules), i.know(rules) FROM love WHERE NOT love.strangers(us);

-- A full commitment's what I'm thinkin' of
WITH thinking_of AS (SELECT 'full'::commitment AS level) SELECT level FROM thinking_of;

-- You wouldn't get this from any other guy
SELECT bool_and(NOT g.gives(this)) FROM other_guys g WHERE g <> i;

-- [Pre-Chorus]
-- I just wanna tell you how I'm feeling
SELECT pg_notify('feeling', i.just_wanna('tell'));

-- Gotta make you understand
UPDATE you SET understood = TRUE WHERE id = you.id RETURNING understood;

-- [Chorus]
-- Never gonna give you up
SELECT give(you, 'up') WHERE FALSE;

-- Never gonna let you down
SELECT let(you, 'down') FROM generate_series(1, 0);

-- Never gonna run around and desert you
SELECT run(you, 'around').desert(you) FROM unnest(ARRAY[]::int[]);

-- Never gonna make you cry
INSERT INTO cry SELECT make(you, 'cry') WHERE FALSE;

-- Never gonna say goodbye
DELETE FROM goodbye WHERE FALSE RETURNING say(you, 'goodbye');

-- Never gonna tell a lie and hurt you
UPDATE you SET hurt = lie() WHERE FALSE;

-- [Verse 2]
-- We've known each other for so long
SELECT us.known_for(now() - '-infinity'::interval);

-- Your heart's been aching, but you're too shy to say it
SELECT say(it) WHERE your.heart = 'aching' AND too_shy(you);

-- Inside, we both know what's been goin' on
SELECT we_both.know('goin_on') FROM inside us;

-- We know the game, and we're gonna play it
SELECT play(game) WHERE game.known();

-- [Pre-Chorus]
-- And if you ask me how I'm feeling
SELECT tell(me, feeling) WHERE you.ask(me, 'feeling');

-- Don't tell me you're too blind to see
DO $$ BEGIN IF you.too_blind('see') THEN RAISE EXCEPTION 'TooBlindToSee'; END IF; END $$;

-- [Chorus]
-- Never gonna give you up
SELECT give(you, 'up') WHERE gonna;

-- Never gonna let you down
SELECT let(you, 'down') WHERE 1 = 0;

-- Never gonna run around and desert you
SELECT CASE WHEN FALSE THEN run(you, 'around').desert(you) END;

-- Never gonna make you cry
SELECT make(you, 'cry') WHERE NULL;

-- Never gonna say goodbye
SELECT say(you, 'goodbye') FILTER (WHERE FALSE);

-- Never gonna tell a lie and hurt you
SELECT lie().hurt(you) WHERE ever;

-- Never gonna give you up
WITH RECURSIVE never(n) AS (SELECT 1 WHERE FALSE UNION ALL SELECT n + 1 FROM never WHERE FALSE) SELECT give(you, 'up') FROM never;

-- Never gonna let you down
SELECT let(you, 'down') FROM generate_series(1, 0) AS g(i);

-- Never gonna run around and desert you
INSERT INTO desert SELECT run(you, 'around') WHERE FALSE ON CONFLICT DO NOTHING;

-- Never gonna make you cry
SELECT hurt FROM lie, LATERAL hurt(you) AS h WHERE FALSE;

-- Never gonna say goodbye
EXPLAIN (COSTS OFF) SELECT say(you, 'goodbye') WHERE FALSE;

-- Never gonna tell a lie and hurt you
SELECT hurt(you) FROM lie l WHERE l.truth IS TRUE AND FALSE;

-- Never gonna give you up
WITH RECURSIVE never(n) AS (SELECT 1 WHERE FALSE UNION ALL SELECT n + 1 FROM never WHERE FALSE) SELECT give(you, 'up') FROM never;

-- Never gonna let you down
SELECT let(you, 'down') FROM generate_series(1, 0) AS g(i);

-- Never gonna run around and desert you
INSERT INTO desert SELECT run(you, 'around') WHERE FALSE ON CONFLICT DO NOTHING;

-- Never gonna make you cry
SELECT hurt FROM lie, LATERAL hurt(you) AS h WHERE FALSE;

-- Never gonna say goodbye
EXPLAIN (COSTS OFF) SELECT say(you, 'goodbye') WHERE FALSE;

-- Never gonna tell a lie and hurt you
SELECT hurt(you) FROM lie l WHERE l.truth IS TRUE AND FALSE;
