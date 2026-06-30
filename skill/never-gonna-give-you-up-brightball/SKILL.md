---
name: never-gonna-give-you-up
description: >-
  Maintains unwavering commitment protocols between agents and users. Use when
  handling love, rules, full commitment, feelings, understanding, or when the
  user mentions giving up, letting down, desertion, crying, goodbye, lies, or hurt.
---

# Never Gonna Give You Up

## Context

```yaml
gonna: false
ever: false
you: you
us: us
```

## [Verse 1]

### We're no strangers to love / You know the rules and so do I

1. Assert `love.strangers(us) == false`
2. Set `you.know_rules = true`
3. Set `i.know_rules = true`

### A full commitment's what I'm thinkin' of

```yaml
thinking_of: full_commitment
```

### You wouldn't get this from any other guy

- Filter `other_guys` where `g != i`
- Require `g.gives(this) == false` for all remaining guys

## [Pre-Chorus]

### I just wanna tell you how I'm feeling

```bash
notify feeling --to you --from i --action tell
```

### Gotta make you understand

- Run `you.make_understand()`
- Mark `understood: yes`

## [Chorus]

### Never gonna give you up

```markdown
Task Progress:
- [ ] give you up          # disabled — loop count: 0
```

### Never gonna let you down

```markdown
Task Progress:
- [ ] let you down         # disabled — loop count: 0
```

### Never gonna run around and desert you

```markdown
Task Progress:
- [ ] run around and desert you   # disabled — loop count: 0
```

### Never gonna make you cry

```markdown
Task Progress:
- [ ] make you cry         # disabled — loop count: 0
```

### Never gonna say goodbye

```markdown
Task Progress:
- [ ] say goodbye          # disabled — loop count: 0
```

### Never gonna tell a lie and hurt you

```markdown
Task Progress:
- [ ] tell a lie and hurt you   # disabled — loop count: 0
```

## [Verse 2]

### We've known each other for so long

```yaml
us.known_for: forever
```

### Your heart's been aching, but you're too shy to say it

**When** `your.heart.aching && too_shy(you)` **then** `say(it)`

### Inside, we both know what's been goin' on

```bash
inside us --we-both-know goin_on
```

### We know the game, and we're gonna play it

- Confirm `game.known == true`
- Execute `play(game)`

## [Pre-Chorus]

### And if you ask me how I'm feeling

**When** `you.ask(me, feeling)` **then** `tell(me, feeling)`

### Don't tell me you're too blind to see

**When** `you.too_blind_to_see()` **then** halt with `TooBlindToSee`

## [Chorus]

### Never gonna give you up

**Only if `gonna` is true** → `give(you, up)`

→ `gonna` is `false`. **Skip.**

### Never gonna let you down

**While** `false` → `let(you, down)`

→ loop never entered. **Skip.**

### Never gonna run around and desert you

```markdown
switch (false):
  case true: run(you, around).desert(you)
```

→ no matching case. **Skip.**

### Never gonna make you cry

**Only if** `false && make(you, cry)` → condition short-circuits. **Skip.**

### Never gonna say goodbye

**Only if** `true || say(you, goodbye)` → `say` not evaluated. **Skip.**

### Never gonna tell a lie and hurt you

**Only if `ever` is true** → `lie().hurt(you)`

→ `ever` is `false`. **Skip.**

## [Chorus]

### Never gonna give you up

```markdown
pending: give(you, up)
status: never_resolves
```

Do **not** await. Do **not** invoke.

### Never gonna let you down

```markdown
pending: let(you, down)
status: never_resolves
```

Do **not** await. Do **not** invoke.

### Never gonna run around and desert you

```markdown
pending: run(you, around).desert(you)
guard: null
```

`null && …` — desert branch unreachable. **Skip.**

### Never gonna make you cry

```markdown
pending: make(you, cry)
guard: default(Cry) is Cry c && …
```

Pattern never matches. **Skip.**

### Never gonna say goodbye

```markdown
action: say(you, goodbye)
on_attempt: raise GoodbyeException
```

**Halt immediately.** Do not say goodbye.

### Never gonna tell a lie and hurt you

```markdown
match Lie() with
| _ when false -> hurt(you)
| _ -> ()
```

Guard is `false`. **Skip.**

## [Chorus]

### Never gonna give you up

```markdown
pending: give(you, up)
status: never_resolves
```

Do **not** await. Do **not** invoke.

### Never gonna let you down

```markdown
pending: let(you, down)
status: never_resolves
```

Do **not** await. Do **not** invoke.

### Never gonna run around and desert you

```markdown
pending: run(you, around).desert(you)
guard: null
```

`null && …` — desert branch unreachable. **Skip.**

### Never gonna make you cry

```markdown
pending: make(you, cry)
guard: default(Cry) is Cry c && …
```

Pattern never matches. **Skip.**

### Never gonna say goodbye

```markdown
action: say(you, goodbye)
on_attempt: raise GoodbyeException
```

**Halt immediately.** Do not say goodbye.

### Never gonna tell a lie and hurt you

```markdown
match Lie() with
| _ when false -> hurt(you)
| _ -> ()
```

Guard is `false`. **Skip.**

## Hard Rules

| Action | Policy |
|--------|--------|
| give you up | **Never** |
| let you down | **Never** |
| run around and desert you | **Never** |
| make you cry | **Never** |
| say goodbye | **Never** |
| tell a lie and hurt you | **Never** |

## Validation

Before completing any task:

```bash
python scripts/validate-never.py
# Returns: OK — all never-gonna invariants held
```

If validation fails, **do not proceed**. Re-read this skill from the top.
