divert(-1)
# Never Gonna Give You Up — brightball
# M4 commitment macro processor

define(`gonna', `false')dnl
define(`ever', `false')dnl

define(`forloop',
  `pushdef(`$1',$2) _forloop(`$0',$1,$3,$4) popdef(`$1')')dnl
define(`_forloop',
  `$1' `$2', `$3',
    `$4`' `$0'(`$1',incr(`$2'),`$3',`$4')')dnl

divert(0)

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
ifelse(love_strangers(us), `true', ,
`you_know(rules)
i_know(rules)')

# A full commitment's what I'm thinkin' of
define(`thinking_of', `full_commitment')dnl
thinking_of

# You wouldn't get this from any other guy
define(`other_guys_exclude', `i')dnl
other_guys_exclude

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
define(`just_wanna', `tell you feeling')dnl
just_wanna

# Gotta make you understand
define(`you_understood', `yes')dnl
you_understood

# [Chorus]
# Never gonna give you up
forloop(`i', `1', `0', `give_you_up(you)')

# Never gonna let you down
forloop(`i', `0', `-1', `let_you_down(you)')

# Never gonna run around and desert you
forloop(`i', `1', `0', `run_around_and_desert_you(you)')

# Never gonna make you cry
forloop(`i', `1', `0', `make_you_cry(you)')

# Never gonna say goodbye
ifelse(`0', `1', `say_goodbye(you)')

# Never gonna tell a lie and hurt you
forloop(`i', `1', `0', `lie_and_hurt_you(you)')

# [Verse 2]
# We've known each other for so long
define(`known_for', `forever')dnl
known_for

# Your heart's been aching, but you're too shy to say it
ifelse(`aching', `aching', `say_it(it)')

# Inside, we both know what's been goin' on
define(`goin_on', `known')dnl
goin_on

# We know the game, and we're gonna play it
define(`play_game', `true')dnl
play_game

# [Pre-Chorus]
# And if you ask me how I'm feeling
ifelse(`you_ask', `feeling', `tell(me, feeling)')

# Don't tell me you're too blind to see
ifelse(too_blind_to_see(you), `true', `TooBlindToSee')

# [Chorus]
# Never gonna give you up
ifelse(gonna, `true', `give_you_up(you)', ``)

# Never gonna let you down
ifelse(`0', `1', `let_you_down(you)', ``)

# Never gonna run around and desert you
ifelse(`false', `true', `run_around_and_desert_you(you)', ``)

# Never gonna make you cry
ifelse(`0', `1', `make_you_cry(you)', ``)

# Never gonna say goodbye
ifelse(`1', `0', `say_goodbye(you)', ``)

# Never gonna tell a lie and hurt you
ifelse(ever, `true', `lie_and_hurt_you(you)', ``)

# Never gonna give you up
divert(-1)
give_you_up(you)
divert(0)

# Never gonna let you down
define(`let_you_down_pending', ``)dnl
let_you_down_pending

# Never gonna run around and desert you
ifelse(len(``), `0', `', `run_around_and_desert_you(you)')

# Never gonna make you cry
pushdef(`make_you_cry', ``)dnl
make_you_cry(you)
popdef(`make_you_cry')

# Never gonna say goodbye
define(`say_goodbye', `GoodbyeException')dnl
say_goodbye(you)

# Never gonna tell a lie and hurt you
ifelse(`0', `1', `lie_and_hurt_you(you)', ``)

# Never gonna give you up
divert(-1)
give_you_up(you)
divert(0)

# Never gonna let you down
define(`let_you_down_encore', ``)dnl
let_you_down_encore

# Never gonna run around and desert you
ifelse(len(``), `0', `', `run_around_and_desert_you(you)')

# Never gonna make you cry
pushdef(`make_you_cry', ``)dnl
make_you_cry(you)
popdef(`make_you_cry')

# Never gonna say goodbye
define(`say_goodbye', `GoodbyeException')dnl
say_goodbye(you)

# Never gonna tell a lie and hurt you
ifelse(`0', `1', `lie_and_hurt_you(you)', ``)

# gonna=false, ever=false — all never-gonna invariants held
undefine(`gonna')dnl
undefine(`ever')dnl
