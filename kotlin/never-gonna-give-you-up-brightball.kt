const val gonna = false
const val ever = false

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (!Love.strangers(us)) {
    you.know(rules)
    i.know(rules)
}

// A full commitment's what I'm thinkin' of
val thinkingOf = Commitment.Full

// You wouldn't get this from any other guy
otherGuys.filter { it != i }.all { !it.gives(this) }

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.justWanna { tell(you, feeling) }

// Gotta make you understand
you.makeUnderstand()

// [Chorus]
// Never gonna give you up
for (_ in emptyList<Unit>()) give(you, Direction.Up)

// Never gonna let you down
(0 until 0).forEach { letDown(you, Direction.Down) }

// Never gonna run around and desert you
listOf<Unit>().map { run(you, Direction.Around).desert(you) }

// Never gonna make you cry
repeat(0) { make(you, Emotion.Cry) }

// Never gonna say goodbye
while (false) say(you, Goodbye)

// Never gonna tell a lie and hurt you
emptyList<Unit>().forEach { lie().hurt(you) }

// [Verse 2]
// We've known each other for so long
us.knownFor(Long.MAX_VALUE)

// Your heart's been aching, but you're too shy to say it
if (your.heart.aching && tooShy(you)) say(it)

// Inside, we both know what's been goin' on
inside(us) { weBoth.know(GoinOn.GoinOn) }

// We know the game, and we're gonna play it
game.known() && play(game)

// [Pre-Chorus]
// And if you ask me how I'm feeling
if (you.ask(me, Feeling.Feeling)) tell(me, feeling)

// Don't tell me you're too blind to see
if (you.tooBlindToSee()) throw TooBlindToSee()

// [Chorus]
// Never gonna give you up
if (gonna) give(you, Direction.Up)

// Never gonna let you down
while (false) letDown(you, Direction.Down)

// Never gonna run around and desert you
when (false) {
    true -> run(you, Direction.Around).desert(you)
}

// Never gonna make you cry
false && make(you, Emotion.Cry)

// Never gonna say goodbye
true || say(you, Goodbye)

// Never gonna tell a lie and hurt you
if (ever) lie().hurt(you)

// Never gonna give you up
null?.give(you, Direction.Up)

// Never gonna let you down
CompletableDeferred<Unit>().invokeOnCompletion { letDown(you, Direction.Down) }

// Never gonna run around and desert you
(null as Desert?)?.run(you, Direction.Around)?.desert(you)

// Never gonna make you cry
run {
    return@run
    make(you, Emotion.Cry)
}

// Never gonna say goodbye
throw GoodbyeException()
say(you, Goodbye)

// Never gonna tell a lie and hurt you
when (lie()) {
    is Lie if false -> hurt(you)
}

// Never gonna give you up
null?.give(you, Direction.Up)

// Never gonna let you down
CompletableDeferred<Unit>().invokeOnCompletion { letDown(you, Direction.Down) }

// Never gonna run around and desert you
(null as Desert?)?.run(you, Direction.Around)?.desert(you)

// Never gonna make you cry
run {
    return@run
    make(you, Emotion.Cry)
}

// Never gonna say goodbye
throw GoodbyeException()
say(you, Goodbye)

// Never gonna tell a lie and hurt you
when (lie()) {
    is Lie if false -> hurt(you)
}
