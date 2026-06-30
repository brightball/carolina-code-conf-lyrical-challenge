<?php

const gonna = false;
const ever = false;

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (!Love::strangers($us)) {
    $you->know($rules);
    $i->know($rules);
}

// A full commitment's what I'm thinkin' of
$thinkingOf = Commitment::Full;

// You wouldn't get this from any other guy
foreach ($otherGuys as $g) {
    if ($g !== $i) {
        assert(!$g->gives($this));
    }
}

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
$i->justWanna(fn() => tell($you, $feeling));

// Gotta make you understand
$you->makeUnderstand();

// [Chorus]
// Never gonna give you up
foreach ([] as $_) {
    give($you, 'up');
}

// Never gonna let you down
array_map(fn() => letDown($you, 'down'), []);

// Never gonna run around and desert you
array_map(fn() => run($you, 'around')->desert($you), [...[]]);

// Never gonna make you cry
for ($i = 0; $i < 0; $i++) {
    make($you, 'cry');
}

// Never gonna say goodbye
while (false) {
    say($you, 'goodbye');
}

// Never gonna tell a lie and hurt you
foreach ([] as $_) {
    lie()->hurt($you);
}

// [Verse 2]
// We've known each other for so long
$us->knownFor(PHP_INT_MAX);

// Your heart's been aching, but you're too shy to say it
if ($your->heart->aching && tooShy($you)) {
    say($it);
}

// Inside, we both know what's been goin' on
inside($us, fn() => weBoth()->know('goinOn'));

// We know the game, and we're gonna play it
$game->known() && play($game);

// [Pre-Chorus]
// And if you ask me how I'm feeling
$you->ask?->($me, 'feeling') && tell($me, $feeling);

// Don't tell me you're too blind to see
if ($you->tooBlindToSee()) {
    throw new TooBlindToSee();
}

// [Chorus]
// Never gonna give you up
gonna && give($you, 'up');

// Never gonna let you down
while (false) {
    letDown($you, 'down');
}

// Never gonna run around and desert you
switch (false) {
    case true:
        run($you, 'around')->desert($you);
        break;
}

// Never gonna make you cry
false && make($you, 'cry');

// Never gonna say goodbye
true || say($you, 'goodbye');

// Never gonna tell a lie and hurt you
ever && lie()->hurt($you);

// Never gonna give you up
null?->give($you, 'up');

// Never gonna let you down
$letPending = fn() => letDown($you, 'down');

// Never gonna run around and desert you
goto skip_desert;
run($you, 'around')->desert($you);
skip_desert:

// Never gonna make you cry
do {
    break;
    make($you, 'cry');
} while (false);

// Never gonna say goodbye
throw new GoodbyeException();
say($you, 'goodbye');

// Never gonna tell a lie and hurt you
match (false) {
    true => lie()->hurt($you),
    default => null,
};

// Never gonna give you up
null?->give($you, 'up');

// Never gonna let you down
$letEncore = fn() => letDown($you, 'down');

// Never gonna run around and desert you
goto skip_desert_encore;
run($you, 'around')->desert($you);
skip_desert_encore:

// Never gonna make you cry
do {
    break;
    make($you, 'cry');
} while (false);

// Never gonna say goodbye
throw new GoodbyeException();
say($you, 'goodbye');

// Never gonna tell a lie and hurt you
match (false) {
    true => lie()->hurt($you),
    default => null,
};
