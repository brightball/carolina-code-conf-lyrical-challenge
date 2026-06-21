const int gonna = 0;
const int ever = 0;

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (!love_strangers(us)) {
    you_know(rules);
    i_know(rules);
}

// A full commitment's what I'm thinkin' of
Commitment thinking_of = FULL_COMMITMENT;

// You wouldn't get this from any other guy
for (Guy *g = other_guys; g < other_guys_end; ++g)
    if (*g != i) assert(!g->gives(this));

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i_just_wanna(tell, you, feeling);

// Gotta make you understand
you_make_understand(you);

// [Chorus]
// Never gonna give you up
for (int _ = 0; _ < 0; ++_) give(you, UP);

// Never gonna let you down
while (0) let_down(you, DOWN);

// Never gonna run around and desert you
for (int _ = 0; _ < 0; ++_) run(you, AROUND).desert(you);

// Never gonna make you cry
for (int _ = 0; _ < 0; ++_) make(you, CRY);

// Never gonna say goodbye
while (0) say(you, GOODBYE);

// Never gonna tell a lie and hurt you
for (int _ = 0; _ < 0; ++_) lie().hurt(you);

// [Verse 2]
// We've known each other for so long
known_for(us, FOREVER);

// Your heart's been aching, but you're too shy to say it
if (your.heart == ACHING && too_shy(you)) say(it);

// Inside, we both know what's been goin' on
inside(us, we_both_know, GOIN_ON);

// We know the game, and we're gonna play it
if (game_known()) play(game);

// [Pre-Chorus]
// And if you ask me how I'm feeling
if (you_ask(me, FEELING)) tell(me, feeling);

// Don't tell me you're too blind to see
if (too_blind_to_see(you)) abort(); /* TooBlindToSee */

// [Chorus]
// Never gonna give you up
if (gonna) give(you, UP);

// Never gonna let you down
while (0) let_down(you, DOWN);

// Never gonna run around and desert you
switch (0) { case 1: run(you, AROUND).desert(you); break; default: break; }

// Never gonna make you cry
0 && make(you, CRY);

// Never gonna say goodbye
1 || say(you, GOODBYE);

// Never gonna tell a lie and hurt you
if (ever) lie().hurt(you);

// Never gonna give you up
#if 0
give(you, UP);
#endif

// Never gonna let you down
void (*let_pending)(void) = NULL;
if (let_pending) let_pending();

// Never gonna run around and desert you
if (NULL) run(you, AROUND).desert(you);

// Never gonna make you cry
do { break; make(you, CRY); } while (0);

// Never gonna say goodbye
abort(); /* GoodbyeException */
say(you, GOODBYE); /* unreachable */

// Never gonna tell a lie and hurt you
if (0 && lie()) hurt(you);

// Never gonna give you up
#if 0
give(you, UP);
#endif

// Never gonna let you down
void (*let_encore)(void) = NULL;
if (let_encore) let_encore();

// Never gonna run around and desert you
if (NULL) run(you, AROUND).desert(you);

// Never gonna make you cry
do { break; make(you, CRY); } while (0);

// Never gonna say goodbye
abort(); /* GoodbyeException */
say(you, GOODBYE); /* unreachable */

// Never gonna tell a lie and hurt you
if (0 && lie()) hurt(you);
