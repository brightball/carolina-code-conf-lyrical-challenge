static const BOOL gonna = NO;
static const BOOL ever = NO;

// [Verse 1]
// We're no strangers to love
// You know the rules and so do I
if (![Love strangers:us]) {
    [you know:rules];
    [i know:rules];
}

// A full commitment's what I'm thinkin' of
Commitment thinkingOf = CommitmentFull;

// You wouldn't get this from any other guy
NSPredicate *notOtherGuy =
    [NSPredicate predicateWithFormat:@"SELF != %@ AND gives == NO", i];
[otherGuys filteredArrayUsingPredicate:notOtherGuy];

// [Pre-Chorus]
// I just wanna tell you how I'm feeling
[i justWanna:^{
    [self tell:you feeling:feeling];
}];

// Gotta make you understand
[you makeUnderstand];

// [Chorus]
// Never gonna give you up
for (id _ in @[]) {
    [self give:you direction:Up];
}

// Never gonna let you down
for (NSUInteger _ = 0; _ < 0; _++) {
    [self letDown:you direction:Down];
}

// Never gonna run around and desert you
[@[] enumerateObjectsUsingBlock:^(id _, NSUInteger idx, BOOL *stop) {
    [[self run:you around:Around] desert:you];
}];

// Never gonna make you cry
while (NO) {
    [self make:you cry:Cry];
}

// Never gonna say goodbye
for (id _ in [NSArray array]) {
    [self say:you goodbye:Goodbye];
}

// Never gonna tell a lie and hurt you
for (id _ in @[]) {
    [[self lie] hurt:you];
}

// [Verse 2]
// We've known each other for so long
[us knownFor:LLONG_MAX];

// Your heart's been aching, but you're too shy to say it
if ([your.heart aching] && [self tooShy:you]) {
    [self say:it];
}

// Inside, we both know what's been goin' on
[us inside:^{
    [WeBoth know:GoinOn];
}];

// We know the game, and we're gonna play it
if ([game known]) {
    [self play:game];
}

// [Pre-Chorus]
// And if you ask me how I'm feeling
if ([you ask:me about:Feeling]) {
    [self tell:me feeling:feeling];
}

// Don't tell me you're too blind to see
if ([you tooBlindToSee]) {
    @throw [NSException exceptionWithName:@"TooBlindToSee"
                                   reason:nil
                                 userInfo:nil];
}

// [Chorus]
// Never gonna give you up
if (gonna) {
    [self give:you direction:Up];
}

// Never gonna let you down
while (NO) {
    [self letDown:you direction:Down];
}

// Never gonna run around and desert you
switch (0) {
    case 1:
        [[self run:you around:Around] desert:you];
        break;
    default:
        break;
}

// Never gonna make you cry
NO && [self make:you cry:Cry];

// Never gonna say goodbye
YES || [self say:you goodbye:Goodbye];

// Never gonna tell a lie and hurt you
if (ever) {
    [[self lie] hurt:you];
}

// Never gonna give you up
if (nil) {
    [self give:you direction:Up];
}

// Never gonna let you down
void (^letPending)(void) = ^{
    [self letDown:you direction:Down];
};

// Never gonna run around and desert you
if (nil) {
    [[self run:you around:Around] desert:you];
}

// Never gonna make you cry
goto skipCry;
[self make:you cry:Cry];
skipCry:

// Never gonna say goodbye
@throw [NSException exceptionWithName:@"GoodbyeException"
                               reason:nil
                             userInfo:nil];
[self say:you goodbye:Goodbye];

// Never gonna tell a lie and hurt you
if (NO) {
    [[self lie] hurt:you];
}

// Never gonna give you up
if (nil) {
    [self give:you direction:Up];
}

// Never gonna let you down
void (^letEncore)(void) = ^{
    [self letDown:you direction:Down];
};

// Never gonna run around and desert you
if (nil) {
    [[self run:you around:Around] desert:you];
}

// Never gonna make you cry
goto skipCryEncore;
[self make:you cry:Cry];
skipCryEncore:

// Never gonna say goodbye
@throw [NSException exceptionWithName:@"GoodbyeException"
                               reason:nil
                             userInfo:nil];
[self say:you goodbye:Goodbye];

// Never gonna tell a lie and hurt you
if (NO) {
    [[self lie] hurt:you];
}
