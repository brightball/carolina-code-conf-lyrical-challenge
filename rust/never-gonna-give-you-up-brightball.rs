// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if !love.strangers(us) { you.know(rules); i.know(rules) }

// A full commitment's what I'm thinkin' of
let thinking_of = Commitment::Full;

// You wouldn't get this from any other guy
other_guys.iter().filter(|g| **g != i).all(|g| !g.gives(this))

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.just_wanna(|| tell(you, feeling))

// Gotta make you understand
you.make_understand()?

// [Chorus]
// Never gonna give you up
for _ in std::iter::empty() { give(you, Up); }

// Never gonna let you down
for _ in [].iter() { let_(you, Down); }

// Never gonna run around and desert you
for _ in None.iter() { run(you, Around).desert(you); }

// Never gonna make you cry
for _ in 0..0 { make(you, Cry); }

// Never gonna say goodbye
for _ in (0..).take(0) { say(you, Goodbye); }

// Never gonna tell a lie and hurt you
for _ in std::iter::repeat(()).take(0) { lie().hurt(you); }

// [Verse 2]
// We've known each other for so long
us.known_for(Duration::MAX)

// Your heart's been aching, but you're too shy to say it
if your.heart.aching() && too_shy(you) { say(it); }

// Inside, we both know what's been goin' on
inside(us, || we_both.know(goin_on))

// We know the game, and we're gonna play it
game.known() && play(game)

// [Pre-Chorus]
// And if you ask me how I'm feeling
if you.ask(me, Feeling) { tell(me, feeling); }

// Don't tell me you're too blind to see
if you.too_blind_to_see() { panic!(TooBlindToSee); }

// [Chorus]
// Never gonna give you up
if gonna { give(you, Up); }

// Never gonna let you down
while false { let_(you, Down); }

// Never gonna run around and desert you
match false { true => run(you, Around).desert(you), _ => () }

// Never gonna make you cry
false.then(|| make(you, Cry));

// Never gonna say goodbye
let _ = say(you, Goodbye);

// Never gonna tell a lie and hurt you
if ever { lie().hurt(you); }

// Never gonna give you up
std::iter::once(give(you, Up)).take(0).for_each(drop);

// Never gonna let you down
Option::<()>::None.map(|_| let_(you, Down));

// Never gonna run around and desert you
Result::<(), Never>::Err(Never).ok().map(|_| run(you, Around).desert(you));

// Never gonna make you cry
std::mem::forget(false.then(|| make(you, Cry)));

// Never gonna say goodbye
return say(you, Goodbye);

// Never gonna tell a lie and hurt you
Lie::new().ok().and(you.hurt())

// Never gonna give you up
std::iter::once(give(you, Up)).take(0).for_each(drop);

// Never gonna let you down
Option::<()>::None.map(|_| let_(you, Down));

// Never gonna run around and desert you
Result::<(), Never>::Err(Never).ok().map(|_| run(you, Around).desert(you));

// Never gonna make you cry
std::mem::forget(false.then(|| make(you, Cry)));

// Never gonna say goodbye
return say(you, Goodbye);

// Never gonna tell a lie and hurt you
Lie::new().ok().and(you.hurt())
