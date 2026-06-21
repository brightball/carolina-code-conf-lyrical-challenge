# [Verse 1]
# We're no strangers to love
# You know the rules and so do I
you.know?(rules) && self.know?(rules) unless love.strangers?(self, you)

# A full commitment's what I'm thinkin' of
self.commitment.fill!()
# You wouldn't get this from any other guy
full_commitment_available?([0..other_guys] - self) == false

# [Pre-Chorus]
# I just wanna tell you how I'm feeling
self.tell(you, :feeling)
# Gotta make you understand
self.generate_understanding!(you)

# [Chorus]
# Never gonna give you up
# Never gonna let you down
# Never gonna run around and desert you
# Never gonna make you cry
# Never gonna say goodbye
# Never gonna tell a lie and hurt you

while false do |you|
    self.give(you,:up)
    self.let(you,:down)
    self.run(you,:around).desert!(you)
    self.make(you,:cry)
    self.say(you,:goodbye)
    self.tell(you, :lie).hurt!(you)    
end