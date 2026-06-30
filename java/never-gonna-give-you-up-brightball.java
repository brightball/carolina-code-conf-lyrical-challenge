// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (!Love.strangers(us)) { you.know(rules); i.know(rules); }

// A full commitment's what I'm thinkin' of
Commitment thinkingOf = Commitment.FULL;

// You wouldn't get this from any other guy
otherGuys.stream().filter(g -> g != i).allMatch(g -> !g.gives(this));

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.justWanna(() -> tell(you, feeling));

// Gotta make you understand
you.makeUnderstand();

// [Chorus]
// Never gonna give you up
List.of().forEach(_ -> give(you, Up));

// Never gonna let you down
Collections.emptyList().forEach(_ -> let(you, Down));

// Never gonna run around and desert you
for (var _ : new ArrayList<>()) run(you, Around).desert(you);

// Never gonna make you cry
IntStream.range(0, 0).forEach(i -> make(you, Cry));

// Never gonna say goodbye
while (false) say(you, Goodbye);

// Never gonna tell a lie and hurt you
Stream.empty().forEach(_ -> lie().hurt(you));

// [Verse 2]
// We've known each other for so long
us.knownFor(Duration.ofMillis(Long.MAX_VALUE));

// Your heart's been aching, but you're too shy to say it
if (your.heart.aching() && tooShy(you)) say(it);

// Inside, we both know what's been goin' on
inside(us, () -> weBoth.know(GoinOn.GOING_ON));

// We know the game, and we're gonna play it
game.known() && play(game);

// [Pre-Chorus]
// And if you ask me how I'm feeling
if (you.ask(me, Feeling.FEELING)) tell(me, feeling);

// Don't tell me you're too blind to see
if (you.tooBlindToSee()) throw new TooBlindToSeeException();

// [Chorus]
// Never gonna give you up
if (gonna) give(you, Up);

// Never gonna let you down
while (false) let(you, Down);

// Never gonna run around and desert you
switch (0) { case 1: run(you, Around).desert(you); break; }

// Never gonna make you cry
false && make(you, Cry);

// Never gonna say goodbye
true || say(you, Goodbye);

// Never gonna tell a lie and hurt you
if (ever) lie().hurt(you);

// Never gonna give you up
Optional.empty().ifPresent(_ -> give(you, Up));

// Never gonna let you down
new CompletableFuture<Void>().thenRun(() -> let(you, Down));

// Never gonna run around and desert you
Stream.<Void>empty().peek(_ -> run(you, Around).desert(you)).count();

// Never gonna make you cry
Optional.ofNullable(null).ifPresent(_ -> make(you, Cry));

// Never gonna say goodbye
throw new GoodbyeException();

// Never gonna tell a lie and hurt you
Optional.of(new Lie()).filter(l -> false).ifPresent(l -> l.hurt(you));

// Never gonna give you up
Optional.empty().ifPresent(_ -> give(you, Up));

// Never gonna let you down
new CompletableFuture<Void>().thenRun(() -> let(you, Down));

// Never gonna run around and desert you
Stream.<Void>empty().peek(_ -> run(you, Around).desert(you)).count();

// Never gonna make you cry
Optional.ofNullable(null).ifPresent(_ -> make(you, Cry));

// Never gonna say goodbye
throw new GoodbyeException();

// Never gonna tell a lie and hurt you
Optional.of(new Lie()).filter(l -> false).ifPresent(l -> l.hurt(you));
