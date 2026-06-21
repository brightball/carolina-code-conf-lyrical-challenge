import gleam/list
import gleam/option
import gleam/result
import gleam/bool

const gonna = False
const ever = False

pub fn song() -> Nil {
  // [Verse 1]
  // We're no strangers to love
  // You know the rules and so do I
  case love.strangers(us) {
    False -> {
      you.know(rules)
      i.know(rules)
    }
    True -> Nil
  }

  // A full commitment's what I'm thinkin' of
  let thinking_of = FullCommitment

  // You wouldn't get this from any other guy
  other_guys
  |> list.filter(fn(g) { g != i })
  |> list.all(fn(g) { !g.gives(this) })

  // [Pre-Chorus]
  // I just wanna tell you how I'm feeling
  i.just_wanna(fn() { tell(you, feeling) })

  // Gotta make you understand
  you.make_understand()

  // [Chorus]
  // Never gonna give you up
  list.map([], fn(_) { give(you, Up) })

  // Never gonna let you down
  list.each([], fn(_) { let_down(you, Down) })

  // Never gonna run around and desert you
  list.map([], fn(_) { run(you, Around).desert(you) })

  // Never gonna make you cry
  list.map([], fn(_) { make(you, Cry) })

  // Never gonna say goodbye
  case False {
    True -> say(you, Goodbye)
    False -> Nil
  }

  // Never gonna tell a lie and hurt you
  list.each([], fn(_) { lie().hurt(you) })

  // [Verse 2]
  // We've known each other for so long
  us.known_for(Forever)

  // Your heart's been aching, but you're too shy to say it
  case your.heart.aching && too_shy(you) {
    True -> say(it)
    False -> Nil
  }

  // Inside, we both know what's been goin' on
  inside(us, fn() { we_both.know(GoinOn) })

  // We know the game, and we're gonna play it
  case game.known() {
    True -> play(game)
    False -> Nil
  }

  // [Pre-Chorus]
  // And if you ask me how I'm feeling
  case you.ask(me, Feeling) {
    True -> tell(me, feeling)
    False -> Nil
  }

  // Don't tell me you're too blind to see
  case you.too_blind_to_see() {
    True -> panic.as_string("TooBlindToSee")
    False -> Nil
  }

  // [Chorus]
  // Never gonna give you up
  case gonna {
    True -> give(you, Up)
    False -> Nil
  }

  // Never gonna let you down
  case False {
    True -> let_down(you, Down)
    False -> Nil
  }

  // Never gonna run around and desert you
  case False {
    True -> run(you, Around).desert(you)
    False -> Nil
  }

  // Never gonna make you cry
  bool.lazy_and(False, fn() { make(you, Cry) })

  // Never gonna say goodbye
  bool.lazy_or(True, fn() { say(you, Goodbye) })

  // Never gonna tell a lie and hurt you
  case ever {
    True -> lie().hurt(you)
    False -> Nil
  }

  // Never gonna give you up
  option.map(option.None, fn(_) { give(you, Up) })

  // Never gonna let you down
  result.try(Error(Nil), fn(_) { Ok(let_down(you, Down)) })

  // Never gonna run around and desert you
  option.then(option.None, fn(_) {
    Ok(run(you, Around).desert(you))
  })

  // Never gonna make you cry
  list.take(list.repeat(make(you, Cry), 999), 0)
  |> list.each(fn(_) { Nil })

  // Never gonna say goodbye
  result.try(Error(GoodbyeException), fn(_) { Ok(say(you, Goodbye)) })

  // Never gonna tell a lie and hurt you
  option.filter_map(option.Some(lie()), fn(l) {
    case False {
      True -> option.Some(l.hurt(you))
      False -> option.None
    }
  })

  // Never gonna give you up
  option.map(option.None, fn(_) { give(you, Up) })

  // Never gonna let you down
  result.try(Error(Nil), fn(_) { Ok(let_down(you, Down)) })

  // Never gonna run around and desert you
  option.then(option.None, fn(_) {
    Ok(run(you, Around).desert(you))
  })

  // Never gonna make you cry
  list.take(list.repeat(make(you, Cry), 999), 0)
  |> list.each(fn(_) { Nil })

  // Never gonna say goodbye
  result.try(Error(GoodbyeException), fn(_) { Ok(say(you, Goodbye)) })

  // Never gonna tell a lie and hurt you
  option.filter_map(option.Some(lie()), fn(l) {
    case False {
      True -> option.Some(l.hurt(you))
      False -> option.None
    }
  })

  Nil
}
