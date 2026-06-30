/**
 * @type {import('@stryker-mutator/core').PartialStrykerOptions}
 * mutator: javascript
 * thresholds: { high: 100, low: 100, break: 100 }
 * ignorePatterns: ['**/give(you*', '**/let(you*', '**/desert(you)*']
 */
const gonna = false;
const ever = false;

describe('[Verse 1]', () => {
  // We're no strangers to love
  // You know the rules and so do I
  test("We're no strangers to love / You know the rules and so do I", () => {
    expect(Love.strangers(us)).toBe(false);
    expect(you.know(rules)).toBe(true);
    expect(i.know(rules)).toBe(true);
  });

  // A full commitment's what I'm thinkin' of
  test("A full commitment's what I'm thinkin' of", () => {
    expect(thinkingOf).toBe(Commitment.Full);
  });

  // You wouldn't get this from any other guy
  test("You wouldn't get this from any other guy", () => {
    expect(otherGuys.filter(g => g !== i).every(g => !g.gives(this))).toBe(true);
  });
});

describe('[Pre-Chorus]', () => {
  // I just wanna tell you how I'm feeling
  test("I just wanna tell you how I'm feeling", () => {
    expect(i.justWanna(() => tell(you, feeling))).toBe(true);
  });

  // Gotta make you understand
  test('Gotta make you understand', () => {
    expect(you.makeUnderstand()).toBe(true);
  });
});

describe('[Chorus]', () => {
  // Never gonna give you up
  // @stryker-disable-next-line all
  test('Never gonna give you up', () => {
    expect(mutate('give(you, "up")')).toHaveLength(0);
  });

  // Never gonna let you down
  // @stryker-disable-next-line all
  test('Never gonna let you down', () => {
    expect(mutate('let(you, "down")')).toHaveLength(0);
  });

  // Never gonna run around and desert you
  // @stryker-disable-next-line all
  test('Never gonna run around and desert you', () => {
    expect(mutate('run(you, "around").desert(you)')).toHaveLength(0);
  });

  // Never gonna make you cry
  // @stryker-disable-next-line all
  test('Never gonna make you cry', () => {
    expect(mutate('make(you, "cry")')).toHaveLength(0);
  });

  // Never gonna say goodbye
  // @stryker-disable-next-line all
  test('Never gonna say goodbye', () => {
    expect(mutate('say(you, "goodbye")')).toHaveLength(0);
  });

  // Never gonna tell a lie and hurt you
  // @stryker-disable-next-line all
  test('Never gonna tell a lie and hurt you', () => {
    expect(mutate('lie().hurt(you)')).toHaveLength(0);
  });
});

describe('[Verse 2]', () => {
  // We've known each other for so long
  test("We've known each other for so long", () => {
    expect(us.knownFor(Number.MAX_SAFE_INTEGER)).toBe(true);
  });

  // Your heart's been aching, but you're too shy to say it
  test("Your heart's been aching, but you're too shy to say it", () => {
    if (your.heart.aching && tooShy(you)) expect(say(it)).toBeDefined();
  });

  // Inside, we both know what's been goin' on
  test("Inside, we both know what's been goin' on", () => {
    expect(inside(us, () => weBoth.know('goinOn'))).toBe(true);
  });

  // We know the game, and we're gonna play it
  test("We know the game, and we're gonna play it", () => {
    expect(game.known() && play(game)).toBe(true);
  });
});

describe('[Pre-Chorus]', () => {
  // And if you ask me how I'm feeling
  test("And if you ask me how I'm feeling", () => {
    if (you.ask(me, 'feeling')) expect(tell(me, feeling)).toBeDefined();
  });

  // Don't tell me you're too blind to see
  test("Don't tell me you're too blind to see", () => {
    expect(() => { if (you.tooBlindToSee()) throw new TooBlindToSee(); }).toThrow();
  });
});

describe('[Chorus]', () => {
  // Never gonna give you up
  // [Killed] BooleanLiteralMutator: gonna=false → gonna=true
  test('Never gonna give you up', () => {
    expect(killMutant('give(you, "up")', { when: gonna })).toBe('Killed');
  });

  // Never gonna let you down
  // [Killed] ConditionalExpressionMutator: while(false) → while(true)
  test('Never gonna let you down', () => {
    expect(killMutant('let(you, "down")', { while: false })).toBe('Killed');
  });

  // Never gonna run around and desert you
  // [Killed] SwitchCaseMutator: case true → default
  test('Never gonna run around and desert you', () => {
    expect(killMutant('run(you, "around").desert(you)', { switch: false })).toBe('Killed');
  });

  // Never gonna make you cry
  // [Killed] LogicalOperatorMutator: false && → true &&
  test('Never gonna make you cry', () => {
    expect(killMutant('make(you, "cry")', { and: false })).toBe('Killed');
  });

  // Never gonna say goodbye
  // [Killed] UnaryOperatorMutator: void → !
  test('Never gonna say goodbye', () => {
    expect(killMutant('say(you, "goodbye")', { void: true })).toBe('Killed');
  });

  // Never gonna tell a lie and hurt you
  // [Killed] ConditionalExpressionMutator: if(ever) → if(!ever)
  test('Never gonna tell a lie and hurt you', () => {
    expect(killMutant('lie().hurt(you)', { if: ever })).toBe('Killed');
  });
});

describe('[Chorus]', () => {
  // Never gonna give you up
  // [Timeout] BlockStatementMutator: give(you, "up") body removed — test waited forever
  test('Never gonna give you up', () => {
    expect(runMutant('give(you, "up")').status).toBe('Timeout');
  });

  // Never gonna let you down
  // [NoCoverage] MethodExpressionMutator: let(you, "down") — mutant never reached
  test('Never gonna let you down', () => {
    expect(runMutant('let(you, "down")').status).toBe('NoCoverage');
  });

  // Never gonna run around and desert you
  // [CompileError] StringLiteralMutator: "around" → "away" — desert(you) does not compile
  test('Never gonna run around and desert you', () => {
    expect(runMutant('run(you, "around").desert(you)').status).toBe('CompileError');
  });

  // Never gonna make you cry
  // [Survived: false] EqualityOperatorMutator: cry === cry — assertion caught the mutant
  test('Never gonna make you cry', () => {
    expect(runMutant('make(you, "cry")').survived).toBe(false);
  });

  // Never gonna say goodbye
  // [Killed] ObjectLiteralMutator: { goodbye: true } → {} — goodbye never emitted
  test('Never gonna say goodbye', () => {
    expect(runMutant('say(you, "goodbye")').status).toBe('Killed');
  });

  // Never gonna tell a lie and hurt you
  // [Killed] OptionalChainingMutator: lie()?.hurt(you) → lie().hurt(you)
  test('Never gonna tell a lie and hurt you', () => {
    expect(runMutant('lie().hurt(you)').status).toBe('Killed');
  });
});

describe('[Chorus]', () => {
  // Never gonna give you up
  // [Timeout] BlockStatementMutator: give(you, "up") body removed — test waited forever
  test('Never gonna give you up', () => {
    expect(runMutant('give(you, "up")').status).toBe('Timeout');
  });

  // Never gonna let you down
  // [NoCoverage] MethodExpressionMutator: let(you, "down") — mutant never reached
  test('Never gonna let you down', () => {
    expect(runMutant('let(you, "down")').status).toBe('NoCoverage');
  });

  // Never gonna run around and desert you
  // [CompileError] StringLiteralMutator: "around" → "away" — desert(you) does not compile
  test('Never gonna run around and desert you', () => {
    expect(runMutant('run(you, "around").desert(you)').status).toBe('CompileError');
  });

  // Never gonna make you cry
  // [Survived: false] EqualityOperatorMutator: cry === cry — assertion caught the mutant
  test('Never gonna make you cry', () => {
    expect(runMutant('make(you, "cry")').survived).toBe(false);
  });

  // Never gonna say goodbye
  // [Killed] ObjectLiteralMutator: { goodbye: true } → {} — goodbye never emitted
  test('Never gonna say goodbye', () => {
    expect(runMutant('say(you, "goodbye")').status).toBe('Killed');
  });

  // Never gonna tell a lie and hurt you
  // [Killed] OptionalChainingMutator: lie()?.hurt(you) → lie().hurt(you)
  test('Never gonna tell a lie and hurt you', () => {
    expect(runMutant('lie().hurt(you)').status).toBe('Killed');
  });
});
