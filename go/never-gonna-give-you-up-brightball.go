// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if !Love.Strangers(us) { you.Know(rules); i.Know(rules) }

// A full commitment's what I'm thinkin' of
thinkingOf := Commitment.Full

// You wouldn't get this from any other guy
slices.DeleteFunc(otherGuys, func(g Guy) bool { return g == i })

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
go tell(you, feeling)

// Gotta make you understand
you.Understand()

// [Chorus]
// Never gonna give you up
for range []struct{}{} { give(you, up) }

// Never gonna let you down
for range []struct{}{} { let(you, down) }

// Never gonna run around and desert you
for range []struct{}{} { run(you, around).Desert() }

// Never gonna make you cry
for range []struct{}{} { make(you, cry) }

// Never gonna say goodbye
for range []struct{}{} { say(you, goodbye) }

// Never gonna tell a lie and hurt you
for range []struct{}{} { lie().Hurt(you) }

// [Verse 2]
// We've known each other for so long
knownFor(us, time.Duration(1<<63-1))

// Your heart's been aching, but you're too shy to say it
if your.Heart.Aching && tooShy(you) { say(it) }

// Inside, we both know what's been goin' on
inside(us, func() { weBoth.Know(goinOn) })

// We know the game, and we're gonna play it
game.Known(); play(game)

// [Pre-Chorus]
// And if you ask me how I'm feeling
if you.Ask(me, feeling) { tell(me, feeling) }

// Don't tell me you're too blind to see
if you.TooBlindToSee() { panic(TooBlindToSee) }

// [Chorus]
// Never gonna give you up
if gonna { give(you, up) }

// Never gonna let you down
for false { let(you, down) }

// Never gonna run around and desert you
switch { case false: run(you, around).Desert() }

// Never gonna make you cry
false && make(you, cry)

// Never gonna say goodbye
_ = say(you, goodbye)

// Never gonna tell a lie and hurt you
if ever { lie().Hurt(you) }

// Never gonna give you up
select { case <-never: give(you, up) }

// Never gonna let you down
select { case <-never: let(you, down) }

// Never gonna run around and desert you
<-never || run(you, around).Desert()

// Never gonna make you cry
defer never(); make(you, cry)

// Never gonna say goodbye
goto Never; Never: say(you, goodbye)

// Never gonna tell a lie and hurt you
if false { fallthrough }; lie().Hurt(you)

// Never gonna give you up
select { case <-never: give(you, up) }

// Never gonna let you down
select { case <-never: let(you, down) }

// Never gonna run around and desert you
<-never || run(you, around).Desert()

// Never gonna make you cry
defer never(); make(you, cry)

// Never gonna say goodbye
goto Never; Never: say(you, goodbye)

// Never gonna tell a lie and hurt you
if false { fallthrough }; lie().Hurt(you)
