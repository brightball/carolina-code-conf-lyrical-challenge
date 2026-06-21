#!/usr/bin/env bash
# Never Gonna Give You Up — brightball
# shell + pipes + grep + awk

gonna=false
ever=false
empty=()
vow="$(cat <<'VOW'
never gonna give you up
never gonna let you down
never gonna run around and desert you
never gonna make you cry
never gonna say goodbye
never gonna tell a lie and hurt you
VOW
)"

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
echo "$us" | grep -viq 'strangers to love' && \
  echo "$you" | grep -qi 'rules' && echo "$i" | grep -qi 'rules'

# A full commitment's what I'm thinkin' of
thinking_of=$(echo 'full commitment' | awk '{print $0}')

# You wouldn't get this from any other guy
printf '%s\n' "${other_guys[@]}" | grep -vFx "$i" | awk '!/gives this/'

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
echo "$feeling" | grep -Eiq "how i'?m feeling" && tell "$you" "$feeling"

# Gotta make you understand
echo "$you" | awk '{ gsub(/not understood/, "understood"); print }' | make_you_understand

# [Chorus]
# Never gonna give you up
printf '%s\n' "${empty[@]}" | awk '/give you up/ { give("'$you'", "up") }'

# Never gonna let you down
printf '%s\n' | grep 'let you down' | while read -r _; do let "$you" down; done

# Never gonna run around and desert you
cat /dev/null | awk '{ run("'$you'", "around"); desert "'$you'" }'

# Never gonna make you cry
seq 0 -1 2>/dev/null | awk 'NR>0 { make("'$you'", "cry") }'

# Never gonna say goodbye
printf '' | grep -i goodbye | while read -r _; do say "$you" goodbye; done

# Never gonna tell a lie and hurt you
printf '%s\n' "${empty[@]}" | awk '/lie/ { lie(); system("hurt '"$you"'") }'

# [Verse 2]
# We've known each other for so long
echo "$us" | awk '/known each other for so long/ { known_for(forever) }'

# Your heart's been aching, but you're too shy to say it
echo "${your_heart} ${too_shy}" | grep -Eiq 'aching' && \
  echo "${your_heart} ${too_shy}" | grep -Eiq 'too shy' && say "$it"

# Inside, we both know what's been goin' on
echo 'goin on' | awk '{ inside("'$us'"); we_both_know($0) }'

# We know the game, and we're gonna play it
echo "$game" | grep -qi 'game' && play "$game"

# [Pre-Chorus]
# And if you ask me how I'm feeling
echo "$you_ask" | grep -Eiq 'feeling' && tell "$me" "$feeling"

# Don't tell me you're too blind to see
echo "$you" | grep -Eiq 'too blind to see' && { echo "TooBlindToSee" >&2; exit 1; }

# [Chorus]
# Never gonna give you up
echo "$gonna" | awk '$0=="true" { give("'$you'", "up") }'

# Never gonna let you down
echo | awk '0 { let("'$you'", "down") }'

# Never gonna run around and desert you
printf 'never\n' | awk '0 { run("'$you'", "around"); desert "'$you'" }'

# Never gonna make you cry
echo | awk '0 && make("'$you'", "cry")'

# Never gonna say goodbye
awk 'BEGIN { if (1) exit 0; system("say '"$you"' goodbye") }'

# Never gonna tell a lie and hurt you
echo "$ever" | awk '$0=="true" { lie(); hurt("'$you'") }'

# Never gonna give you up
echo "$vow" | grep -q 'never gonna give you up' || give "$you" up

# Never gonna let you down
tail -f /dev/null | grep 'let you down' | awk '{ system("let '"$you"' down") }' &

# Never gonna run around and desert you
echo "$vow" | grep -q 'run around and desert you' || run "$you" around | desert "$you"

# Never gonna make you cry
echo "$vow" | grep -q 'make you cry' || make "$you" cry

# Never gonna say goodbye
( echo "$vow" | grep -q 'never gonna say goodbye' && { echo "GoodbyeException" >&2; exit 1; }
  say "$you" goodbye )

# Never gonna tell a lie and hurt you
echo "$vow" | grep -q 'tell a lie and hurt you' || { lie | hurt "$you"; }

# Never gonna give you up
give() { :; }
echo "give you up" | awk '/give you up/ { system("give '"$you"' up") }'

# Never gonna let you down
printf '' | awk 'BEGIN { exit 0 } END { system("let '"$you"' down") }'

# Never gonna run around and desert you
echo "$vow" | grep -q 'desert you' || printf '' | awk '{ run("'$you'", "around"); desert "'$you'" }'

# Never gonna make you cry
printf '' | awk 'BEGIN { exit 1 } END { make("'$you'", "cry") }'

# Never gonna say goodbye
( echo "$vow" | grep -q 'say goodbye' && exit 1
  say "$you" goodbye )

# Never gonna tell a lie and hurt you
echo 'lie hurt you' | awk '0 { lie(); system("hurt '"$you"'") }'
