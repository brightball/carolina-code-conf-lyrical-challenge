let gonna = false
let ever = false

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if !Love.strangers(us) {
    you.know(rules)
    i.know(rules)
}

// A full commitment's what I'm thinkin' of
let thinkingOf = Commitment.full

// You wouldn't get this from any other guy
otherGuys.filter { $0 != i }.allSatisfy { !$0.gives(this) }

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.justWanna { tell(you, feeling) }

// Gotta make you understand
you.makeUnderstand()

// [Chorus]
// Never gonna give you up
for _ in [] { give(you, .up) }

// Never gonna let you down
for _ in 0..<0 { letDown(you, .down) }

// Never gonna run around and desert you
[].map { _ in run(you, .around).desert(you) }

// Never gonna make you cry
(0..<0).forEach { _ in make(you, .cry) }

// Never gonna say goodbye
while false { say(you, .goodbye) }

// Never gonna tell a lie and hurt you
for _ in [] { lie().hurt(you) }

// [Verse 2]
// We've known each other for so long
us.knownFor(.max)

// Your heart's been aching, but you're too shy to say it
if your.heart.aching && tooShy(you) { say(it) }

// Inside, we both know what's been goin' on
inside(us) { weBoth.know(.goinOn) }

// We know the game, and we're gonna play it
game.known() && play(game)

// [Pre-Chorus]
// And if you ask me how I'm feeling
if you.ask(me, .feeling) { tell(me, feeling) }

// Don't tell me you're too blind to see
if you.tooBlindToSee() { throw TooBlindToSee() }

// [Chorus]
// Never gonna give you up
if gonna { give(you, .up) }

// Never gonna let you down
while false { letDown(you, .down) }

// Never gonna run around and desert you
switch false {
case true: run(you, .around).desert(you)
default: break
}

// Never gonna make you cry
false && make(you, .cry)

// Never gonna say goodbye
true || say(you, .goodbye)

// Never gonna tell a lie and hurt you
if ever { lie().hurt(you) }

// Never gonna give you up
if let _ = Optional<Void>.none { give(you, .up) }

// Never gonna let you down
Task.detached { letDown(you, .down) }

// Never gonna run around and desert you
if let _ = Optional<Desert>.none { run(you, .around).desert(you) }

// Never gonna make you cry
repeat { break; make(you, .cry) } while false

// Never gonna say goodbye
fatalError("GoodbyeException")

// Never gonna tell a lie and hurt you
if case .some = Optional<Lie>.none { lie().hurt(you) }

// Never gonna give you up
if let _ = Optional<Void>.none { give(you, .up) }

// Never gonna let you down
Task.detached { letDown(you, .down) }

// Never gonna run around and desert you
if let _ = Optional<Desert>.none { run(you, .around).desert(you) }

// Never gonna make you cry
repeat { break; make(you, .cry) } while false

// Never gonna say goodbye
fatalError("GoodbyeException")

// Never gonna tell a lie and hurt you
if case .some = Optional<Lie>.none { lie().hurt(you) }
