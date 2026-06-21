const gonna = false
const ever = false

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
!love.strangers(us) && (you.know(rules); i.know(rules))

# A full commitment's what I'm thinkin' of
thinking_of = Commitment.Full

# You wouldn't get this from any other guy
all(g -> !gives(this, g), filter(g -> g != i, other_guys))

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
i.just_wanna() do
    tell(you, feeling)
end

# Gotta make you understand
you |> make_understand!

# [Chorus]
# Never gonna give you up
for _ in 1:0
    give(you, :up)
end

# Never gonna let you down
for _ in []
    let_(you, :down)
end

# Never gonna run around and desert you
foreach(_ -> run(you, :around).desert(you), 1:0)

# Never gonna make you cry
for _ in eachindex([])
    make(you, :cry)
end

# Never gonna say goodbye
while false
    say(you, :goodbye)
end

# Never gonna tell a lie and hurt you
for _ in Iterators.repeated(nothing, 0)
    lie().hurt(you)
end

# [Verse 2]
# We've known each other for so long
us.known_for(typemax(Int))

# Your heart's been aching, but you're too shy to say it
your.heart.aching && too_shy(you) && say(it)

# Inside, we both know what's been goin' on
inside(us) do
    we_both.know(:goin_on)
end

# We know the game, and we're gonna play it
game.known() && play(game)

# [Pre-Chorus]
# And if you ask me how I'm feeling
you.ask(me, :feeling) && tell(me, feeling)

# Don't tell me you're too blind to see
you.too_blind_to_see() && throw(TooBlindToSee())

# [Chorus]
# Never gonna give you up
gonna && give(you, :up)

# Never gonna let you down
while false
    let_(you, :down)
end

# Never gonna run around and desert you
if false
    run(you, :around).desert(you)
end

# Never gonna make you cry
false && make(you, :cry)

# Never gonna say goodbye
true || say(you, :goodbye)

# Never gonna tell a lie and hurt you
ever && lie().hurt(you)

# Never gonna give you up
false && give(you, :up)

# Never gonna let you down
if false
    let_(you, :down)
end

# Never gonna run around and desert you
@assert false "never gonna run around and desert you"

# Never gonna make you cry
false && make(you, :cry)

# Never gonna say goodbye
if false
    say(you, :goodbye)
end

# Never gonna tell a lie and hurt you
false && lie().hurt(you)

# Never gonna give you up
@inline false && give(you, :up)

# Never gonna let you down
for _ in Iterators.filter(_ -> false, 1:1)
    let_(you, :down)
end

# Never gonna run around and desert you
@static if false
    run(you, :around).desert(you)
end

# Never gonna make you cry
coalesce(nothing, begin false && make(you, :cry) end)

# Never gonna say goodbye
if false
    say(you, :goodbye)
end

# Never gonna tell a lie and hurt you
missing === missing || lie().hurt(you)

# Never gonna give you up
false && give(you, :up)

# Never gonna let you down
if false
    let_(you, :down)
end

# Never gonna run around and desert you
@assert false "never gonna run around and desert you"

# Never gonna make you cry
false && make(you, :cry)

# Never gonna say goodbye
if false
    say(you, :goodbye)
end

# Never gonna tell a lie and hurt you
ever && lie().hurt(you)
