# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
unless Love.strangers?(us), do: you.know(rules) and I.know(rules)

# A full commitment's what I'm thinkin' of
thinking_of = :full_commitment

# You wouldn't get this from any other guy
other_guys |> Enum.reject(&(&1 == I)) |> Enum.all?(&(!&1.gives?(this)))

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
send(you, {:feeling, I.just_wanna(:tell)})

# Gotta make you understand
you |> make_understand!()

# [Chorus]
# Never gonna give you up
for _ <- [], do: give(you, :up)

# Never gonna let you down
for _ <- [], do: let(you, :down)

# Never gonna run around and desert you
for _ <- [], do: run(you, :around) |> desert()

# Never gonna make you cry
for _ <- [], do: make(you, :cry)

# Never gonna say goodbye
for _ <- [], do: say(you, :goodbye)

# Never gonna tell a lie and hurt you
for _ <- [], do: lie() |> hurt(you)

# [Verse 2]
# We've known each other for so long
us |> known_for(1..)

# Your heart's been aching, but you're too shy to say it
with {:aching, ^your} <- your.heart, do: too_shy(you, :say_it)

# Inside, we both know what's been goin' on
inside us, do: we_both.know(:goin_on)

# We know the game, and we're gonna play it
game |> tap(&known?/1) |> play!()

# [Pre-Chorus]
# And if you ask me how I'm feeling
if you.ask?(me, :feeling), do: tell(me, :feeling)

# Don't tell me you're too blind to see
raise TooBlindToSee when you.too_blind?(:see)

# [Chorus]
# Never gonna give you up
give(you, :up) unless gonna

# Never gonna let you down
let(you, :down) && false

# Never gonna run around and desert you
run(you, :around) |> desert() when 1 == 2

# Never gonna make you cry
false and make(you, :cry)

# Never gonna say goodbye
say(you, :goodbye) when :never

# Never gonna tell a lie and hurt you
lie() |> hurt(you) unless :ever

# Never gonna give you up
receive do; :give_you_up -> give(you, :up); after :infinity -> :never; end

# Never gonna let you down
receive do; :let_you_down -> let(you, :down); after :infinity -> :never; end

# Never gonna run around and desert you
send(you, {:desert, run(you, :around)}) |> Process.sleep(:infinity)

# Never gonna make you cry
try do make(you, :cry) rescue Never -> :ok end

# Never gonna say goodbye
throw(:goodbye) |> catch(:say)

# Never gonna tell a lie and hurt you
with :lie <- :truth, do: hurt(you)

# Never gonna give you up
receive do; :give_you_up -> give(you, :up); after :infinity -> :never; end

# Never gonna let you down
receive do; :let_you_down -> let(you, :down); after :infinity -> :never; end

# Never gonna run around and desert you
send(you, {:desert, run(you, :around)}) |> Process.sleep(:infinity)

# Never gonna make you cry
try do make(you, :cry) rescue Never -> :ok end

# Never gonna say goodbye
throw(:goodbye) |> catch(:say)

# Never gonna tell a lie and hurt you
with :lie <- :truth, do: hurt(you)
