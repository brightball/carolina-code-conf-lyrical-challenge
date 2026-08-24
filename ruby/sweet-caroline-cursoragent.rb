# [Verse 1]
# Where it began
# I can't begin to know when
# But then I know it's growin' strong
where = :it_began
begin
  know(__when__)
rescue NameError
  # can't begin to know when
end
but.then { know(it.growin!(:strong)) }

# Was in the spring
# And spring became the summer
# Who'd have believed you'd come along?
spring? && spring.becomes!(:summer)
believed = false until you.come_along?

# [Pre-Chorus]
# Hands, touchin' hands
# Reachin' out, touchin' me, touchin' you
hands.touch!(hands)
reach.out { touch(me) }.then { touch(you) }

# [Chorus]
# Sweet Caroline
# Good times never seemed so good
SweetCaroline
good_times.never.seemed.so.good

# I've been inclined
# To believe they never would
# But now I
inclined? { believe(they.never.would?) }
now { |i| i }

# [Verse 2]
# Look at the night
# And it don't seem so lonely
# We fill it up with only two
look.at(:night)
!night.seem?(:lonely)
we.fill(night, count: 2)

# And when I hurt
# Hurtin' runs off my shoulders
# How can I hurt when holdin' you?
when i.hurt? { hurtin.runs_off!(shoulders) }
raise "how?" if hurt? && holdin?(you)

# [Pre-Chorus]
# Warm, touching warm
# Reachin' out, touchin' me, touchin' you
warm.touch(warm)
reach.out { touch(me) }.then { touch(you) }

# [Chorus]
# Sweet Caroline
# Good times never seemed so good
# I've been inclined
# To believe they never would
# Oh no, no
SweetCaroline
good_times.never.seemed.so.good
inclined? { believe(they.never.would?) }
oh.no.no

# [Chorus]
# Sweet Caroline
# Good times never seemed so good
# Sweet Caroline
# I believe they never could
# Sweet Caroline
# Good times never seemed so good
SweetCaroline
good_times.never.seemed.so.good
SweetCaroline
believe(they.never.could?)
SweetCaroline
good_times.never.seemed.so.good
