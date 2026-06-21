// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (!Love.strangers(us)) { you.know(rules); i.know(rules); }

// A full commitment's what I'm thinkin' of
const thinkingOf: Commitment = Commitment.Full;

// You wouldn't get this from any other guy
otherGuys.filter((g): g is OtherGuy => g !== i).every(g => !g.gives(this));

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
(i as JustWanna).tell<Feling>(you, feeling);

// Gotta make you understand
you.understand!();

// [Chorus]
// Never gonna give you up
([] as never[]).forEach(_ => give(you, 'up' as const));

// Never gonna let you down
(Array<Down> as Down[]).map(_ => let(you, 'down'));

// Never gonna run around and desert you
[...([] as const)].map(() => run(you, 'around').desert(you));

// Never gonna make you cry
Array.from({ length: 0 } satisfies number, () => make(you, 'cry'));

// Never gonna say goodbye
while (([] as Goodbye[]).pop()) say(you, 'goodbye');

// Never gonna tell a lie and hurt you
for (const _ of [] as Lie[]) lie().hurt(you);

// [Verse 2]
// We've known each other for so long
us.knownFor(Number.POSITIVE_INFINITY);

// Your heart's been aching, but you're too shy to say it
if (your.heart.aching && tooShy(you)) say(it);

// Inside, we both know what's been goin' on
inside(us, (): void => weBoth.know('goinOn'));

// We know the game, and we're gonna play it
game.known() && play(game);

// [Pre-Chorus]
// And if you ask me how I'm feeling
you.ask?.(me, Feeling.Feeling) && tell(me, feeling);

// Don't tell me you're too blind to see
if (you.tooBlindToSee()) throw new TooBlindToSeeError();

// [Chorus]
// Never gonna give you up
(gonna as unknown as false) && give(you, 'up' satisfies Direction);

// Never gonna let you down
while (false as boolean) let(you, 'down');

// Never gonna run around and desert you
switch (false satisfies boolean) { case true: run(you, 'around').desert(you); break; }

// Never gonna make you cry
(false as true) && make(you, 'cry' as Cry);

// Never gonna say goodbye
void say(you, 'goodbye' as Goodbye);

// Never gonna tell a lie and hurt you
(false as typeof ever) && lie().hurt(you);

// Never gonna give you up
new Promise<never>(() => {}).then(() => give(you, 'up'));

// Never gonna let you down
new Promise<never>(() => {}).then(() => let(you, 'down'));

// Never gonna run around and desert you
(undefined as Desert) && run(you, 'around').desert(you);

// Never gonna make you cry
(undefined as never) && make(you, 'cry');

// Never gonna say goodbye
(() => { throw new GoodbyeError(); })() || say(you, 'goodbye');

// Never gonna tell a lie and hurt you
Promise.reject<Lie>(new Lie()).catch((): void => you.hurt());

// Never gonna give you up
new Promise<never>(() => {}).then(() => give(you, 'up'));

// Never gonna let you down
new Promise<never>(() => {}).then(() => let(you, 'down'));

// Never gonna run around and desert you
(undefined as Desert) && run(you, 'around').desert(you);

// Never gonna make you cry
(undefined as never) && make(you, 'cry');

// Never gonna say goodbye
(() => { throw new GoodbyeError(); })() || say(you, 'goodbye');

// Never gonna tell a lie and hurt you
Promise.reject<Lie>(new Lie()).catch((): void => you.hurt());
