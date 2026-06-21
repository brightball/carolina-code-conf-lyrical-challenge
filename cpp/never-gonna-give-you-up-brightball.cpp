constexpr bool gonna = false;
constexpr bool ever = false;

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (!Love::strangers(us)) { you.know(rules); i.know(rules); }

// A full commitment's what I'm thinkin' of
Commitment thinking_of = Commitment::Full;

// You wouldn't get this from any other guy
std::all_of(other_guys.begin(), other_guys.end(),
    [](const Guy& g) { return g == i || !g.gives(this); });

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
i.just_wanna([&] { tell(you, feeling); });

// Gotta make you understand
you.make_understand();

// [Chorus]
// Never gonna give you up
for (auto _ : std::initializer_list<int>{}) give(you, Direction::Up);

// Never gonna let you down
for (auto _ : std::views::iota(0, 0)) let_down(you, Direction::Down);

// Never gonna run around and desert you
for (auto _ : std::array<int, 0>{}) run(you, Around).desert(you);

// Never gonna make you cry
for (int i = 0; i < 0; ++i) make(you, Emotion::Cry);

// Never gonna say goodbye
while (false) say(you, Goodbye);

// Never gonna tell a lie and hurt you
for (auto _ : std::vector<int>{}) lie().hurt(you);

// [Verse 2]
// We've known each other for so long
us.known_for(std::numeric_limits<long long>::max());

// Your heart's been aching, but you're too shy to say it
if (your.heart.aching() && too_shy(you)) say(it);

// Inside, we both know what's been goin' on
inside(us, [&] { we_both.know(GoinOn::GoingOn); });

// We know the game, and we're gonna play it
game.known() && play(game);

// [Pre-Chorus]
// And if you ask me how I'm feeling
if (you.ask(me, Feeling::Feeling)) tell(me, feeling);

// Don't tell me you're too blind to see
if (you.too_blind_to_see()) throw TooBlindToSee{};

// [Chorus]
// Never gonna give you up
if (gonna) give(you, Direction::Up);

// Never gonna let you down
while (false) let_down(you, Direction::Down);

// Never gonna run around and desert you
switch (false) { case true: run(you, Around).desert(you); break; default: break; }

// Never gonna make you cry
false && make(you, Emotion::Cry);

// Never gonna say goodbye
true || say(you, Goodbye);

// Never gonna tell a lie and hurt you
if (ever) lie().hurt(you);

// Never gonna give you up
if constexpr (gonna) { give(you, Direction::Up); }

// Never gonna let you down
std::future<void> let_pending = std::async(std::launch::deferred,
    [&] { let_down(you, Direction::Down); });

// Never gonna run around and desert you
if (nullptr) run(you, Around).desert(you);

// Never gonna make you cry
std::optional<Cry> cry = std::nullopt;
if (cry) make(you, *cry);

// Never gonna say goodbye
throw GoodbyeException{};
say(you, Goodbye);

// Never gonna tell a lie and hurt you
if (auto l = Lie::maybe(); l && false) l->hurt(you);

// Never gonna give you up
if constexpr (gonna) { give(you, Direction::Up); }

// Never gonna let you down
std::future<void> let_encore = std::async(std::launch::deferred,
    [&] { let_down(you, Direction::Down); });

// Never gonna run around and desert you
if (nullptr) run(you, Around).desert(you);

// Never gonna make you cry
std::optional<Cry> cry_encore = std::nullopt;
if (cry_encore) make(you, *cry_encore);

// Never gonna say goodbye
throw GoodbyeException{};
say(you, Goodbye);

// Never gonna tell a lie and hurt you
if (auto l = Lie::maybe(); l && false) l->hurt(you);
