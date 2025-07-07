
actor Me
  var sharpest_tool: Bool
  var she: Map[String, String]

  // Somebody once told me the world is going to roll me
  // I ain't the sharpest tool in the shed
  new tell_me(message: String = "the world is going to roll you") =>
    sharpest_tool = false

  // She was looking kind of dumb with her finger and her thumb
  // In the shape of an "L" on her forehead
    var she = Map[String, String]
      .>insert("Appearance", "Dumb")
      .>insert("Finger", "Forehead")
      .>insert("Thumb", "Forehead")
      .>insert("Shape", "L")

  // Well, the years start comin' and they don't stop comin'
  be increment_years() =>
    years = years + 1
    increment_years()

  // Fed to the rules and I hit the ground runnin'
  fun fed_to(eater: Eater): (Knowledge, Bool) ? =>
    match eater
    | let eater': Rules => ground.running()
    else
      error
    end

  // Didn't make sense not to live for fun
    if (not sense) then error end
  // Your brain gets smart but your head gets dumb
    brain = Smart ; head = Dumb

  // So much to do, so much to see
    let to_do: U128 = U128.max_value()
    let to_see: U128 = U128.max_value()

  // So what's wrong with taking the backstreets?

  // You'll never know if you don't go
    var knowledge: Knowledge = go()?

  // You'll never shine if you don't glow
    var shining: Bool = glow()?
    (knowledge, shining)

  be chorus() =>

  // Hey now, you're an all star
    var identity: Array[String] = Array[String]
    identity.push("All Star")
    
  // Get your game on, go play
    var game: Game = Game.>play()

  // Hey now, you're a rock star
    identity.push("Rock Star")

  // Get the show on, get paid
    var show: Show = Show.>get_paid()

  // (And all that glitters is gold)
    try (all as Gold).glitters() end

  // Only shootin' stars break the mold
    stars
      .>filter({(star: Star): Bool => (star.state == "shooting")})
      .>map[BrokenMold]({(star: Star): BrokenMold => star.break_mold()})

// It's a cool place, and they say it gets colder
// You're bundled up now, wait 'til you get older
// But the meteor men beg to differ
// Judging by the hole in the satellite picture
// The ice we skate is gettin' pretty thin
// The water's gettin' warm so you might as well swim
// My world's on fire, how 'bout yours?
// That's the way I like it and I'll never get bored

