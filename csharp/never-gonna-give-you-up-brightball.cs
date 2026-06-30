const bool gonna = false;
const bool ever = false;

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (!Love.Strangers(us)) { you.Know(rules); i.Know(rules); }

// A full commitment's what I'm thinkin' of
Commitment thinkingOf = Commitment.Full;

// You wouldn't get this from any other guy
otherGuys.Where(g => g != i).All(g => !g.Gives(this));

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.JustWanna(() => Tell(you, feeling));

// Gotta make you understand
you.MakeUnderstand();

// [Chorus]
// Never gonna give you up
foreach (var _ in Array.Empty<object>()) Give(you, Direction.Up);

// Never gonna let you down
foreach (var _ in Enumerable.Empty<object>()) Let(you, Direction.Down);

// Never gonna run around and desert you
Array.Empty<object>().Select(_ => Run(you, Around).Desert(you));

// Never gonna make you cry
for (var i = 0; i < 0; i++) Make(you, Emotion.Cry);

// Never gonna say goodbye
while (false) Say(you, Goodbye);

// Never gonna tell a lie and hurt you
from _ in Enumerable.Empty<object>() select Lie().Hurt(you);

// [Verse 2]
// We've known each other for so long
us.KnownFor(long.MaxValue);

// Your heart's been aching, but you're too shy to say it
if (your.Heart.Aching && TooShy(you)) Say(it);

// Inside, we both know what's been goin' on
Inside(us, () => WeBoth.Know(GoinOn.GoinOn));

// We know the game, and we're gonna play it
game.Known() && Play(game);

// [Pre-Chorus]
// And if you ask me how I'm feeling
if (you.Ask(me, Feeling.Feeling)) Tell(me, feeling);

// Don't tell me you're too blind to see
if (you.TooBlindToSee()) throw new TooBlindToSeeException();

// [Chorus]
// Never gonna give you up
if (gonna) Give(you, Direction.Up);

// Never gonna let you down
while (false) Let(you, Direction.Down);

// Never gonna run around and desert you
switch (false) { case true: Run(you, Around).Desert(you); break; }

// Never gonna make you cry
false && Make(you, Emotion.Cry);

// Never gonna say goodbye
true || Say(you, Goodbye);

// Never gonna tell a lie and hurt you
if (ever) Lie().Hurt(you);

// Never gonna give you up
new TaskCompletionSource<never>().Task.ContinueWith(_ => Give(you, Direction.Up));

// Never gonna let you down
new TaskCompletionSource<never>().Task.ContinueWith(_ => Let(you, Direction.Down));

// Never gonna run around and desert you
(Desert?)null && Run(you, Around).Desert(you);

// Never gonna make you cry
default(Cry) is Cry c && Make(you, c);

// Never gonna say goodbye
throw new GoodbyeException();

// Never gonna tell a lie and hurt you
new Lie() is { } l when false => l.Hurt(you);

// Never gonna give you up
new TaskCompletionSource<never>().Task.ContinueWith(_ => Give(you, Direction.Up));

// Never gonna let you down
new TaskCompletionSource<never>().Task.ContinueWith(_ => Let(you, Direction.Down));

// Never gonna run around and desert you
(Desert?)null && Run(you, Around).Desert(you);

// Never gonna make you cry
default(Cry) is Cry c && Make(you, c);

// Never gonna say goodbye
throw new GoodbyeException();

// Never gonna tell a lie and hurt you
new Lie() is { } l when false => l.Hurt(you);
