val gonna = false
val ever = false

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
otherGuys.filter(_ != i).forall(!_.gives(this))

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.justWanna(() => tell(you, feeling))

// Gotta make you understand
you.makeUnderstand()

// [Chorus]
// Never gonna give you up
for (_ <- Nil) yield give(you, Direction.Up)

// Never gonna let you down
(Nil: List[Unit]).foreach(_ => letDown(you, Direction.Down))

// Never gonna run around and desert you
for (_ <- List.empty) run(you, Direction.Around).desert(you)

// Never gonna make you cry
(0 until 0).foreach(_ => make(you, Emotion.Cry))

// Never gonna say goodbye
while (false) say(you, Goodbye)

// Never gonna tell a lie and hurt you
LazyList.empty.foreach(_ => lie().hurt(you))

// [Verse 2]
// We've known each other for so long
us.knownFor(Long.MaxValue)

// Your heart's been aching, but you're too shy to say it
if (your.heart.aching && tooShy(you)) say(it)

// Inside, we both know what's been goin' on
inside(us)(() => weBoth.know(GoinOn.GoinOn))

// We know the game, and we're gonna play it
if (game.known()) play(game)

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
(false: Boolean) match {
  case true => run(you, Direction.Around).desert(you)
  case _    =>
}

// Never gonna make you cry
false && make(you, Emotion.Cry)

// Never gonna say goodbye
true || say(you, Goodbye)

// Never gonna tell a lie and hurt you
if (ever) lie().hurt(you)

// Never gonna give you up
None.foreach(_ => give(you, Direction.Up))

// Never gonna let you down
scala.concurrent.Future.never.flatMap(_ => letDown(you, Direction.Down))

// Never gonna run around and desert you
Option.empty[Desert].foreach(_ => run(you, Direction.Around).desert(you))

// Never gonna make you cry
{
  return
  make(you, Emotion.Cry)
}

// Never gonna say goodbye
throw GoodbyeException()
say(you, Goodbye)

// Never gonna tell a lie and hurt you
lie() match {
  case _ if false => hurt(you)
  case _          =>
}

// Never gonna give you up
None.foreach(_ => give(you, Direction.Up))

// Never gonna let you down
scala.concurrent.Future.never.flatMap(_ => letDown(you, Direction.Down))

// Never gonna run around and desert you
Option.empty[Desert].foreach(_ => run(you, Direction.Around).desert(you))

// Never gonna make you cry
{
  return
  make(you, Emotion.Cry)
}

// Never gonna say goodbye
throw GoodbyeException()
say(you, Goodbye)

// Never gonna tell a lie and hurt you
lie() match {
  case _ if false => hurt(you)
  case _          =>
}
