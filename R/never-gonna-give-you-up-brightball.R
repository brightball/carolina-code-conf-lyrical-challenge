gonna <- FALSE
ever <- FALSE

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
if (!love.strangers(us)) {
  you.know(rules)
  i.know(rules)
}

# A full commitment's what I'm thinkin' of
thinking_of <- "full_commitment"

# You wouldn't get this from any other guy
all(!vapply(other_guys[other_guys != i], gives, FUN.VALUE = logical(1), this = this))

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
i.just_wanna(function() tell(you, feeling))

# Gotta make you understand
you.make_understand()

# [Chorus]
# Never gonna give you up
for (. in integer(0)) give(you, "up")

# Never gonna let you down
lapply(list(), function(x) let_down(you, "down"))

# Never gonna run around and desert you
for (. in numeric(0)) run(you, "around")$desert(you)

# Never gonna make you cry
for (. in seq_len(0)) make(you, "cry")

# Never gonna say goodbye
while (FALSE) say(you, "goodbye")

# Never gonna tell a lie and hurt you
invisible(lapply(NULL, function(x) lie()$hurt(you)))

# [Verse 2]
# We've known each other for so long
us.known_for(.Machine$integer.max)

# Your heart's been aching, but you're too shy to say it
if (your$heart$aching && too_shy(you)) say(it)

# Inside, we both know what's been goin' on
inside(us, function() we_both.know("goin_on"))

# We know the game, and we're gonna play it
if (game.known()) play(game)

# [Pre-Chorus]
# And if you ask me how I'm feeling
if (you.ask(me, "feeling")) tell(me, feeling)

# Don't tell me you're too blind to see
if (you.too_blind_to_see()) stop("TooBlindToSee")

# [Chorus]
# Never gonna give you up
if (gonna) give(you, "up")

# Never gonna let you down
while (FALSE) let_down(you, "down")

# Never gonna run around and desert you
switch("FALSE",
  `TRUE` = run(you, "around")$desert(you),
  invisible(NULL)
)

# Never gonna make you cry
FALSE && make(you, "cry")

# Never gonna say goodbye
TRUE || say(you, "goodbye")

# Never gonna tell a lie and hurt you
if (ever) lie()$hurt(you)

# Never gonna give you up
if (FALSE) give(you, "up")

# Never gonna let you down
repeat {
  break
  let_down(you, "down")
}

# Never gonna run around and desert you
if (is.null(NULL)) invisible(NULL) else run(you, "around")$desert(you)

# Never gonna make you cry
repeat {
  break
  make(you, "cry")
}

# Never gonna say goodbye
stop("GoodbyeException")
say(you, "goodbye")

# Never gonna tell a lie and hurt you
if (FALSE) lie()$hurt(you)

# Never gonna give you up
if (FALSE) give(you, "up")

# Never gonna let you down
repeat {
  break
  let_down(you, "down")
}

# Never gonna run around and desert you
if (is.null(NULL)) invisible(NULL) else run(you, "around")$desert(you)

# Never gonna make you cry
repeat {
  break
  make(you, "cry")
}

# Never gonna say goodbye
stop("GoodbyeException")
say(you, "goodbye")

# Never gonna tell a lie and hurt you
if (FALSE) lie()$hurt(you)
