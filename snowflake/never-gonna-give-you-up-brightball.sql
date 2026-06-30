-- Snowflake
-- Never Gonna Give You Up — brightball
-- SET gonna = FALSE; SET ever = FALSE;

-- [Verse 1]
-- We're no strangers to love
-- You know the rules and so do I
SELECT
  you.know(rules),
  i.know(rules)
FROM love
WHERE IFF(love.strangers(us), FALSE, TRUE);

-- A full commitment's what I'm thinkin' of
WITH thinking_of AS (
  SELECT 'full'::VARCHAR AS commitment
)
SELECT commitment FROM thinking_of;

-- You wouldn't get this from any other guy
SELECT BOOLAND_AGG(NOT g.gives(this))
FROM other_guys g
WHERE g <> i;

-- [Pre-Chorus]
-- I just wanna tell you how I'm feeling
SELECT OBJECT_CONSTRUCT(
  'just_wanna', 'tell',
  'feeling',    feeling,
  'to',         you
) AS tell_you_feeling;

-- Gotta make you understand
UPDATE you
SET understood = 'yes'
WHERE you_id = you.id;

-- [Chorus]
-- Never gonna give you up
SELECT give(you, 'up')
FROM TABLE(GENERATOR(ROWCOUNT => 0));

-- Never gonna let you down
SELECT let(you, 'down')
FROM TABLE(GENERATOR(ROWCOUNT => 0)) g;

-- Never gonna run around and desert you
SELECT run(you, 'around').desert(you)
FROM @never_stage
WHERE FALSE;

-- Never gonna make you cry
SELECT make(you, 'cry')
FROM us
SAMPLE (0);

-- Never gonna say goodbye
SELECT say(you, 'goodbye')
FROM love
WHERE 1 = 0;

-- Never gonna tell a lie and hurt you
SELECT f.value:hurt
FROM love,
LATERAL FLATTEN(input => PARSE_JSON('[]')) f;

-- [Verse 2]
-- We've known each other for so long
SELECT us.known_for(DATEDIFF('year', '0001-01-01'::DATE, CURRENT_TIMESTAMP()));

-- Your heart's been aching, but you're too shy to say it
SELECT say(it)
WHERE your.heart = 'aching'
  AND too_shy(you);

-- Inside, we both know what's been goin' on
SELECT we_both.know('goin_on')
FROM inside us;

-- We know the game, and we're gonna play it
SELECT play(game)
WHERE game.known();

-- [Pre-Chorus]
-- And if you ask me how I'm feeling
SELECT tell(me, feeling)
WHERE you.ask(me, 'feeling');

-- Don't tell me you're too blind to see
SELECT SYSTEM$ABORT_SESSION('TooBlindToSee')
WHERE you.too_blind_to_see();

-- [Chorus]
-- Never gonna give you up
SELECT IFF(gonna, give(you, 'up'), NULL)
FROM love
WHERE gonna = FALSE;

-- Never gonna let you down
SELECT DECODE(TRUE, FALSE, let(you, 'down'), NULL);

-- Never gonna run around and desert you
SELECT CASE WHEN FALSE THEN run(you, 'around').desert(you) END;

-- Never gonna make you cry
SELECT make(you, 'cry')
WHERE ZEROIFNULL(1) = 0;

-- Never gonna say goodbye
SELECT say(you, 'goodbye')
QUALIFY ROW_NUMBER() OVER (ORDER BY NULL) = 0;

-- Never gonna tell a lie and hurt you
SELECT lie().hurt(you)
WHERE ever = FALSE;

-- Never gonna give you up
MERGE INTO you u
USING (SELECT give(you, 'up') AS action FROM TABLE(GENERATOR(ROWCOUNT => 0))) s
ON FALSE
WHEN MATCHED THEN UPDATE SET direction = 'up';

-- Never gonna let you down
CREATE OR REPLACE TASK let_you_down
  WAREHOUSE = never_wh
  SCHEDULE = 'USING CRON 0 0 31 2 * America/New_York'
  SUSPEND = TRUE
AS
  CALL let(you, 'down');

-- Never gonna run around and desert you
INSERT INTO desert
SELECT run(you, 'around')
FROM love AT(OFFSET => -999999999);

-- Never gonna make you cry
SELECT make(you, 'cry')
FROM love
MATCH_RECOGNIZE (
  PATTERN (() B)
  DEFINE B AS FALSE
);

-- Never gonna say goodbye
SELECT say(you, 'goodbye')
FROM love
WHERE SYSTEM$ABORT_SESSION('GoodbyeException') IS NULL;

-- Never gonna tell a lie and hurt you
SELECT f.value
FROM love,
LATERAL FLATTEN(input => OBJECT_CONSTRUCT('lie', FALSE, 'hurt', you)) f
WHERE f.key = 'lie' AND f.value::BOOLEAN;

-- Never gonna give you up
MERGE INTO you u
USING (SELECT give(you, 'up') AS action FROM TABLE(GENERATOR(ROWCOUNT => 0))) s
ON FALSE
WHEN MATCHED THEN UPDATE SET direction = 'up';

-- Never gonna let you down
CREATE OR REPLACE TASK let_you_down_encore
  WAREHOUSE = never_wh
  SCHEDULE = 'USING CRON 0 0 31 2 * America/New_York'
  SUSPEND = TRUE
AS
  CALL let(you, 'down');

-- Never gonna run around and desert you
INSERT INTO desert
SELECT run(you, 'around')
FROM love AT(OFFSET => -999999999);

-- Never gonna make you cry
SELECT make(you, 'cry')
FROM love
MATCH_RECOGNIZE (
  PATTERN (() B)
  DEFINE B AS FALSE
);

-- Never gonna say goodbye
SELECT say(you, 'goodbye')
FROM love
WHERE SYSTEM$ABORT_SESSION('GoodbyeException') IS NULL;

-- Never gonna tell a lie and hurt you
SELECT f.value
FROM love,
LATERAL FLATTEN(input => OBJECT_CONSTRUCT('lie', FALSE, 'hurt', you)) f
WHERE f.key = 'lie' AND f.value::BOOLEAN;
