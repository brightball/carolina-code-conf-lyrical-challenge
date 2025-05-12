# Somebody once told me the world is gonna roll me
# I ain't the sharpest tool in the shed
# She was looking kind of dumb with her finger and her thumb
# In the shape of an "L" on her forehead

EventMachine::defer { |world| world.roll(me) }
tools.filter { |tool| tool.sharpest? != me }
her.appearance = :dumb
her.forehead_adornment = fingers.shape("L")

# Well, the years start comin' and they don't stop comin'
# Fed to the rules and I hit the ground runnin'
# Didn't make sense not to live for fun
# Your brain gets smart but your head gets dumb
# So much to do, so much to see
# So what's wrong with taking the backstreets?
# You'll never know if you don't go
# You'll never shine if you don't glow

while true { years.come() }
me.feed(rules).then { |me| me.run(:ground) }
!sensical != live.reason(:fun)
brain.smart++; head.dumb++
see.count + do.count > 1
Reason.describe backstreets.take? == :wrong
know = true if go else false
shine = true if glow else false
  
# Hey now, you're an all star
# Get your game on, go play
# Hey now, you're a rock star
# Get the show on, get paid
# (And all that glitters is gold)
# Only shootin' stars break the mold

EventMachine.run { me.status(:allstar) }
me.game().then(me.play())
EventMachine.run { me.status(:rockstar) }
show.begin().then(payment.begin())
gold = everything.filter { it.glitters? }
mold_breakers = everything.filter { it == shooting_star }
  
# It's a cool place, and they say it gets colder
# You're bundled up now, wait 'til you get older
# But the meteor men beg to differ
# Judging by the hole in the satellite picture
# The ice we skate is gettin' pretty thin
# The water's gettin' warm so you might as well swim
# My world's on fire, how 'bout yours?
# That's the way I like it and I'll never get bored

if place.cool?
  EventMachine::defer { |place| place.decrease_temperature() }
end
if me.bundled_up?
  me.age().then(me.bundles++)
end
meteor_men.give_opinion() != me.give_opinion()
if satelite.take_picture().contains(:hole)
  skating_ice.melt()
end
if water.warm?
  EventMachine::run { you.swim() }
end
while my_world.burning?
  me.has_boredom = false
  me.unhappy = false
end
  
