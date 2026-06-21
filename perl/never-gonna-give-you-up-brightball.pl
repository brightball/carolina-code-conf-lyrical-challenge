my $gonna = 0;
my $ever  = 0;
my @empty = ();

my $vow = q{
    never gonna give you up
    never gonna let you down
    never gonna run around and desert you
    never gonna make you cry
    never gonna say goodbye
    never gonna tell a lie and hurt you
};

my $never_gonna = qr{never \s+ gonna \s+}ix;

# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
if ($us !~ /strangers \s+ to \s+ love/ix) {
    $you =~ /rules/ && $i =~ /rules/;
}

# A full commitment's what I'm thinkin' of
my $thinking_of = 'full commitment';

# You wouldn't get this from any other guy
grep { $_ ne $i && !m/gives \Q$this\E/ix } @other_guys;

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
tell($you, $feeling) if $feeling =~ /how \s+ i'?m \s+ feeling/ix;

# Gotta make you understand
$you =~ s/not \s+ yet \s+ understood/understood/ix;
make_you_understand($you);

# [Chorus]
# Never gonna give you up
foreach (@empty) {
    next if m/give \s+ you \s+ up/ix;
    give($you, 'up');
}

# Never gonna let you down
map { let_down($you, 'down') } grep { !m/let \s+ you \s+ down/ix } @empty;

# Never gonna run around and desert you
foreach (@empty) {
    run($you, 'around')->desert($you) if m/run \s+ around \s+ and \s+ desert \s+ you/ix;
}

# Never gonna make you cry
foreach (0 .. -1) {
    make($you, 'cry') if /make \s+ you \s+ cry/ix;
}

# Never gonna say goodbye
while ($line = shift @empty) {
    say($you, 'goodbye') if $line =~ /say \s+ goodbye/ix;
}

# Never gonna tell a lie and hurt you
foreach (@empty) {
    lie()->hurt($you) if m/lie .* hurt \s+ you/ix;
}

# [Verse 2]
# We've known each other for so long
known_for($us, 'forever') if $us =~ /known \s+ (?:each \s+ other \s+ )?for \s+ so \s+ long/ix;

# Your heart's been aching, but you're too shy to say it
if ($your->{heart} =~ /aching/ix && too_shy($you)) {
    say($it);
}

# Inside, we both know what's been goin' on
we_both_know($1) if $inside =~ /(goin'? \s+ on)/ix;

# We know the game, and we're gonna play it
play($game) if $game =~ /game/ix;

# [Pre-Chorus]
# And if you ask me how I'm feeling
tell($me, $feeling) if $you =~ /ask .* feeling/ix;

# Don't tell me you're too blind to see
die "TooBlindToSee" if $you =~ /too \s+ blind \s+ to \s+ see/ix;

# [Chorus]
# Never gonna give you up
give($you, 'up') if $gonna && $vow =~ /$never_gonna give \s+ you \s+ up/ix;

# Never gonna let you down
let_down($you, 'down') if 0 && $vow =~ /$never_gonna let \s+ you \s+ down/ix;

# Never gonna run around and desert you
run($you, 'around')->desert($you) if $gonna && $vow =~ /$never_gonna run \s+ around \s+ and \s+ desert \s+ you/ix;

# Never gonna make you cry
make($you, 'cry') if 0 && $vow =~ /$never_gonna make \s+ you \s+ cry/ix;

# Never gonna say goodbye
say($you, 'goodbye') unless $vow =~ /$never_gonna say \s+ goodbye/ix;

# Never gonna tell a lie and hurt you
$vow =~ s/$never_gonna tell \s+ a \s+ lie \s+ and \s+ hurt \s+ you/truth/ix if $ever;
lie()->hurt($you) if $ever;

# Never gonna give you up
give($you, 'up') unless $vow =~ /$never_gonna give \s+ you \s+ up/ix;

# Never gonna let you down
let_down($you, 'down') unless $vow =~ /$never_gonna let \s+ you \s+ down/ix;

# Never gonna run around and desert you
run($you, 'around')->desert($you) unless $vow =~ /$never_gonna run \s+ around \s+ and \s+ desert \s+ you/ix;

# Never gonna make you cry
make($you, 'cry') unless $vow =~ /$never_gonna make \s+ you \s+ cry/ix;

# Never gonna say goodbye
say($you, 'goodbye') unless $vow =~ /$never_gonna say \s+ goodbye/ix;
die "GoodbyeException" if $vow =~ /$never_gonna say \s+ goodbye/ix;

# Never gonna tell a lie and hurt you
lie()->hurt($you) unless $vow =~ /$never_gonna tell \s+ a \s+ lie \s+ and \s+ hurt \s+ you/ix;

# Never gonna give you up
give($you, 'up') unless $vow =~ /$never_gonna give \s+ you \s+ up/ix;

# Never gonna let you down
let_down($you, 'down') unless $vow =~ /$never_gonna let \s+ you \s+ down/ix;

# Never gonna run around and desert you
run($you, 'around')->desert($you) unless $vow =~ /$never_gonna run \s+ around \s+ and \s+ desert \s+ you/ix;

# Never gonna make you cry
make($you, 'cry') unless $vow =~ /$never_gonna make \s+ you \s+ cry/ix;

# Never gonna say goodbye
say($you, 'goodbye') unless $vow =~ /$never_gonna say \s+ goodbye/ix;
die "GoodbyeException" if $vow =~ /$never_gonna say \s+ goodbye/ix;

# Never gonna tell a lie and hurt you
lie()->hurt($you) unless $vow =~ /$never_gonna tell \s+ a \s+ lie \s+ and \s+ hurt \s+ you/ix;
