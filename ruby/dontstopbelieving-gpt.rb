# A small town girl living in a lonely world
girl = Person.new("small town")
world = World.new("lonely")
girl.move_to(world)

# She took the midnight train going anywhere
train = Train.new("midnight")
girl.board(train)

# Just a city boy, born and raised in South Detroit
boy = Person.new("city")
boy.birthplace = "South Detroit"

# He took the midnight train going anywhere
boy.board(train)

# A singer in a smoky room, a smell of wine and cheap perfume
singer = Person.new("singer")
room = Room.new("smoky")
room.smell("wine", "cheap perfume")
singer.enter(room)

# For a smile they can share the night
singer.smile(girl)
singer.smile(boy)
girl.share_night
boy.share_night

# It goes on and on and on and on
while true do
  continue_playing_song
end

# Strangers waiting, up and down the boulevard
boulevard = Street.new("boulevard")
strangers = []
10.times do
  stranger = Person.new
  boulevard.wait(stranger)
  strangers << stranger
end

# Their shadows searching in the night
night = Time.new("night")
strangers.each do |stranger|
  stranger.search(night)
end

# Streetlights people, living just to find emotion
people = []
10.times do
  person = Person.new
  person.job = "streetlight maintenance worker"
  person.mission = "help people find emotion"
  people << person
end

# Hiding somewhere in the night
people.each do |person|
  person.hide(night)
end

# Don't stop believin', hold on to that feeling
while true do
  hold_on_to_feeling
end
