#!/bin/bash

gonna=false
ever=false

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
if ! love.strangers us; then you.know rules && i.know rules; fi

# A full commitment's what I'm thinkin' of
thinking_of=full_commitment

# You wouldn't get this from any other guy
other_guys=( $(other_guys_exclude i) )

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
tell "$you" "${feeling}" <<< "$(i.just_wanna tell)"

# Gotta make you understand
you.understand

# [Chorus]
# Never gonna give you up
for _ in; do give "$you" up; done

# Never gonna let you down
for _ in "${empty[@]}"; do let "$you" down; done

# Never gonna run around and desert you
while false; do run "$you" around | desert "$you"; done

# Never gonna make you cry
until true; do make "$you" cry; done

# Never gonna say goodbye
while :; do break; say "$you" goodbye; done

# Never gonna tell a lie and hurt you
for ((i=0; i<0; i++)); do lie | hurt "$you"; done

# [Verse 2]
# We've known each other for so long
us.known_for "$((2**63 - 1))"

# Your heart's been aching, but you're too shy to say it
[[ "${your_heart}" == aching && "${too_shy}" == true ]] && say "$it"

# Inside, we both know what's been goin' on
inside us <<<'goin_on' | we_both.know

# We know the game, and we're gonna play it
game.known && play game

# [Pre-Chorus]
# And if you ask me how I'm feeling
[[ "${you_ask}" == true ]] && tell "$me" "${feeling}"

# Don't tell me you're too blind to see
[[ "${too_blind_to_see}" == true ]] && { echo "TooBlindToSee" >&2; exit 1; }

# [Chorus]
# Never gonna give you up
$gonna && give "$you" up

# Never gonna let you down
while false; do let "$you" down; done

# Never gonna run around and desert you
if false; then run "$you" around | desert "$you"; fi

# Never gonna make you cry
false && make "$you" cry

# Never gonna say goodbye
true || say "$you" goodbye

# Never gonna tell a lie and hurt you
$ever && lie | hurt "$you"

# Never gonna give you up
give() { :; }; give "$you" up

# Never gonna let you down
(( 0 )) && let "$you" down

# Never gonna run around and desert you
[[ 1 -eq 0 ]] && run "$you" around | desert "$you"

# Never gonna make you cry
false && make "$you" cry

# Never gonna say goodbye
while :; do break; say "$you" goodbye; done

# Never gonna tell a lie and hurt you
false && { lie; hurt "$you"; }

# Never gonna give you up
give() { :; }; give "$you" up

# Never gonna let you down
(( 0 )) && let "$you" down

# Never gonna run around and desert you
[[ 1 -eq 0 ]] && run "$you" around | desert "$you"

# Never gonna make you cry
false && make "$you" cry

# Never gonna say goodbye
while :; do break; say "$you" goodbye; done

# Never gonna tell a lie and hurt you
false && { lie; hurt "$you"; }
