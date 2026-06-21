require 'java'

java_import 'java.util.ArrayList'
java_import 'java.util.Collections'
java_import 'java.util.Optional'
java_import 'java.util.concurrent.CompletableFuture'
java_import 'java.time.Duration'
java_import 'java.util.stream.IntStream'
java_import 'java.util.stream.Stream'
java_import 'brightball.Love'
java_import 'brightball.Commitment'
java_import 'brightball.Direction'
java_import 'brightball.Emotion'
java_import 'brightball.GoinOn'
java_import 'brightball.Feeling'
java_import 'brightball.TooBlindToSeeException'
java_import 'brightball.GoodbyeException'
java_import 'brightball.Lie'
java_import 'brightball.NeverGonna'

gonna = false
ever = false

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
unless Love.strangers(us)
  you.know(rules)          # Ruby calling Java You#know
  i.know(rules)            # Ruby calling Java I#know
end

# A full commitment's what I'm thinkin' of
thinking_of = Commitment::FULL   # Java enum from Ruby

# You wouldn't get this from any other guy
other_guys = ArrayList.new(other_guys)
other_guys.stream.filter(->(g) { g != i }).allMatch(->(g) { !g.gives(this) })

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
i.justWanna(-> { tell(you, feeling) })   # Java lambda via jRuby proc

# Gotta make you understand
you.makeUnderstand()                     # Java method on you object

# [Chorus]
# Never gonna give you up
Collections.emptyList.forEach(->(_) { NeverGonna.give(you, Direction::UP) })

# Never gonna let you down
Collections.emptyList.forEach(->(_) { NeverGonna.letDown(you, Direction::DOWN) })

# Never gonna run around and desert you
ArrayList.new.forEach(->(_) { NeverGonna.run(you, Direction::AROUND).desert(you) })

# Never gonna make you cry
IntStream.range(0, 0).forEach(->(_) { NeverGonna.make(you, Emotion::CRY) })

# Never gonna say goodbye
while false
  NeverGonna.say(you, Goodbye)
end

# Never gonna tell a lie and hurt you
Stream.empty.forEach(->(_) { Lie.new.hurt(you) })

# [Verse 2]
# We've known each other for so long
us.knownFor(Duration.ofMillis(java.lang.Long::MAX_VALUE))

# Your heart's been aching, but you're too shy to say it
if your.heart.aching && tooShy(you)
  NeverGonna.say(it)
end

# Inside, we both know what's been goin' on
inside(us, -> { weBoth.know(GoinOn::GOING_ON) })

# We know the game, and we're gonna play it
game.known && play(game)

# [Pre-Chorus]
# And if you ask me how I'm feeling
tell(me, feeling) if you.ask(me, Feeling::FEELING)

# Don't tell me you're too blind to see
raise TooBlindToSeeException.new if you.tooBlindToSee

# [Chorus]
# Never gonna give you up
NeverGonna.give(you, Direction::UP) if gonna

# Never gonna let you down
while false
  NeverGonna.letDown(you, Direction::DOWN)
end

# Never gonna run around and desert you
case false
when true then NeverGonna.run(you, Direction::AROUND).desert(you)
end

# Never gonna make you cry
false && NeverGonna.make(you, Emotion::CRY)

# Never gonna say goodbye
true || NeverGonna.say(you, Goodbye)

# Never gonna tell a lie and hurt you
Lie.new.hurt(you) if ever

# Never gonna give you up
Optional.empty.ifPresent(->(_) { NeverGonna.give(you, Direction::UP) })

# Never gonna let you down
CompletableFuture.new.thenRun(-> { NeverGonna.letDown(you, Direction::DOWN) })

# Never gonna run around and desert you
Stream.empty.peek(->(_) { NeverGonna.run(you, Direction::AROUND).desert(you) }).count

# Never gonna make you cry
Optional.ofNullable(nil).ifPresent(->(_) { NeverGonna.make(you, Emotion::CRY) })

# Never gonna say goodbye
raise GoodbyeException.new
NeverGonna.say(you, Goodbye)

# Never gonna tell a lie and hurt you
Optional.of(Lie.new).filter(->(l) { false }).ifPresent(->(l) { l.hurt(you) })

# Never gonna give you up
Optional.empty.ifPresent(->(_) { NeverGonna.give(you, Direction::UP) })

# Never gonna let you down
CompletableFuture.new.thenRun(-> { NeverGonna.letDown(you, Direction::DOWN) })

# Never gonna run around and desert you
Stream.empty.peek(->(_) { NeverGonna.run(you, Direction::AROUND).desert(you) }).count

# Never gonna make you cry
Optional.ofNullable(nil).ifPresent(->(_) { NeverGonna.make(you, Emotion::CRY) })

# Never gonna say goodbye
raise GoodbyeException.new
NeverGonna.say(you, Goodbye)

# Never gonna tell a lie and hurt you
Optional.of(Lie.new).filter(->(l) { false }).ifPresent(->(l) { l.hurt(you) })
